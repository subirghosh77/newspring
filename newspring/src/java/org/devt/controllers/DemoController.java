/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.devt.controllers;

import java.util.ArrayList;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
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
@RequestMapping(value = "/demo")
public class DemoController {
    
    @Autowired
    HttpSession session;
    
    @RequestMapping(method = RequestMethod.GET)
    public String getFoosBySimplePath(Model map) {
        
        System.out.println("Inside Demo Controller");
//        ArrayList arrayList=new ArrayList();
//        arrayList.add("Arnab");
//        arrayList.add("Sneha");
//        arrayList.add("Subir");
//        
//        map.addAttribute("l1", arrayList);
//        map.addAttribute("n1","session 1");
//        session.setAttribute("userid", 77);
//        return "logIn_backup";
        return "logIn_backup";
    }
    
}
