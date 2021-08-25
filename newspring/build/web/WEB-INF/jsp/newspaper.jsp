<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="description" content="">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" sizes="200x200" href="${pageContext.request.contextPath}/images/icon.png">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login_page.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sneha.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive_sneha.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login_responsive.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome-new.css">	
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
        <title>Newspring - News Paper</title>
    </head>
    <body>
        <header>
            <%@include file="pages/header.jsp" %>
            <!--  menu  -->
            <%@include file="pages/menu.jsp" %>
        </header>


        <div id="content_body" class="content_body">
            <div class="content">
                <div id="content_div" class="content_div">

                    <!-- recent news and all start -->
                    <%@include file="pages/leftDiv.jsp" %>
                    <!-- recent news and all end -->

                    <!-- main news content start -->
                    <div id="secondDiv" class="second_div" style="border-bottom-right-radius: 0;border-bottom-left-radius: 0;margin-bottom: 10px;">
                        <div id="showNews" class="main_contener_div" style="height:fit-content;">
                            <div class="title space_div_first news_heading">
                                <i class="fa fa-newspaper-o i_space"></i>NEWS PAPER
                                <!--<button id="index-r" onclick="triggerAjaxCall();">Refresh</button>-->
                                <button id="newspaper-r">Refresh</button>
                            </div>
                        </div>
                    </div>
                    <div id="secondDiv" class="second_div showNews">
                        <div class="top_page_changer">
                            <a href="${pageContext.request.contextPath}/available-newspapers">News Paper</a> / English / 
                            <span style="text-transform: capitalize;">${name}</span>
                        </div>
                        <div class="news-paper-div">
                            <div class="news-paper-main">
                                <img src="${blogopath}" width="100%" height="100%" class="img-alt-newspaper" alt="${name}">
                            </div>
                            <div class="news-paper-main news-paper-main-s">
                                <!--<p class="np-p">Hindustan Times</p>-->
                                <p class="np-p">${name}</p>
                            </div>
                        </div>
                        <div class="newspaper-header">
                            <div class="newspaper-header-div">
                                <a href="javascript:void(0);" id="categories-1" >
                                    <span class="newspaper-header-div-p active" onclick="getNewsWithType('home');">
                                        <i class="fa fa-home"></i>&nbsp; Home
                                    </span>
                                </a>
                                ${MENUHTMLONLY2}
                                <a href="javascript:void(0);" id="categories-4">
                                    <span class="newspaper-header-div-p np-s">
                                        <i class="fa fa-list-alt"></i>&nbsp; Categories
                                        <i class="fa fa-angle-down np-i"></i>
                                    </span>  
                                </a>

                                <!-- <a href="javascript:void(0);" id="categories-2">
                                     <span class="newspaper-header-div-p">Sports</span>
                                 </a>
                                 <a href="javascript:void(0);" id="categories-3">
                                     <span class="newspaper-header-div-p">Home</span>
                                 </a>
                                 <a href="javascript:void(0);" id="categories-4">
                                     <span class="newspaper-header-div-p np-s">
                                         <i class="fa fa-list-alt"></i>&nbsp; Categories
                                         <i class="fa fa-angle-down np-i"></i>
                                     </span>  
                                 </a>-->
                            </div>
                        </div>  
                        <div class="newspaper-header np-c-s-m" style="display:none;">
                            <div class="newspaper-header-div np-c-s scrollable">
                                ${MENUHTML}
                                <!--<div class="np-c-n-div">
                                    <a href="javascript:void(0);">
                                        <p class="p-h">Sports</p>
                                    </a>
                                </div>-->
                            </div>
                        </div>
                        <div class="showbox-newspaper main-loader-np" style="display: none;">
                            <div class="loader-newspaper">
                                <svg class="circular" viewBox="25 25 50 50">
                                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="5" stroke-miterlimit="10"/>
                                </svg>
                            </div>
                        </div>
                        <div id="secondDiv" class="second_div showNews htmlRefresh"></div>
                    </div>
                    
                    <div id="secondDiv" class="second_div see-more-div-main" style="margin-top: 15px;">        
                        <!-- loader start -->
                        <div class="showbox-newspaper showbox-seemore-np" style="display: none">
                            <div class="loader-index">
                                <svg class="circular" viewBox="25 25 50 50">
                                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="5" stroke-miterlimit="10"/>
                                </svg>
                            </div>
                        </div>
                        <!-- loader end -->
                        <div id="index-sm" class="see-more-div">[See More ...]
                            <!--<a href="javascript:void(0);" onclick="getNewsWithType();" >[See More ...]</a>-->
                        </div>
                    </div>
                    <!-- main news content end -->

                    <!-- footer start -->
                    <%-- <%@include file="pages/footerContent.jsp" %> --%>
                    <!-- footer end -->
                </div>			
            </div>
        </div>

        <footer>
            <%@include file="pages/footer.jsp" %>
        </footer>
        <!-- <script src="js/jquery.js"></script> -->
        <script src="${pageContext.request.contextPath}/js/jquery-min.js"></script>
        <!--<script src="${pageContext.request.contextPath}/js/jquery-3.5.1-min.js"></script>-->
        <script src="${pageContext.request.contextPath}/js/jquery-ui.js"></script>	
        <script src="${pageContext.request.contextPath}/js/main.js"></script>	
        <script type="text/javascript">
            function getNewsWithType(type) {
                //write ajax fetch data
                console.log(type);
                console.log("${name}");
                triggerAjaxCallNewsPaperCategories(type);
            }
            $(document).ready(function(){
//                triggerAjaxCallNewsPaperCategories();
                triggerAjaxCallNewsPaperCategories("home");
            });
             $(document).ajaxComplete(function (event, request, settings) {
                //alert( "<li>Request Complete.</li>" );
                $(".showbox-newspaper.main-loader-np").remove();
//                $(".showbox-seemore.showbox-seemore-np").css("display", "none");
            });
            
            function triggerAjaxCallNewsPaperCategories(type) {
                console.log("Inside Ajax Refresh");
                $.ajax({
                    method: "POST",
                    url: "ajaxcall-np-cat",
//                    async: true,
                    //contentType: "application/json",
                    dataType: "json",
                    data: {channelName: "${name}", type: type}, 
                    beforeSend: function () {
                        $(".showbox-newspaper.main-loader-np").css("display", "block");
//                        $(".showbox-seemore.showbox-seemore-np").css("display", "block");                       
                    }
                    //data: {name: $('#name').val(), location: $('#loc').val()} 
                }).done(function (items) {
                    console.log(items);
                    var text = "<div class='main_contener_div'style='height:fit-content;'>";
                    if(items.length === 0){
                        text=text+"<h1 id='error-items'><i class='fa fa-globe'></i>&nbsp;&nbsp;No Data Found !!</h1>";
                    }    
                    $.each(items, function (index, item) {
                        if(item.img === "null"){
//                            $(".news_first_part").css("display","none");
                            text=text+ "<div class='news_summary_div space_news_summary_div'><div class='news_div'><div class='news_first_part'><span class='decripition-type-div-mobile'>"+item.channelsDes+"</span><img src='" + item.bigLogoPath + "' class='news_image' width='100%' height='100%'></div><div class='news_second_part'><div class='news_content_div'><span class='decripition-type-div'>"+item.channelsDes+"</span><div id='tit' class='news_content_headline'><a href='detailed-news?data="+item.data+"'>" + item.title + " </a></div><div class='news_content_headline news_content_summary'>" + item.description + "</div><div id='tit' class='news_content_headline news-link-font'><a href='" + item.link + "'>" + item.link + "</a></div><div class='news_content_headline news_content_footer'><span class='icon_news_logo' style= 'background:url("+ item.smallLogoPath +");'></span><span class='icon_b_text'><span class='name-cap-index'>" + item.channelsName +"</span><span class='pubdate-index'>" + item.pubDate + "</span></span></div></div><div class='ratting_div'><i class='fa fa-star-o'></i></div><br><br><div class='ratting_div'><a href='detailed-news?data="+item.data+"'><i class='far fa-comment-alt' aria-hidden='true'></i></a></div></div><div class='mobile_summary_news_div'><div class='news_second_part_m'><div class='news_content_div_m'><div class='news_content_headline'><a href='detailed-news?data="+item.data+"'>" + item.title + "</a></div><div class='news_content_headline news_content_summary'>" + item.description + "</div><div id='tit' class='news_content_headline news-link-font'><a href='" + item.link + "'>" + item.link + "</a></div><div class='news_content_headline news_content_footer_m comm-rat'><div style='flex:1;'><span class='icon_news_logo' style= 'background:url("+ item.smallLogoPath +");'></span><span class='icon_b_text'><span class='name-cap-index'>" + item.channelsName + "</span><span class='pubdate-index'>"+ item.pubDate + "</span></span></div></div><div class='news_content_headline news_content_footer_m comm-rat'><div class='ratting-comm-div'><div class='ratting_div_m'><i class='fa fa-star-o'></i></div></div><div class='ratting-comm-div'><div class='ratting_div'><a href='detailed-news?data="+item.data+"'><i class='far fa-comment-alt'></i></a></div></div></div></div></div></div></div></div>";                
                        }else if(item.description === null){
                            text=text+ "<div class='news_summary_div space_news_summary_div'><div class='news_div'><div class='news_first_part'><span class='decripition-type-div-mobile'>"+item.channelsDes+"</span><img src='" + item.img + "' class='news_image' width='100%' height='100%'></div><div class='news_second_part'><div class='news_content_div'><span class='decripition-type-div'>"+item.channelsDes+"</span><div id='tit' class='news_content_headline'><a href='detailed-news?data="+item.data+"'>" + item.title + " </a></div><div class='news_content_headline news_content_summary'>" + item.description + "</div><div id='tit' class='news_content_headline news-link-font'><a href='" + item.link + "'>" + item.link + "</a></div><div class='news_content_headline news_content_footer'><span class='icon_news_logo' style= 'background:url("+ item.smallLogoPath +");'></span><span class='icon_b_text'><span class='name-cap-index'>" + item.channelsName +"</span><span class='pubdate-index'>" + item.pubDate + "</span></span></div></div><div class='ratting_div'><i class='fa fa-star-o'></i></div><br><br><div class='ratting_div'><a href='detailed-news?data="+item.data+"'><i class='far fa-comment-alt' aria-hidden='true'></i></a></div></div><div class='mobile_summary_news_div'><div class='news_second_part_m'><div class='news_content_div_m'><div class='news_content_headline'><a href='detailed-news?data="+item.data+"'>" + item.title + "</a></div><div class='news_content_headline news_content_summary'>" + item.description + "</div><div id='tit' class='news_content_headline news-link-font'><a href='" + item.link + "'>" + item.link + "</a></div><div class='news_content_headline news_content_footer_m comm-rat'><div style='flex:1;'><span class='icon_news_logo' style= 'background:url("+ item.smallLogoPath +");'></span><span class='icon_b_text'><span class='name-cap-index'>" + item.channelsName + "</span><span class='pubdate-index'>"+ item.pubDate + "</span></span></div></div><div class='news_content_headline news_content_footer_m comm-rat'><div class='ratting-comm-div'><div class='ratting_div_m'><i class='fa fa-star-o'></i></div></div><div class='ratting-comm-div'><div class='ratting_div'><a href='detailed-news?data="+item.data+"'><i class='far fa-comment-alt'></i></a></div></div></div></div></div></div></div></div>";                
                        }else{
                                text=text+ "<div class='news_summary_div space_news_summary_div'><div class='news_div'><div class='news_first_part'><span class='decripition-type-div-mobile'>"+item.channelsDes+"</span><img src='" + item.img + "' class='news_image' width='100%' height='100%'></div><div class='news_second_part'><div class='news_content_div'><span class='decripition-type-div'>"+item.channelsDes+"</span><div id='tit' class='news_content_headline'><a href='detailed-news?data="+item.data+"'>" + item.title + " </a></div><div class='news_content_headline news_content_summary'>" + item.description + "</div><div id='tit' class='news_content_headline news-link-font'><a href='" + item.link + "'>" + item.link + "</a></div><div class='news_content_headline news_content_footer'><span class='icon_news_logo' style= 'background:url("+ item.smallLogoPath +");'></span><span class='icon_b_text'><span class='name-cap-index'>" + item.channelsName +"</span><span class='pubdate-index'>" + item.pubDate + "</span></span></div></div><div class='ratting_div'><i class='fa fa-star-o'></i></div><br><br><div class='ratting_div'><a href='detailed-news?data="+item.data+"'><i class='far fa-comment-alt' aria-hidden='true'></i></a></div></div><div class='mobile_summary_news_div'><div class='news_second_part_m'><div class='news_content_div_m'><div class='news_content_headline'><a href='detailed-news?data="+item.data+"'>" + item.title + "</a></div><div class='news_content_headline news_content_summary'>" + item.description + "</div><div id='tit' class='news_content_headline news-link-font'><a href='" + item.link + "'>" + item.link + "</a></div><div class='news_content_headline news_content_footer_m comm-rat'><div style='flex:1;'><span class='icon_news_logo' style= 'background:url("+ item.smallLogoPath +");'></span><span class='icon_b_text'><span class='name-cap-index'>" + item.channelsName + "</span><span class='pubdate-index'>"+ item.pubDate + "</span></span></div></div><div class='news_content_headline news_content_footer_m comm-rat'><div class='ratting-comm-div'><div class='ratting_div_m'><i class='fa fa-star-o'></i></div></div><div class='ratting-comm-div'><div class='ratting_div'><a href='detailed-news?data="+item.data+"'><i class='far fa-comment-alt'></i></a></div></div></div></div></div></div></div></div>";                
                        }
                    });
                    text = text + "</div>";
                    $(".second_div.showNews.htmlRefresh").html(text);
                }).fail(function () {
                    alert("Error In append text");
                });
            }
        </script>
    </body>
</html>