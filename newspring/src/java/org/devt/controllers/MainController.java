/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.devt.controllers;

import java.util.Base64;
import java.util.List;
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
@RequestMapping(value = "/detailed-news")
public class MainController {

    @Autowired
    HttpSession session;
    @Autowired
    FetchResourcesServiceImpl fetchResourcesServiceImpl;

    @RequestMapping(method = RequestMethod.GET)
    public String getAllDataFromIndex(Model map, String data) {

        map.addAttribute("MAINMENUHTML", fetchResourcesServiceImpl.getChannelsMainCategoriesHTMService());

        int idx;
        String ret;
        System.out.println("Inside Main Controller");
        System.out.println("Data received: " + data);

        AjaxMainController ajaxMainController = new AjaxMainController();

        if (data == null) {
            ret = "404";
        } else {

            data = data.replaceAll(" ", "");
            String unpackedData = new String(Base64.getDecoder().decode(data.getBytes()));

//            System.out.println("unpackedData =" + unpackedData);
            String[] properties = unpackedData.split("%#%");
//            System.out.println("properties>>>" + properties.length);
            for (String p : properties) {
                idx = p.indexOf("=");
//                System.out.println("idx of =" + idx);
                System.out.println("p =" + p);
                if (p.substring(0, idx).contains("channelsDes")) {
                    if (session != null && session.getAttribute("typeOfDetailedNews") == null) {
                        System.out.println("Inside Main Controller =>" + p.substring(idx + 1, p.length()));
                        session.setAttribute("typeOfDetailedNews", p.substring(idx + 1, p.length()));
                    }
                }
                map.addAttribute(p.substring(0, idx), p.substring(idx + 1, p.length()));
            }

            ret = "main";
        }

        return ret;
    }
}
