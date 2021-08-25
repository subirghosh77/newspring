/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.devt.util;

//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.List;
//import org.devt.model.NewsItem;
//import org.w3c.dom.Element;
//import org.w3c.dom.Node;
//import org.w3c.dom.NodeList;

/**
 *
 * @author DELL
 */
//public class ServiceUtil {

//    public static List<NewsItem> allRss(NodeList n1, String name, String sLogopath, String channelsDes) throws SQLException {
//        NewsItem item;
//        List<NewsItem> items = new ArrayList<>();
//        String[] splitFirst = null;
//        String[] splitFinal = null;
//        char specialC = '"';
//
//        for (int i = 0; i < n1.getLength(); i++) {// iterating the child lvl 2 nodes
//            Element elm = (Element) n1.item(i);
//            NodeList cNLvl1 = elm.getChildNodes();
//            for (int j = 0; j < cNLvl1.getLength(); j++) {// iterating the child lvl 2 nodes
//                if (cNLvl1.item(j).hasChildNodes()) {
//                    Element elmC1 = (Element) cNLvl1.item(j);
//                    NodeList cNLvl2 = elmC1.getChildNodes();
//                    for (int k = 0; k < cNLvl2.getLength(); k++) {// iterating the child lvl 3 nodes
//                        if (cNLvl2.item(k).hasChildNodes()) {
//                            Element elmC2 = (Element) cNLvl2.item(k);
//                            if (elmC2.getNodeName().equalsIgnoreCase("item")) {
//                                item = new NewsItem();
//                                NodeList cNodesLvl1 = elmC2.getChildNodes();
//                                for (int m = 0; m < cNodesLvl1.getLength(); m++) {// iterating the child lvl 4 nodes
//                                    Node leafP = cNodesLvl1.item(m);
//
//                                    item.setChannelsName(name);
//                                    item.setSmallLogoPath(sLogopath);
//
//                                    if (!channelsDes.equals("all")) {
//                                        item.setChannelsDes(channelsDes);
//                                    }
//
//                                    if (leafP.hasChildNodes()) {
////                                        System.out.print(leafP.getNodeName() + "---->");
////                                        System.out.println(leafP.getChildNodes().item(0).getNodeValue());
//                                        switch (leafP.getNodeName().toUpperCase()) {
//                                            case "TITLE":
//                                                item.setTitle(leafP.getChildNodes().item(0).getNodeValue());
//                                                break;
//                                            case "DESCRIPTION":
//                                                if (leafP.getChildNodes().item(0).getNodeValue().contains("<img")) {
//
//                                                    splitFirst = leafP.getChildNodes().item(0).getNodeValue().split("</a>");
//                                                    if (splitFirst.length > 1) {
//                                                        item.setDescription(splitFirst[1]);
//                                                    } else {
//                                                        item.setDescription("no Description found.");
//                                                    }
//
//                                                    splitFinal = splitFirst[0].split("src=", splitFirst[0].length());
////                                                    System.out.println("splitFinal ->>>>"+ splitFinal[1]);
//                                                    splitFinal = splitFinal[1].split(Character.toString((char) 34));
////                                                    System.out.println("splitFinal ->>>>+++"+ splitFinal[1]);
//                                                    item.setImg(splitFinal[1].substring(0, splitFinal[1].length()));
//                                                } else {
//                                                    item.setDescription(leafP.getChildNodes().item(0).getNodeValue());
//                                                }
//                                                break;
//                                            case "LINK":
//                                                item.setLink(leafP.getChildNodes().item(0).getNodeValue());
//                                                break;
//                                            case "GUID":
//                                                item.setGuid(leafP.getChildNodes().item(0).getNodeValue());
//                                                break;
//                                            case "PUBDATE":
//                                                item.setPubDate(leafP.getChildNodes().item(0).getNodeValue());
//                                                break;
//                                            case "IMAGE":
//                                                item.setImg(leafP.getChildNodes().item(0).getNodeValue());
//                                                break;
//                                            case "COVERIMAGES":
//                                                item.setImg(leafP.getChildNodes().item(0).getNodeValue());
//                                                break;
//                                            case "AUTHOR":
//                                                item.setAuthor(leafP.getChildNodes().item(0).getNodeValue());
//                                                break;
//                                        }
//                                    }
//                                }
//                                items.add(item);
//                            }
//                        }
//                    }
//                }
//
//            }
//        }
//        return items;
//    }
//}
