/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.devt.service.impl;

//import java.io.BufferedReader;
//import java.io.InputStreamReader;
//import java.io.StringReader;
//import java.net.HttpURLConnection;
//import java.net.MalformedURLException;
//import java.net.URL;
//import java.util.ArrayList;
//import java.util.List;
//import javax.xml.parsers.DocumentBuilder;
//import javax.xml.parsers.DocumentBuilderFactory;
//import org.devt.model.ChannelsItem;
//import org.devt.model.NewsItem;
//import org.devt.service.RestService;
//import org.devt.util.ServiceUtil;
//import org.w3c.dom.Document;
//import org.w3c.dom.NodeList;
//import org.xml.sax.InputSource;

/**
 *
 * @author DELL
 */

//public class RestServiceImpl{
//public class RestServiceImpl extends FetchResourcesServiceImpl implements RestService {

//    @Override
//    public List<NewsItem> fetchXml(URL url) {
//
//        List<NewsItem> l = null;
//        List<ChannelsItem> list = dummyDBCallChannels(null);
////        String dbUrl = null;
//        String name = null;
//        String sLogopath = null;
//        String channelsDes = null;
//
//        try {
//
//            for (Object o : list) {
//                ChannelsItem item = (ChannelsItem) o;
//
//                url = new URL(item.getBaseurl() + "/" + item.getXml());
//                System.out.println("URL "+item.getBaseurl() + "/" + item.getXml());
//                name = item.getName();
//                sLogopath = item.getSlogopath();
//                channelsDes = item.getDescription();
//            }
//
//            String output;
//
////            url = new URL("https://www.espncricinfo.com/rss/content/story/feeds/6.xml");
////            url = new URL("https://zeenews.india.com/rss/india-national-news.xml");
////            url = new URL("https://www.news18.com/rss/education-career.xml");
////            url = new URL("https://www.indiatvnews.com/rssnews/topstory-india.xml");
////            url = new URL("https://economictimes.indiatimes.com/prime/environment/rssfeeds/63319186.cms");
////            url = new URL("https://rss.nytimes.com/services/xml/rss/nyt/PersonalTech.xml");
////            url= new URL("https://timesofindia.indiatimes.com/rssfeeds/-2128936835.cms");
////            url = new URL("https://www.indiatoday.in/rss/1206550");
////            url = new URL("https://www.hindustantimes.com/rss/india/rssfeed.xml");
//            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
//            conn.setRequestMethod("GET");
//            conn.setRequestProperty("Accept", "application/xml");
//
//            if (conn.getResponseCode() != 200) {
//                throw new RuntimeException("Http CustomError : " + conn.getResponseCode());
//            }
//
//            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
//
//            StringBuilder strB = new StringBuilder();
//
//            while ((output = br.readLine()) != null) {
//                strB.append(output);
//            }
//
//            DocumentBuilder doc = DocumentBuilderFactory.newInstance().newDocumentBuilder();
//            InputSource is = new InputSource();
//            is.setEncoding("UTF-8");
//            is.setCharacterStream(new StringReader(strB.toString()));
//
//            Document document = doc.parse(is);
//            NodeList n1 = document.getElementsByTagName("rss");
//
//            l = ServiceUtil.allRss(n1, name, sLogopath, channelsDes); // news 18 , news24 , new york times , jagranjosh , hindustantimes , news nation
//
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//
//        return l;
//    }

//}
