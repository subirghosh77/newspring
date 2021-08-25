/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.devt.controllers;

import java.util.Base64;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.devt.service.impl.FetchResourcesServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author DELL
 */
@Controller
@RequestMapping(value = "/newspaper")
public class NewsPaperController {

    @Autowired
    HttpSession session;
    @Autowired    
    FetchResourcesServiceImpl fetchResourcesServiceImpl;

    @RequestMapping(method = RequestMethod.GET)
    public String getDataAvailNewsPaper(Model map, String data) {
        
         map.addAttribute("MAINMENUHTML", fetchResourcesServiceImpl.getChannelsMainCategoriesHTMService());
        
        int idx;
        String ret;
        System.out.println("Inside News Paper Controller");
        //      System.out.println("Data received: "+data);
        if (data == null) {
            ret = "404";
        } else {
            data = data.replaceAll(" ", "");
            String unpackedData = new String(Base64.getDecoder().decode(data.getBytes()));

    //        System.out.println("unpackedData ="+unpackedData); 
            String[] properties = unpackedData.split("%#%");

            //       System.out.println("properties>>>"+category.length);
            for (String p : properties) {
                idx = p.indexOf("=");
             //  System.out.println("idx of ="+idx);

            //    System.out.println("newsPaper>>>>>> "+p.substring(0, idx));      
                //    System.out.println(p.substring(0, idx).toString());
                if (p.substring(0, idx).contains("name")) {
                   map.addAttribute("MENUHTML",fetchResourcesServiceImpl.getChannelsCategoriesHTMService(p.substring(idx + 1, p.length()))); 
                   map.addAttribute("MENUHTMLONLY2",fetchResourcesServiceImpl.getChannelsCategoriesHTMOnlyTwoService(p.substring(idx + 1, p.length()))); 
                }
                
                map.addAttribute(p.substring(0, idx), p.substring(idx + 1, p.length()));
            }
            ret = "newspaper";
        }
        return ret;
    }
}
