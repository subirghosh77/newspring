/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.devt.controllers;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.devt.model.NewsItem;
import org.devt.service.impl.FetchResourcesServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author DELL
 */
@Controller
public class AjaxNewsPaperCategoryController {

    @Autowired
    HttpSession session;
    @Autowired
    FetchResourcesServiceImpl fetchResourcesServiceImpl;

    @RequestMapping(value = "/ajaxcall-np-cat", method = RequestMethod.POST, headers = "Accept=*/*", produces = MediaType.APPLICATION_JSON_VALUE)

    public @ResponseBody
    List getCategoryForNewsPaper(String channelName, String type, Model map) {
        System.out.println("Inside Ajax call - Java");
        System.out.println("name= " + channelName + "    type= " + type.replace("+", " "));

        List l;
        if (type.contains("home")) {
            l = fetchResourcesServiceImpl.getNewsByCategoriesOrName(channelName);
        } else {
            l = fetchResourcesServiceImpl.getNewsCategoriesName(channelName, type.replace("+", " "));
        }

//        if(l != null){
//            l.add("null");
//        }
//        
        return l;
    }
}
