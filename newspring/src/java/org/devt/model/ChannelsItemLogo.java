/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.devt.model;

import java.util.Base64;

/**
 *
 * @author DELL
 */
public class ChannelsItemLogo{
    
    private String name;
//    private String baseurl;
//    private String xml;
//    private String slogopath;
    private String blogopath; 
//    private String description; 
    private String data;

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the blogopath
     */
    public String getBlogopath() {
        return blogopath;
    }

    /**
     * @param blogopath the blogopath to set
     */
    public void setBlogopath(String blogopath) {
        this.blogopath = blogopath;
    }

     /**
     * @return the data
     */
    public String getData() {
        return toString();
    }

    /**
     * @param data the data to set
     */
    public void setData(String data) {
        this.data = data;
    }
/**
     * @return the description
     */
//    public String getDescription() {
//        return description;
//    }

    /**
     * @param description the description to set
     */
//    public void setDescription(String description) {
//        this.description = description;
//    }


    
    @Override    
    public String toString(){
        String delimiter="%#%";
        StringBuilder strB=new StringBuilder();
        strB.append("name=");
        strB.append(getName());
        strB.append(delimiter);
        strB.append("blogopath=");
        strB.append(getBlogopath());
//        strB.append(delimiter);
//        strB.append("description=");
//        strB.append(getDescription());

//        System.out.println("For Details news ----->>>>>>"+new String(Base64.getEncoder().encode(strB.toString().getBytes())));

        return new String(Base64.getEncoder().encode(strB.toString().getBytes()));
    }

    
}
