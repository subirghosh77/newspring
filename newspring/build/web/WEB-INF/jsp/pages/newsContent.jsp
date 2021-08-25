<%-- 
    Document   : newsContent
    Created on : 20 Jan, 2021, 9:13:26 PM
    Author     : DELL
--%>
<div class="main_contener_div" style="height:fit-content;">
    <div class="news_summary_div space_news_summary_div">
        <div class="news_div">
            <div class="news_first_part" >
                 <span class="decripition-type-div-mobile" >Sports</span>
                <img src="${pageContext.request.contextPath}/images/ni1.webp" class="news_image">
            </div>
            <div class="news_second_part">
                <div class="news_content_div">									
                    <div id="tit" class="news_content_headline">
                        <span class="decripition-type-div">Sports</span>
                        <a class="decripition-type-a" href="${pageContext.request.contextPath}/detailed-news"> <!-- main.jsp-->
                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                        </a>
                    </div>
                    <div class="news_content_headline news_content_summary">										
                        The is a long established fact that a reader will be distracted by the 
                        readable content of a page when looking at its layout. 
                        The point of using Lorem Ipsum is that it has a more-or-less normal 
                        distribution of letters, as opposed to using 'Content here, content here', 
                        making it look like readable English.										
                    </div>
                    <div id="tit" class="news_content_headline news-link-font">                        
                        <a href="${pageContext.request.contextPath}/"><!-- channels news link -->
                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                        </a>
                    </div>
                    <div class="news_content_headline news_content_footer">
                        <span class="icon_news_logo" style="background:url(${pageContext.request.contextPath}/images/channel_logo/it.png);"></span>
                        <span class="icon_b_text">
                            <span class="name-cap-index">The Economic Times </span>
                            <span class="pubdate-index">3h</span>                             
                        </span> 
                    </div>
                </div>
                <div class="ratting_div">
                    <i class="fa fa-star-o"></i>
                </div>
                <br>
                <br>
                <div class="ratting_div">                                                           
                    <a href="${pageContext.request.contextPath}/detailed-news"><!-- main.jsp-->
                        <i class="far fa-comment-alt" aria-hidden="true"></i>
                    </a>                                             
                </div>                                            
            </div>

            <div class="mobile_summary_news_div">
                <div class="news_second_part_m">
                    <div class="news_content_div_m">									
                        <div class="news_content_headline">                           
                            <a href="${pageContext.request.contextPath}/detailed-news"><!-- main.jsp-->
                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                            </a>
                        </div>
                        <div class="news_content_headline news_content_summary">										
                            The is a long established fact that a reader will be distracted by the 
                            readable content of a page when looking at its layout. 
                            The point of using Lorem Ipsum is that it has a more-or-less normal 
                            distribution of letters, as opposed to using 'Content here, content here', 
                            making it look like readable English.										
                        </div>
                        <div id="tit" class="news_content_headline news-link-font">                        
                            <a href="${pageContext.request.contextPath}/"><!-- channels news link -->
                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                            </a>
                        </div>
                        <div class="news_content_headline news_content_footer_m comm-rat">
                            <div style="flex:1;">
                                <span class="icon_news_logo" style="background:url(${pageContext.request.contextPath}/images/channel_logo/it.png);"></span>
                                <span class="icon_b_text" >
                                    <span class="name-cap-index">The Economic Times </span>
                                    <span class="pubdate-index">3h</span>                                        
                                </span> 
                            </div>
                        </div>                        
                        <div class="news_content_headline news_content_footer_m comm-rat">
                            <div class="ratting-comm-div">
                                <div class="ratting_div_m">
                                    <i class="fa fa-star-o"></i>
                                </div>
                            </div>
                            <div class="ratting-comm-div">
                                <div class="ratting_div">                                                           
                                    <a href="${pageContext.request.contextPath}/detailed-news"><!-- main.jsp-->
                                        <i class="far fa-comment-alt"></i>
                                    </a>                                             
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>