/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.devt.controllers;

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
@RequestMapping(value = "/available-newspapers")
public class AvailableNewsPaperController {

    @Autowired
    HttpSession session;
    @Autowired
    FetchResourcesServiceImpl fetchResourcesServiceImpl;

    @RequestMapping(method = RequestMethod.GET)
    public String insideAvailableNewsPaper(Model map) {

        System.out.println("Inside Available News Paper Controller");
        map.addAttribute("MAINMENUHTML", fetchResourcesServiceImpl.getChannelsMainCategoriesHTMService());

        return "availnewspapers";
    }
}
