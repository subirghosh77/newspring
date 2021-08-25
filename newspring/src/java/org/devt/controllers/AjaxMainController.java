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
public class AjaxMainController {

    @Autowired
    HttpSession session;
    @Autowired
    FetchResourcesServiceImpl fetchResourcesServiceImpl;

    @RequestMapping(value = "/ajaxcall-main-type", method = RequestMethod.POST, headers = "Accept=*/*", produces = MediaType.APPLICATION_JSON_VALUE)

    public @ResponseBody
    List getNewsItemsForDetailedNews(String type) {        
        
        System.out.println("Inside Ajax call Detailed News - Java");
        
        List l = new ArrayList();
        List list = new ArrayList();
        int newItemCount = 0;
        try {
            if (session != null && session.getAttribute("detailedNewsItemList") == null) {
                System.out.println("Type=> " + session.getAttribute("typeOfDetailedNews"));
                l = fetchResourcesServiceImpl.getTypeFromDetailedNwesService((String)session.getAttribute("typeOfDetailedNews"));
                System.out.println("List Size getNewsItemsForDetailedNews ->" + l.size());
                session.setAttribute("detailedNewsItemList", l);
                session.setAttribute("detailedNewsItemCount", 0);
            }
            list = (List) session.getAttribute("detailedNewsItemList");
            newItemCount = (Integer) session.getAttribute("detailedNewsItemCount");
            session.setAttribute("detailedNewsItemCount", newItemCount + 10);

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (list.size() <= newItemCount + 10) {
                newItemCount = 0;
                return list.subList(newItemCount, list.size());
            } else {
                return list.subList(newItemCount, newItemCount + 10);
            }
        }
    }
}
