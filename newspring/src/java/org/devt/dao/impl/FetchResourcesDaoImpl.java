/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.devt.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import org.devt.dao.FetchResourcesDao;
import org.devt.model.ChannelsItemLogo;
import org.devt.model.NewsItem;

/**
 *
 * @author admin
 */
public class FetchResourcesDaoImpl implements FetchResourcesDao {

//    public List<ChannelsItemLogo> demoDBCall(Statement stmt) throws SQLException {
//
//        List<ChannelsItemLogo> l = availNewsPaperLogo();
//        return l;
//    }
//    public List<ChannelsItem> demoDBCallChannels(String type) throws SQLException {
//
//        List<ChannelsItem> l = channelsUrl(type);
//        return l;
//    }
//    static 
    private static Connection getConnection() {
        Connection conn = null;
        final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
        final String DB_URL = "jdbc:mysql://localhost:3306/dailynews";

        //  Database credentials
        final String USER = "root";
        final String PASS = "admin";

        try {
            //STEP 2: Register JDBC driver
            Class.forName(JDBC_DRIVER);

            //STEP 3: Open a connection
            System.out.println("Connecting to database...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return conn;
    }

    public static Connection closeConnection() throws SQLException {
        Statement stmt = null;
        Connection conn = null;
        if (stmt != null) {
            stmt.close();
        }
        if (conn != null) {
            conn.close();
        }
        return null;
    }

//    private List<ChannelsItem> channelsUrl(String type) throws SQLException {
//        Connection conn = null;
//        List<ChannelsItem> items = new ArrayList<>();
//
//        ChannelsItem item = null;
//
//        try {
//            conn = getConnection();
//            Statement stmt = conn.createStatement();
//            String sql;
//            sql = "SELECT DISTINCT * FROM channels WHERE name='times of india' AND description='india'";
//            ResultSet rs = stmt.executeQuery(sql);
//
//            //STEP 5: Extract data from result set
//            while (rs.next()) {
//                item = new ChannelsItem();
//                item.setName(rs.getString("name"));
//                item.setBaseurl(rs.getString("baseurl"));
//                item.setXml(rs.getString("xml"));
//                item.setSlogopath(rs.getString("slogopath"));
//                item.setBlogopath(rs.getString("blogopath"));
//                item.setDescription(rs.getString("description"));
//
//                items.add(item);
//
//                System.out.println("length -> " + items.size());
//            }
//
//            rs.close();
//        } catch (Exception ex) {
//            ex.printStackTrace();
//        }
//
//        return items;
//
//    }
    public List<NewsItem> getNewsItemDataFromDB() throws SQLException {
        Statement stmt = null;
        ResultSet rs = null;
        Connection conn = null;

        List<NewsItem> items = new ArrayList<>();
        NewsItem item = null;

        try {
            conn = getConnection();
            stmt = conn.createStatement();
            String sql;
            sql = "SELECT * from news";
            rs = stmt.executeQuery(sql);

            //STEP 5: Extract data from result set
            while (rs.next()) {

                item = new NewsItem();

                item.setChannelsName(rs.getString("channelsName"));
                item.setSmallLogoPath(rs.getString("smallLogoPath"));
                item.setBigLogoPath(rs.getString("bigLogoPath"));
                item.setChannelsDes(rs.getString("channelsDes"));
                item.setTitle(rs.getString("title"));
                item.setDescription(rs.getString("description"));
                item.setLink(rs.getString("link"));
                item.setGuid(rs.getString("guid"));
                item.setPubDate(rs.getString("pubdate"));
                item.setImg(rs.getString("img"));
                item.setAuthor(rs.getString("author"));
                item.setAtom(rs.getString("atom"));

                items.add(item);
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            closeConnection();
        }

        return items;

    }

    public List<ChannelsItemLogo> availNewsPaperLogo() throws SQLException {
        Statement stmt = null;
        ResultSet rs = null;
        Connection conn = null;
        List<ChannelsItemLogo> items = new ArrayList<>();
        ChannelsItemLogo item = null;

        try {
            conn = getConnection();
            stmt = conn.createStatement();
            String sql;
            sql = "SELECT DISTINCT name,blogopath FROM channels ORDER BY name ASC";
            rs = stmt.executeQuery(sql);

            //STEP 5: Extract data from result set
            while (rs.next()) {
                item = new ChannelsItemLogo();
                item.setName(rs.getString("name"));
//                item.setBaseurl(rs.getString("baseurl"));
//                item.setXml(rs.getString("setXml"));
//                item.setSlogopath(rs.getString("slogopath"));
                item.setBlogopath(rs.getString("blogopath"));
                //item.setDescription(rs.getString("description"));

                items.add(item);
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            closeConnection();
        }

        return items;

    }

    public String getChannelsCategoriesHTM(String cName) throws SQLException {
        Statement stmt = null;
        ResultSet rs = null;
        Connection conn = null;
        StringBuilder strB = new StringBuilder();

        try {
            conn = getConnection();
            stmt = conn.createStatement();
            String sql;

            sql = "SELECT DISTINCT description FROM channels where name='" + cName + "' ORDER BY description ASC";
            rs = stmt.executeQuery(sql);

            //STEP 5: Extract data from result set
            while (rs.next()) {
                strB.append("<div class='np-c-n-div'>");
                strB.append("<a href='javaScript:void(0);' onclick=getNewsWithType('");
                strB.append(rs.getString("description").replace(" ", "+"));
                strB.append("');>");
                strB.append("<p class='p-h'>");
                strB.append(rs.getString("description"));
                strB.append("</p>");
                strB.append("</a>");
                strB.append("</div>");
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            closeConnection();
        }

        return strB.toString();

    }

    public String getChannelsCategoriesHTMOnlyTwo(String cName) throws SQLException {
        Statement stmt = null;
        ResultSet rs = null;
        Connection conn = null;
        StringBuilder strB = new StringBuilder();
        int i = 2;
        try {
            conn = getConnection();
            stmt = conn.createStatement();
            String sql;

            sql = "SELECT DISTINCT description FROM channels where name='" + cName + "' order by rand() limit 2";
            rs = stmt.executeQuery(sql);

            //STEP 5: Extract data from result set
            while (rs.next()) {
                strB.append("<a href='javaScript:void(0);' id='categories-");
                strB.append(i++);
                strB.append("' onclick=getNewsWithType('");
                strB.append(rs.getString("description").replace(" ", "+"));
                strB.append("');>");
                strB.append("<span class='newspaper-header-div-p'>");
                strB.append(rs.getString("description"));
                strB.append("</span>");
                strB.append("</a>");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            closeConnection();
        }

        return strB.toString();

    }

    public String getChannelsMainCategoriesHTM() throws SQLException {
        Statement stmt = null;
        ResultSet rs = null;
        Connection conn = null;
        StringBuilder strB = new StringBuilder();

        System.out.println("Inside Main Categories HTML Method");

        try {
            conn = getConnection();
            stmt = conn.createStatement();
            String sql;
            String typeEncode;
            String type;
            
            sql = "SELECT DISTINCT description FROM channels";
            rs = stmt.executeQuery(sql);

            //STEP 5: Extract data from result set
            while (rs.next()) {
                type="type="+rs.getString("description");
                typeEncode = new String(Base64.getEncoder().encode(type.getBytes()));

                strB.append("<div class='lang space'>");
                strB.append("<a href='search?s=");
                strB.append(typeEncode);
                strB.append("'");
                strB.append("class='a-hover'");
                strB.append("' onclick=getNewsWithTypeFromCategories('");
                strB.append(rs.getString("description").replace(" ", "+"));
                strB.append("');>");
                strB.append("<span>");
                strB.append(rs.getString("description"));
                strB.append("</span>");
                strB.append("</a>");
                strB.append("</a>");
                strB.append("</div>");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            closeConnection();
        }

        return strB.toString();

    }

    public List<NewsItem> getTypeFromDetailedNwes(String type) throws SQLException {

        Statement stmt = null;
        ResultSet rs = null;
        Connection conn = null;

        List<NewsItem> items = new ArrayList<>();
        NewsItem item = null;

        try {
            conn = getConnection();
            stmt = conn.createStatement();
            String sql;
            sql = "SELECT * FROM news WHERE channelsDes='" + type + "'";
            rs = stmt.executeQuery(sql);

            //STEP 5: Extract data from result set
            while (rs.next()) {

                item = new NewsItem();

                item.setChannelsName(rs.getString("channelsName"));
                item.setSmallLogoPath(rs.getString("smallLogoPath"));
                item.setBigLogoPath(rs.getString("bigLogoPath"));
                item.setChannelsDes(rs.getString("channelsDes"));
                item.setTitle(rs.getString("title"));
                item.setDescription(rs.getString("description"));
                item.setLink(rs.getString("link"));
                item.setGuid(rs.getString("guid"));
                item.setPubDate(rs.getString("pubdate"));
                item.setImg(rs.getString("img"));
                item.setAuthor(rs.getString("author"));
                item.setAtom(rs.getString("atom"));

                items.add(item);
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            closeConnection();
        }

        return items;

    }

    public List<NewsItem> getNewsCategoriesName(String name, String type) throws SQLException {

        Statement stmt = null;
        ResultSet rs = null;
        Connection conn = null;

        List<NewsItem> items = new ArrayList<>();
        NewsItem item = null;

        try {
            conn = getConnection();
            stmt = conn.createStatement();
            String sql;
            sql = "SELECT * FROM news WHERE channelsName='" + name + "' and channelsDes='" + type + "'";
            rs = stmt.executeQuery(sql);

            //STEP 5: Extract data from result set
            while (rs.next()) {

                item = new NewsItem();

                item.setChannelsName(rs.getString("channelsName"));
                item.setSmallLogoPath(rs.getString("smallLogoPath"));
                item.setBigLogoPath(rs.getString("bigLogoPath"));
                item.setChannelsDes(rs.getString("channelsDes"));
                item.setTitle(rs.getString("title"));
                item.setDescription(rs.getString("description"));
                item.setLink(rs.getString("link"));
                item.setGuid(rs.getString("guid"));
                item.setPubDate(rs.getString("pubdate"));
                item.setImg(rs.getString("img"));
                item.setAuthor(rs.getString("author"));
                item.setAtom(rs.getString("atom"));

                items.add(item);
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            closeConnection();
        }

        return items;

    }

    public List<NewsItem> getNewsByCategoriesOrName(String name) throws SQLException {
        Statement stmt = null;
        ResultSet rs = null;
        Connection conn = null;

        List<NewsItem> items = new ArrayList<>();
        NewsItem item = null;

        try {
            conn = getConnection();
            stmt = conn.createStatement();
            String sql;
            sql = "SELECT * FROM news WHERE channelsName='" + name + "'";
            rs = stmt.executeQuery(sql);

            //STEP 5: Extract data from result set
            while (rs.next()) {

                item = new NewsItem();

                item.setChannelsName(rs.getString("channelsName"));
                item.setSmallLogoPath(rs.getString("smallLogoPath"));
                item.setBigLogoPath(rs.getString("bigLogoPath"));
                item.setChannelsDes(rs.getString("channelsDes"));
                item.setTitle(rs.getString("title"));
                item.setDescription(rs.getString("description"));
                item.setLink(rs.getString("link"));
                item.setGuid(rs.getString("guid"));
                item.setPubDate(rs.getString("pubdate"));
                item.setImg(rs.getString("img"));
                item.setAuthor(rs.getString("author"));
                item.setAtom(rs.getString("atom"));

                items.add(item);
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            closeConnection();
        }

        return items;
    }
}
