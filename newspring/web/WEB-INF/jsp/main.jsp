<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <title>Newspring - ${title} </title>
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
                    <div id="secondDiv" class="second_div div-m-space" style="display: block">
                        <div class="main_contener_div" style="height:fit-content;">
                            <div class="title space_div_first news_heading">
                                <i class="fa fa-newspaper-o i_space"></i>NEWS
                            </div>
                        </div>
                    </div>     

                    <%--<%@include file="pages/404.jsp" %>--%>


                    <div id="secondDiv" class="second_div" style="display: block">
                        <div class="main_contener_div" style="height:fit-content;">
                            <div class="top_page_changer">
                                <a href="${pageContext.request.contextPath}/index">News</a> / Detailed News / <span style="text-transform: capitalize">${channelsDes}</span>
                            </div>


                            <div class="news_summary_div space_news_summary_div" style="display:block;">						
                                <div class="headline" style="display: flex;">
                                    <div class="headline_div headline_div_img">
                                        <img src="${bigLogoPath}" width="100%" height="100%">
                                    </div>
                                    <div class="headline_div">
                                        ${title}
                                    </div>
                                </div>                                      

                                <c:choose>
                                    <c:when test="${img=='null'}">
                                        <div class="conimage" style="display:none;"></div>
                                    </c:when>
                                    <c:otherwise>
                                        <div class="conimage" style="display:block;">
                                            <div class="decripition-type-dn">${channelsDes}</div>
                                            <div class="conimage_div">
                                                <img src="${img}" class="image_responsive" >
                                            </div> 
                                        </div>
                                    </c:otherwise>
                                </c:choose>


                                <div class="source_div">
                                    <div style="float:left">
                                        <span class="source_line"> Source: </span>
                                        <span class="spcae_text_main" style="text-transform: capitalize;">
                                            ${name}
                                        </span>
                                    </div>
                                    <div style="float:right">
                                        <span class="source_line" > Updated on:</span>
                                        <span class="spcae_text_main"> ${pubdate} </span> 
                                    </div>                                    
                                </div>
                                <div class="headline" style="padding: 25px 20px 25px 20px;">
                                    <div class="headline_div contentdiv content_paragraph" style="color: black;">
                                        ${description} 
                                        <br/><a href="${link}" style="color: blue;">Read Original Article</a>
                                    </div>
                                    <div class="headline_div contentdiv content_paragraph" style="color: black;padding-top: 15px;">
                                        <span class="disclaimer disclaimer-wb-name">Newspring</span>                                        
                                        <span class="disclaimer">Disclaimer: This story is auto-aggregated by a 
                                            computer program and has not been created or edited by 
                                            Newspring. Publisher: 
                                            <span style="text-transform: capitalize;"> ${name}</span>
                                        </span>
                                    </div>
                                    <!--<span style="height:10px;width:100%;float:left;"></span>-->
                                    <!--all comnents-->
                                    <div class="news_div comm-show">
                                        <div class="com-div-inner">
                                            <div class="main-comm">
                                                <div class="main-comm-div scrollable">
                                                    <div class="main-comm-main">
                                                        <!-- user image comments -->
                                                        <div class="all-comm-sen-rev samll-img-comm" style="background:url(${pageContext.request.contextPath}/images/channel_logo/it.png);"></div>
                                                        <!-- show comment -->
                                                        <div class="all-comm-sen-rev">
                                                            <div style="height: 16px;">
                                                                <div class="comm-name" style="float:left">Subir Ghosh</div>
                                                                <div class="comm-name" style="float:right;">Today . 4PM</div>
                                                            </div>
                                                            <p class="comm-p">Amr ai bal news ta valo laga nai bal</p>
                                                        </div>
                                                        <div class="heart-comm-all">
                                                            <!--<i class="fa fa-heart"></i>-->
                                                            <i class="fa fa-heart-o"></i>                                                            
                                                        </div>
                                                    </div>
                                                    <%@include file="pages/commentD.jsp" %>
                                                </div>
                                            </div>
                                            <div class="f-comm-main">
                                                <div class="comm-main-divs">
                                                    <div class="comm-image-main">
                                                        <span class="icon_news_logo comm-image" style="background:url(${pageContext.request.contextPath}/images/channel_logo/it.png);"></span>
                                                    </div>
                                                </div>
                                                <div class="comm-main-divs comm-sec-div">
                                                    <form action="" method="get">
                                                        <input type="text" placeholder="Comment Your's Opion" class="comment-input" />
                                                    </form>
                                                </div>
                                                <div class="comm-main-divs">
                                                    <div class="comm-image-main">
                                                        <i class="fa fa-paper-plane font-send-comm" aria-hidden="true"></i>
                                                        <!--<i class="fa fa-paper-plane-o" aria-hidden="true"></i>--> 
                                                        <!--<span class="icon_news_logo comm-image comm-send" style="background:url(images/channel_logo/it.png);"></span>-->
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>							 	
                            </div>
                        </div>


                    </div>




                    <div id="secondDiv" class="second_div news-detailed-news" style="display: block;margin-top: 20px;">
                        <div class="main_contener_div" style="height:fit-content;">
                                <div class="title space_div_first news_heading">
                                    <i class="fa fa-newspaper-o i_space"></i>RELATED NEWS
                                </div>
                                <div id="detailed-news-loader" class="showbox-newspaper showbox-seemore" style="display: none;top:90px;">
                                    <div class="loader-index">
                                        <svg class="circular" viewBox="25 25 50 50">
                                        <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="5" stroke-miterlimit="10"/>
                                        </svg>
                                    </div>
                                </div>
                            
                            
                        </div>                                    
                    </div>


                    <div id="secondDiv" class="second_div see-more-div-main" style="margin-top: 15px;">        
                        <!-- loader start -->
                        <div id="second-loader-detailed-news" class="showbox-newspaper showbox-seemore" style="display: none">
                            <div class="loader-index">
                                <svg class="circular" viewBox="25 25 50 50">
                                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="5" stroke-miterlimit="10"/>
                                </svg>
                            </div>
                        </div>
                        <!-- loader end -->
                        <div id="index-sm" class="see-more-div">
                            [See More ...]
                        </div>
                    </div>

                    <!-- main news content end -->

                    <!-- footer start -->
                    <%-- 					<%@include file="pages/footerContent.jsp" %> --%>
                    <!-- footer end -->

                </div>			
            </div>
        </div>

        <footer>
            <%@include file="pages/footer.jsp" %>
        </footer>
        <!-- <script src="js/jquery.js"></script> -->
        <script src="${pageContext.request.contextPath}/js/jquery-min.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery-ui.js"></script>	
        <script src="${pageContext.request.contextPath}/js/main.js"></script>		
        <script type="text/javascript">

            $(document).ready(function () {
                console.log("Page loaded.");
                triggerAjaxCallForDetailedNews();
            });
            $(document).ajaxComplete(function (event, request, settings) {
                //alert( "<li>Request Complete.</li>" );
                $("#detailed-news-loader").remove();
                $("#second-loader-detailed-news").css("display", "none");
            });
            function triggerAjaxCallForDetailedNews() {
                console.log("Inside Ajax Refresh triggerAjaxCallForDetailedNews");
                $.ajax({
                    method: "POST",
                    url: "ajaxcall-main-type",
                    async: true,
                    //contentType: "application/json",
                    dataType: "json",
                    beforeSend: function () {
                        $("#detailed-news-loader").css("display", "block");
                        $("#second-loader-detailed-news").css("display", "block");
                    },
//                    data: {type: $(".decripition-type-dn").html()}
                }).done(function (items) {
                    console.log(items);
                    var text = "<div class='main_contener_div'style='height:fit-content;'>";
                    $.each(items, function (index, item) {
                        if (item.img === "null") {
//                            $(".news_first_part").css("display","none");
                            text = text + "<div class='news_summary_div space_news_summary_div'><div class='news_div'><div class='news_first_part'><span class='decripition-type-div-mobile'>" + item.channelsDes + "</span><img src='" + item.bigLogoPath + "' class='news_image' width='100%' height='100%'></div><div class='news_second_part'><div class='news_content_div'><span class='decripition-type-div'>" + item.channelsDes + "</span><div id='tit' class='news_content_headline'><a href='detailed-news?data=" + item.data + "'>" + item.title + " </a></div><div class='news_content_headline news_content_summary'>" + item.description + "</div><div id='tit' class='news_content_headline news-link-font'><a href='" + item.link + "'>" + item.link + "</a></div><div class='news_content_headline news_content_footer'><span class='icon_news_logo' style= 'background:url(" + item.smallLogoPath + ");'></span><span class='icon_b_text'><span class='name-cap-index'>" + item.channelsName + "</span><span class='pubdate-index'>" + item.pubDate + "</span></span></div></div><div class='ratting_div'><i class='fa fa-star-o'></i></div><br><br><div class='ratting_div'><a href='detailed-news?data=" + item.data + "'><i class='far fa-comment-alt' aria-hidden='true'></i></a></div></div><div class='mobile_summary_news_div'><div class='news_second_part_m'><div class='news_content_div_m'><div class='news_content_headline'><a href='detailed-news?data=" + item.data + "'>" + item.title + "</a></div><div class='news_content_headline news_content_summary'>" + item.description + "</div><div id='tit' class='news_content_headline news-link-font'><a href='" + item.link + "'>" + item.link + "</a></div><div class='news_content_headline news_content_footer_m comm-rat'><div style='flex:1;'><span class='icon_news_logo' style= 'background:url(" + item.smallLogoPath + ");'></span><span class='icon_b_text'><span class='name-cap-index'>" + item.channelsName + "</span><span class='pubdate-index'>" + item.pubDate + "</span></span></div></div><div class='news_content_headline news_content_footer_m comm-rat'><div class='ratting-comm-div'><div class='ratting_div_m'><i class='fa fa-star-o'></i></div></div><div class='ratting-comm-div'><div class='ratting_div'><a href='detailed-news?data=" + item.data + "'><i class='far fa-comment-alt'></i></a></div></div></div></div></div></div></div></div>";
                        } else if (item.description === null) {
                            text = text + "<div class='news_summary_div space_news_summary_div'><div class='news_div'><div class='news_first_part'><span class='decripition-type-div-mobile'>" + item.channelsDes + "</span><img src='" + item.img + "' class='news_image' width='100%' height='100%'></div><div class='news_second_part'><div class='news_content_div'><span class='decripition-type-div'>" + item.channelsDes + "</span><div id='tit' class='news_content_headline'><a href='detailed-news?data=" + item.data + "'>" + item.title + " </a></div><div class='news_content_headline news_content_summary'>" + item.description + "</div><div id='tit' class='news_content_headline news-link-font'><a href='" + item.link + "'>" + item.link + "</a></div><div class='news_content_headline news_content_footer'><span class='icon_news_logo' style= 'background:url(" + item.smallLogoPath + ");'></span><span class='icon_b_text'><span class='name-cap-index'>" + item.channelsName + "</span><span class='pubdate-index'>" + item.pubDate + "</span></span></div></div><div class='ratting_div'><i class='fa fa-star-o'></i></div><br><br><div class='ratting_div'><a href='detailed-news?data=" + item.data + "'><i class='far fa-comment-alt' aria-hidden='true'></i></a></div></div><div class='mobile_summary_news_div'><div class='news_second_part_m'><div class='news_content_div_m'><div class='news_content_headline'><a href='detailed-news?data=" + item.data + "'>" + item.title + "</a></div><div class='news_content_headline news_content_summary'>" + item.description + "</div><div id='tit' class='news_content_headline news-link-font'><a href='" + item.link + "'>" + item.link + "</a></div><div class='news_content_headline news_content_footer_m comm-rat'><div style='flex:1;'><span class='icon_news_logo' style= 'background:url(" + item.smallLogoPath + ");'></span><span class='icon_b_text'><span class='name-cap-index'>" + item.channelsName + "</span><span class='pubdate-index'>" + item.pubDate + "</span></span></div></div><div class='news_content_headline news_content_footer_m comm-rat'><div class='ratting-comm-div'><div class='ratting_div_m'><i class='fa fa-star-o'></i></div></div><div class='ratting-comm-div'><div class='ratting_div'><a href='detailed-news?data=" + item.data + "'><i class='far fa-comment-alt'></i></a></div></div></div></div></div></div></div></div>";
                        } else {
                            text = text + "<div class='news_summary_div space_news_summary_div'><div class='news_div'><div class='news_first_part'><span class='decripition-type-div-mobile'>" + item.channelsDes + "</span><img src='" + item.img + "' class='news_image' width='100%' height='100%'></div><div class='news_second_part'><div class='news_content_div'><span class='decripition-type-div'>" + item.channelsDes + "</span><div id='tit' class='news_content_headline'><a href='detailed-news?data=" + item.data + "'>" + item.title + " </a></div><div class='news_content_headline news_content_summary'>" + item.description + "</div><div id='tit' class='news_content_headline news-link-font'><a href='" + item.link + "'>" + item.link + "</a></div><div class='news_content_headline news_content_footer'><span class='icon_news_logo' style= 'background:url(" + item.smallLogoPath + ");'></span><span class='icon_b_text'><span class='name-cap-index'>" + item.channelsName + "</span><span class='pubdate-index'>" + item.pubDate + "</span></span></div></div><div class='ratting_div'><i class='fa fa-star-o'></i></div><br><br><div class='ratting_div'><a href='detailed-news?data=" + item.data + "'><i class='far fa-comment-alt' aria-hidden='true'></i></a></div></div><div class='mobile_summary_news_div'><div class='news_second_part_m'><div class='news_content_div_m'><div class='news_content_headline'><a href='detailed-news?data=" + item.data + "'>" + item.title + "</a></div><div class='news_content_headline news_content_summary'>" + item.description + "</div><div id='tit' class='news_content_headline news-link-font'><a href='" + item.link + "'>" + item.link + "</a></div><div class='news_content_headline news_content_footer_m comm-rat'><div style='flex:1;'><span class='icon_news_logo' style= 'background:url(" + item.smallLogoPath + ");'></span><span class='icon_b_text'><span class='name-cap-index'>" + item.channelsName + "</span><span class='pubdate-index'>" + item.pubDate + "</span></span></div></div><div class='news_content_headline news_content_footer_m comm-rat'><div class='ratting-comm-div'><div class='ratting_div_m'><i class='fa fa-star-o'></i></div></div><div class='ratting-comm-div'><div class='ratting_div'><a href='detailed-news?data=" + item.data + "'><i class='far fa-comment-alt'></i></a></div></div></div></div></div></div></div></div>";
                        }
                    });
                    text = text + "</div>";
                    $(".news-detailed-news").append(text);
                }).fail(function () {
                    alert("Error In append text");
                });
            }



        </script>
    </body>
</html>