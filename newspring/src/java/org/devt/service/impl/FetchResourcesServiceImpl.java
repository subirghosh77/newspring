/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.devt.service.impl;

import java.util.List;
import org.devt.dao.FetchResourcesDao;
import org.devt.dao.impl.FetchResourcesDaoImpl;
import org.devt.model.ChannelsItemLogo;
import org.devt.model.NewsItem;
import org.devt.service.FetchResourcesService;

/**
 *
 * @author DELL
 */
public class FetchResourcesServiceImpl implements FetchResourcesService {

//    @Override
//    public void dummyCallDb() {
//        FetchResourcesDao dao = new FetchResourcesDaoImpl();
//        try{
//        dao.demoDBCall();
//        }catch(Exception ex ){
//            ex.printStackTrace();
//        }
//    }
    FetchResourcesDao dao = new FetchResourcesDaoImpl();

    public List<ChannelsItemLogo> availNewsPaperLogoService() {

        List<ChannelsItemLogo> l = null;

        try {
            l = dao.availNewsPaperLogo();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return l;
    }

    public List<NewsItem> getNewsItemDataFromDBService() {

        List<NewsItem> l = null;
        try {
            l = dao.getNewsItemDataFromDB();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return l;
    }

    public String getChannelsCategoriesHTMService(String cName) {
        String l = null;
        try {
            l = dao.getChannelsCategoriesHTM(cName);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return l;
    }

    public String getChannelsCategoriesHTMOnlyTwoService(String cName) {
        String l = null;
        try {
            l = dao.getChannelsCategoriesHTMOnlyTwo(cName);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return l;
    }

    public String getChannelsMainCategoriesHTMService() {
        String l = null;
        try {
            l = dao.getChannelsMainCategoriesHTM();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return l;
    }

    public List<NewsItem> getTypeFromDetailedNwesService(String type) {
        List<NewsItem> l = null;
        try {
            l = dao.getTypeFromDetailedNwes(type);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return l;
    }

    public List<NewsItem> getNewsCategoriesName(String name, String type){
        List<NewsItem> l = null;
        try {
            l = dao.getNewsCategoriesName(name,type);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return l;
    }
    
    public List<NewsItem> getNewsByCategoriesOrName(String name){
        List<NewsItem> l = null;
        try {
            l = dao.getNewsByCategoriesOrName(name);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return l;
    }
}
