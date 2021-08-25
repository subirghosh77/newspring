/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.devt.controllers;

import java.util.Base64;
import java.util.Locale;
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
@RequestMapping(value = "/search")
public class SearchController {

    @Autowired
    HttpSession session;
    @Autowired
    FetchResourcesServiceImpl fetchResourcesServiceImpl;

    @RequestMapping(method = RequestMethod.GET)
    public String getAllDataFromSerachOrCat(Model map, String s) {

        map.addAttribute("MAINMENUHTML", fetchResourcesServiceImpl.getChannelsMainCategoriesHTMService());

        int idx;
        String ret;
        System.out.println("Inside Search Controller");
        System.out.println("Data received: " + s);

        if (s == null) {
            ret = "404";
        } else {
            
            String unpackedData = new String(Base64.getDecoder().decode(s.getBytes()));

            System.out.println("unpackedData =" + unpackedData);            
            String[] properties = unpackedData.split("%#%");
            for (String p : properties) {
                idx = p.indexOf("=");
                System.out.println("p =" + p);
                
                map.addAttribute(p.substring(0, idx), p.substring(idx + 1, p.length()).toUpperCase());
            }
            
            ret = "search";
        }

        return ret;
    }
}
