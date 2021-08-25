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
        <title>Newspring - Heading</title>
    </head>
    <body>
        <header>
            <%@include file="pages/header.jsp" %>
            <!--  menu  -->
            <%@include file="pages/menu.jsp" %>
        </header>


        <div id="content_body" class="content_body"  style="">
            <div class="content">
                <div id="content_div" class="content_div">

                    <!-- recent news and all start -->
                    <%@include file="pages/leftDiv.jsp" %>
                    <!-- recent news and all end -->

                    <!-- main news content start -->
                    <div id="secondDiv" class="second_div div-m-space">
                        <div id="showNews" class="main_contener_div" style="height:fit-content;">
                            <div class="title space_div_first news_heading">
                                <i class="fa fa-newspaper-o i_space"></i>NEWS
                                <button id="index-r" onclick="triggerAjaxCall();">Refresh</button>
                                <!--                                <button id="index-r">Refresh</button>-->
                            </div>
                        </div>

                        <!-- loader start -->
                        <div class="showbox-index" style="display: none">
                            <div class="loader-index">
                                <svg class="circular" viewBox="25 25 50 50">
                                    <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="5" stroke-miterlimit="10"/>
                                </svg>
                            </div>
                        </div>
                        <!-- loader end -->

                    </div>
                    <div id="secondDiv" class="second_div showNews">                        
                        <!--<div class="ajax-error" style="display : none"><i class="fa fa-exclamation-triangle"></i>&nbsp;Please Check Your Internet Connection !!</div>-->

                        <%--<%@include file="pages/newsContent.jsp" %>--%>
                        <%--<%@include file="pages/newsContent.jsp" %>--%>


                    </div>
                    <div id="secondDiv" class="second_div see-more-div-main" style="margin-top: 15px;">        
                        <!-- loader start -->
                        <div class="showbox-newspaper showbox-seemore" style="display: none">
                            <div class="loader-index">
                                <svg class="circular" viewBox="25 25 50 50">
                                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="5" stroke-miterlimit="10"/>
                                </svg>
                            </div>
                        </div>
                        <!-- loader end -->
                        <div id="index-sm" class="see-more-div">
                            <a href="javascript:void(0);" onclick="triggerAjaxCall();" >[See More ...]</a>
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
            $(document).ready(function () {
                console.log("Page loaded.");
                triggerAjaxCall();
            });
            $(document).ajaxComplete(function (event, request, settings) {
                //alert( "<li>Request Complete.</li>" );
                $(".showbox-index").remove();
                $(".showbox-seemore").css("display", "none");
            });
            function triggerAjaxCall() {
                console.log("Inside Ajax Refresh");
                $.ajax({
                    method: "POST",
                    url: "ajaxcall-index",
                    async: true,
                    //contentType: "application/json",
                    dataType: "json",
                    beforeSend: function () {
                        $(".showbox-index").css("display", "block");
                        $(".showbox-index.showbox-seemore").css("display", "block");                       
                    }
                    //data: {name: $('#name').val(), location: $('#loc').val()} 
                }).done(function (items) {
//                    console.log(items);
                    var text = "<div class='main_contener_div'style='height:fit-content;'>";
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
                    $(".second_div.showNews").append(text);
                }).fail(function () {
                    alert("Error In append text");
                });
            }
        </script>
    </body>
</html>