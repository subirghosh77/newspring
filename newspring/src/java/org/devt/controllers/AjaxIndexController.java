/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.devt.controllers;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.devt.service.impl.FetchResourcesServiceImpl;
//import org.devt.service.RestService;
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
public class AjaxIndexController {
    @Autowired
    HttpSession session;
    @Autowired    
    FetchResourcesServiceImpl fetchResourcesServiceImpl;
    
    @RequestMapping(value = "/ajaxcall-index" ,method = RequestMethod.POST, headers="Accept=*/*", produces = MediaType.APPLICATION_JSON_VALUE)
    
    public @ResponseBody List getNewsItems(String name, String location, Model map) {
        System.out.println("Inside Ajax call - Java");        
        List l=null;
        List list=null;
        int newItemCount;
        if(session!=null && session.getAttribute("newsItemList")==null){
            l=fetchResourcesServiceImpl.getNewsItemDataFromDBService();
            System.out.println("List Size ->"+l.size());
            session.setAttribute("newsItemList", l);
            session.setAttribute("newsItemCount", 0);
        }
        list=(List)session.getAttribute("newsItemList");
        newItemCount=(Integer)session.getAttribute("newsItemCount");
        session.setAttribute("newsItemCount", newItemCount+10);
        
        if(list.size()<=newItemCount + 10){
            return list.subList(newItemCount, list.size());
        }else{
            return list.subList(newItemCount, newItemCount + 10);
        }
            
    }
}
