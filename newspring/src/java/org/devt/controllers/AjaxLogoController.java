/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.devt.controllers;

import java.util.List;
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
 * @author Sneha
 */
@Controller
public class AjaxLogoController {

    @Autowired
    FetchResourcesServiceImpl fetchResourcesServiceImpl;

    @RequestMapping(value = "/ajaxcall-newspaperslogo", method = RequestMethod.POST, headers = "Accept=*/*", produces = MediaType.APPLICATION_JSON_VALUE)

    public @ResponseBody
    List getChannelsLogoItems(String name, String location, Model map) {
        System.out.println("Inside Ajax call left newspaperlogo - Java");
        List l = null;
        l = fetchResourcesServiceImpl.availNewsPaperLogoService();
        System.out.println("List Size ->" + l.size());

        return l;

    }
}
