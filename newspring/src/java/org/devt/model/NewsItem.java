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
public class NewsItem implements java.io.Serializable{

    // database
    private String channelsName;
    private String smallLogoPath;
    private String bigLogoPath;
    private String channelsDes;
    
    private String title;
    private String description;
    private String link;
    private String guid;
    private String pubDate;
    private String img;
    private String coverImages; // un used
    private String author;
    private String atom;
    private String data;

    /**
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @param title the title to set
     */
    public void setTitle(String title) {
        this.title = title!=null?title.replaceAll("&quote;","'"):"";
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
        this.description = description!=null?description.replaceAll("&quote;","'"):"";
    }

    /**
     * @return the link
     */
    public String getLink() {
        return link;
    }

    /**
     * @param link the link to set
     */
    public void setLink(String link) {
        this.link = link;
    }

    /**
     * @return the guid
     */
    public String getGuid() {
        return guid;
    }

    /**
     * @param guid the guid to set
     */
    public void setGuid(String guid) {
        this.guid = guid;
    }

    /**
     * @return the pubDate
     */
    public String getPubDate() {
        return pubDate;
    }

    /**
     * @param pubDate the pubDate to set
     */
    public void setPubDate(String pubDate) {
        this.pubDate = pubDate;
    }

//    @Override
//    public String toString() {
//        return "Title ->"+this.title+
//                ", Description ->"+this.description+
//                ", Link ->"+this.link+
//                ", Guid ->"+this.guid+
//                ", PubDate ->"+this.pubDate;
//    }

    /**
     * @return the img
     */
    public String getImg() {
        return img;
    }

    /**
     * @param img the img to set
     */
    public void setImg(String img) {
        this.img = img;
    }

    /**
     * @return the coverImages
     */
    public String getCoverImages() {
        return coverImages;
    }

    /**
     * @param coverImages the coverImages to set
     */
    public void setCoverImages(String coverImages) {
        this.coverImages = coverImages;
    }

    /**
     * @return the author
     */
    public String getAuthor() {
        return author;
    }

    /**
     * @param author the author to set
     */
    public void setAuthor(String author) {
        this.author = author;
    }

    @Override    
    public String toString(){
        String delimiter="%#%";
        StringBuilder strB=new StringBuilder();
        strB.append("title=");
        strB.append(getTitle());
        strB.append(delimiter);
        strB.append("description=");
        strB.append(getDescription());
        strB.append(delimiter);
        strB.append("link=");
        strB.append(getLink());
        strB.append(delimiter);
        strB.append("guid=");
        strB.append(getGuid());
        strB.append(delimiter);
        strB.append("pubdate=");
        strB.append(getPubDate());
        strB.append(delimiter);
        strB.append("img=");
        strB.append(getImg());
        strB.append(delimiter);
        strB.append("coverImages=");
        strB.append(getCoverImages());
        strB.append(delimiter);
        strB.append("author=");
        strB.append(getAuthor());
        strB.append(delimiter);
        strB.append("name=");
        strB.append(getChannelsName());
        strB.append(delimiter);
        strB.append("slogoPath=");
        strB.append(getSmallLogoPath());
        strB.append(delimiter);
        strB.append("channelsDes=");
        strB.append(getChannelsDes());
        strB.append(delimiter);
        strB.append("bigLogoPath=");
        strB.append(getBigLogoPath());
        
        System.out.println("For Details news ----->>>>>> "+new String(Base64.getEncoder().encode(strB.toString().getBytes())));
        
        
        
        return new String(Base64.getEncoder().encode(strB.toString().getBytes()));
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
     * @return the channelsName
     */
    public String getChannelsName() {
        return channelsName;
    }

    /**
     * @param channelsName the channelsName to set
     */
    public void setChannelsName(String channelsName) {
        this.channelsName = channelsName;
    }

    /**
     * @return the smallLogoPath
     */
    public String getSmallLogoPath() {
        return smallLogoPath;
    }

    /**
     * @param smallLogoPath the smallLogoPath to set
     */
    public void setSmallLogoPath(String smallLogoPath) {
        this.smallLogoPath = smallLogoPath;
    }

    /**
     * @return the channelsDes
     */
    public String getChannelsDes() {
        return channelsDes;
    }

    /**
     * @param channelsDes the channelsDes to set
     */
    public void setChannelsDes(String channelsDes) {
        this.channelsDes = channelsDes;
    }

    /**
     * @return the atom
     */
    public String getAtom() {
        return atom;
    }

    /**
     * @param atom the atom to set
     */
    public void setAtom(String atom) {
        this.atom = atom;
    }

    public void setChannelsName() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    /**
     * @return the bigLogoPath
     */
    public String getBigLogoPath() {
        return bigLogoPath;
    }

    /**
     * @param bigLogoPath the bigLogoPath to set
     */
    public void setBigLogoPath(String bigLogoPath) {
        this.bigLogoPath = bigLogoPath;
    }
}
    
   


    
    

