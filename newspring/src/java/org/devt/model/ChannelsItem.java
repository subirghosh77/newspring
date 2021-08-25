/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.devt.model;

import java.util.List;

/**
 *
 * @author DELL
 */
public class ChannelsItem {
    
    private String name;
    private String baseurl;
    private String xml;
    private String slogopath;
    private String blogopath; 
    private String description; 

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
     * @return the baseurl
     */
    public String getBaseurl() {
        return baseurl;
    }

    /**
     * @param baseurl the baseurl to set
     */
    public void setBaseurl(String baseurl) {
        this.baseurl = baseurl;
    }

    /**
     * @return the xml
     */
    public String getXml() {
        return xml;
    }

    /**
     * @param xml the xml to set
     */
    public void setXml(String xml) {
        this.xml = xml;
    }

    /**
     * @return the slogopath
     */
    public String getSlogopath() {
        return slogopath;
    }

    /**
     * @param slogopath the slogopath to set
     */
    public void setSlogopath(String slogopath) {
        this.slogopath = slogopath;
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
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }
    

}
