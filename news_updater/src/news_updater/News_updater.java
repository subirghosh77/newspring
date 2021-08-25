/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package news_updater;

import java.sql.Connection;
import java.sql.Statement;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import model.ChannelsItem;
import model.NewsItem;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXParseException;

/**
 *
 * @author DELL
 */
public class News_updater {

    /**
     * @param args the command line arguments
     * @throws java.sql.SQLException
     * @throws java.io.IOException
     * @throws java.net.ProtocolException
     * @throws javax.xml.parsers.ParserConfigurationException
     */
    public static void main(String[] args) throws SQLException, IOException, ProtocolException, ParserConfigurationException {
        // TODO code application logic here
        //getConnection();
        List<NewsItem> l = fetchXml();
        setNewsData(l);
    }

    static Connection conn = null;
    static Statement stmt = null;

    public static String setNewsData(List<NewsItem> list) {
        String q = null;

        try {
            conn = dao.DBConnection.getConnection();
            stmt = conn.createStatement();

            for (NewsItem item : list) {
                q = "insert into news(channelsName,smallLogoPath,bigLogoPath,channelsDes,title,description,link,guid,pubdate,img,author,atom) values ('" + item.getChannelsName() + "','" + item.getSmallLogoPath() + "','" + item.getBigLogoPath() + "','" + item.getChannelsDes() + "','" + item.getTitle() + "','" + item.getDescription() + "','" + item.getLink() + "','" + item.getGuid() + "','" + item.getPubDate() + "','" + item.getImg() + "','" + item.getAuthor() + "','" + item.getAtom() + "')";
                System.out.println("query>>>>" + q);
                stmt.executeUpdate(q);
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public static List<ChannelsItem> channelsUrl() throws SQLException {

        ResultSet rs = null;
        List<ChannelsItem> items = new ArrayList<>();
        ChannelsItem item = null;
        String sql;
        try {
            conn = dao.DBConnection.getConnection();
            stmt = conn.createStatement();

            sql = "SELECT * FROM channels";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                item = new ChannelsItem();
                item.setName(rs.getString("name"));
                item.setBaseurl(rs.getString("baseurl"));
                item.setXml(rs.getString("xml"));
                item.setSlogopath(rs.getString("slogopath"));
                item.setBlogopath(rs.getString("blogopath"));
                item.setDescription(rs.getString("description"));

                items.add(item);

                // System.out.println("length -> " + items.size());
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            dao.DBConnection.closeConnection();
        }

        return items;
    }

    public static List<NewsItem> fetchXml() throws SQLException, ProtocolException, IOException, ParserConfigurationException { // get data from xml (news channels)
        URL url = null;
        Document document = null;
        HttpURLConnection conn = null;
        BufferedReader br = null;
        StringBuilder strB = null;
        DocumentBuilder doc = null;
        InputSource is = null;
        NodeList n1 = null;
        
        final int newsTakenFromEachUrl = 5;
        List<NewsItem> l = new ArrayList<>();
        List<ChannelsItem> list = channelsUrl();
        List<NewsItem> newList = new ArrayList<>();
        String name = null;
        String sLogopath = null;
        String bLogopath = null;
        String channelsDes = null;
        

        for (ChannelsItem item : list) {

            /**
             * ****************************************for
             * start***********************************
             */
            url = new URL(item.getBaseurl() + "/" + item.getXml());

            name = item.getName();
            sLogopath = item.getSlogopath();
            bLogopath = item.getBlogopath();
            channelsDes = item.getDescription();

            // System.out.println("URL " + url);
            String output;

            conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Accept", "application/xml");

            if (conn.getResponseCode() != 200) {
                throw new RuntimeException("Http CustomError : " + conn.getResponseCode());
            }

            br = new BufferedReader(new InputStreamReader(conn.getInputStream()));

            strB = new StringBuilder();

            while ((output = br.readLine()) != null) {
                strB.append(output);
            }

            doc = DocumentBuilderFactory.newInstance().newDocumentBuilder();
            is = new InputSource();
            is.setEncoding("UTF-8");
            is.setCharacterStream(new StringReader(strB.toString()));

            try {
                document = doc.parse(is);
                n1 = document.getElementsByTagName("rss");
                newList = allRss(n1, name, sLogopath, bLogopath, channelsDes);
                l.addAll(newList.subList(0, newList.size() < newsTakenFromEachUrl ? newList.size() : newsTakenFromEachUrl));
            } catch (SAXParseException ex) {
                ex.printStackTrace();
            } catch (Exception ex) {
                ex.printStackTrace();
            }

            /**
             * ****************************************for
             * end***********************************
             */
        }

        for (NewsItem n : l) {
            System.out.println("Items - " + n.getLink() + " -- " + n.getTitle());
        }

        return l;
    }

    public static List<NewsItem> allRss(NodeList n1, String name, String sLogopath, String bLogopath, String channelsDes) throws SQLException {
        
        Element elm, elmC1, elmC2;
        NodeList cNLvl1 = null;
        NodeList cNodesLvl1 = null;
        NodeList cNLvl2 = null;
        Node leafP;
        
        NewsItem item;
        List<NewsItem> items = new ArrayList<>();
        String[] splitFirst = null;
        String[] splitFinal = null;
        
        for (int i = 0; i < n1.getLength(); i++) {// iterating the child lvl 2 nodes
            elm = (Element) n1.item(i);
            cNLvl1 = elm.getChildNodes();
            for (int j = 0; j < cNLvl1.getLength(); j++) {// iterating the child lvl 2 nodes
                if (cNLvl1.item(j).hasChildNodes()) {
                    elmC1 = (Element) cNLvl1.item(j);
                    cNLvl2 = elmC1.getChildNodes();
                    for (int k = 0; k < cNLvl2.getLength(); k++) {// iterating the child lvl 3 nodes
                        if (cNLvl2.item(k).hasChildNodes()) {
                            elmC2 = (Element) cNLvl2.item(k);
                            if (elmC2.getNodeName().equalsIgnoreCase("item")) {
                                item = new NewsItem();
                                cNodesLvl1 = elmC2.getChildNodes();
                                for (int m = 0; m < cNodesLvl1.getLength(); m++) {// iterating the child lvl 4 nodes
                                    leafP = cNodesLvl1.item(m);

                                    item.setChannelsName(name);
                                    item.setSmallLogoPath(sLogopath);
                                    item.setBigLogoPath(bLogopath);

                                    if (!channelsDes.equals("all")) {
                                        item.setChannelsDes(channelsDes);
                                    }
                                    if (leafP.hasChildNodes()) {
                                        switch (leafP.getNodeName().toUpperCase()) {
                                            case "TITLE":
                                                item.setTitle(leafP.getChildNodes().item(0).getNodeValue());
                                                break;
                                            case "DESCRIPTION":
                                                if (leafP.getChildNodes().item(0).getNodeValue().contains("<img")) {

                                                    splitFirst = leafP.getChildNodes().item(0).getNodeValue().split("</a>");
                                                    if (splitFirst.length > 1) {
                                                        item.setDescription(splitFirst[1]);
                                                    } else {
                                                        item.setDescription("No Description found.");
                                                    }
                                                    splitFinal = splitFirst[0].split("src=", splitFirst[0].length());
//                                                    System.out.println("splitFinal ->>>>"+ splitFinal[1]);
                                                    splitFinal = splitFinal[1].split(Character.toString((char) 34));
//                                                    System.out.println("splitFinal ->>>>+++"+ splitFinal[1]);
                                                    item.setImg(splitFinal[1].substring(0, splitFinal[1].length()));
                                                } else {
                                                    item.setDescription(leafP.getChildNodes().item(0).getNodeValue());
                                                }
                                                break;
                                            case "LINK":
                                                item.setLink(leafP.getChildNodes().item(0).getNodeValue());
                                                break;
                                            case "GUID":
                                                item.setGuid(leafP.getChildNodes().item(0).getNodeValue());
                                                break;
                                            case "PUBDATE":
                                                item.setPubDate(leafP.getChildNodes().item(0).getNodeValue());
                                                break;
                                            case "IMAGE":
                                                item.setImg(leafP.getChildNodes().item(0).getNodeValue());
                                                break;
                                            case "COVERIMAGES":
                                                item.setImg(leafP.getChildNodes().item(0).getNodeValue());
                                                break;
                                            case "AUTHOR":
                                                item.setAuthor(leafP.getChildNodes().item(0).getNodeValue());
                                                break;
                                        }
                                    }
                                }
                                items.add(item);
                            }
                        }
                    }
                }

            }
        }
        return items;
    }
}
