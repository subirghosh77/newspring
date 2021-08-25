package org.devt.dao;

import java.sql.SQLException;
import java.util.List;
import org.devt.model.ChannelsItemLogo;
import org.devt.model.NewsItem;

public interface FetchResourcesDao {

    public List<ChannelsItemLogo> availNewsPaperLogo() throws SQLException;

//    public List<ChannelsItem> demoDBCallChannels(String type) throws SQLException;
    public List<NewsItem> getNewsItemDataFromDB() throws SQLException;

    public String getChannelsCategoriesHTM(String cName) throws SQLException;

    public String getChannelsCategoriesHTMOnlyTwo(String cName) throws SQLException;

    public String getChannelsMainCategoriesHTM() throws SQLException;
    
    public List<NewsItem> getTypeFromDetailedNwes(String type) throws SQLException;
    
    public List<NewsItem> getNewsCategoriesName(String name, String type) throws SQLException;
    
    public List<NewsItem> getNewsByCategoriesOrName(String name) throws SQLException;

}
