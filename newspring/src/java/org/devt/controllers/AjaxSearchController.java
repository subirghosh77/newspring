/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.devt.controllers;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.devt.service.impl.FetchResourcesServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author DELL
 */
@Controller
public class AjaxSearchController {

    @Autowired
    HttpSession session;
    @Autowired
    FetchResourcesServiceImpl fetchResourcesServiceImpl;

    @RequestMapping(value = "/ajaxcall-search-news-type", method = RequestMethod.POST, headers = "Accept=*/*", produces = MediaType.APPLICATION_JSON_VALUE)

    public @ResponseBody
    List getNewsItemsForDetailedNews(String type) {

        System.out.println("Inside Ajax call search news - Java");
        System.out.println("category= "+type);
        
        List l=null;
        l=fetchResourcesServiceImpl.getTypeFromDetailedNwesService(type);
        return l;

    }
}