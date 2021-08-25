/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author DELL
 */
public class NewsItem implements java.io.Serializable {// news items list

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
        this.title = title!=null?title.replaceAll("'", "&quote;"):"";;
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
        this.description = description!=null?description.replaceAll("'", "&quote;"):"";
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