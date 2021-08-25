package org.devt.service;

import java.util.List;
import org.devt.model.ChannelsItemLogo;
import org.devt.model.NewsItem;

public interface FetchResourcesService {

    public List<ChannelsItemLogo> availNewsPaperLogoService();

    public List<NewsItem> getNewsItemDataFromDBService();

    public String getChannelsCategoriesHTMService(String cName);

    public String getChannelsCategoriesHTMOnlyTwoService(String cName);

    public String getChannelsMainCategoriesHTMService();
    
    public List<NewsItem> getTypeFromDetailedNwesService(String type);
    
    public List<NewsItem> getNewsCategoriesName(String name, String type);
    
    public List<NewsItem> getNewsByCategoriesOrName(String name);

}
