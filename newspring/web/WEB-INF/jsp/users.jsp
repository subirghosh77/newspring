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
        <title>Newspring - Users</title>
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
                                <i class="fa fa-user-circle-o i_space"></i>USERS
                                <!--<button id="index-r" onclick="triggerAjaxCall();">Refresh</button>-->
                                <button id="newspaper-r">Refresh</button>
                            </div>
                        </div>
                    </div>
                    <div id="secondDiv" class="second_div showNews">
                        <div class="top_page_changer">
                            <a href="${pageContext.request.contextPath}/index">News</a> / User / Arnab Seal
                        </div>
                        <div class="news-paper-div">
                            <div class="news-paper-main">
                                <img src="${pageContext.request.contextPath}/images/team-member/arnab.png" width="100%" height="100%">
                            </div>
                            <div class="news-paper-main news-paper-main-s">
                                <p class="np-p">Arnab Seal</p>
                            </div>
                        </div>
                        <div class="newspaper-header">
                            <div class="newspaper-header-div">
                                <a href="javascript:void(0);" id="users-1">
                                    <span class="newspaper-header-div-p active">
                                        <i class="fa fa-home"></i>&nbsp; Home
                                    </span>
                                </a>
                                <a href="javascript:void(0);" id="users-2">
                                    <span class="newspaper-header-div-p">
                                        <i class="fa fa-star users-f-s"></i>&nbsp; Favorite                                    
                                    </span>
                                </a>
                                <a href="javascript:void(0);" id="users-3">
                                    <span class="newspaper-header-div-p">
                                        <i class="far fa-comment-alt"></i>
                                        &nbsp; Comments
                                    </span> 
                                </a>
                            </div>
                        </div>  

                        <div class="showbox-newspaper" style="display: none;">
                            <div class="loader-newspaper">
                                <svg class="circular" viewBox="25 25 50 50">
                                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="5" stroke-miterlimit="10"/>
                                </svg>
                            </div>
                        </div>
                        <%@include file="pages/newsContent.jsp" %>
                        <%@include file="pages/newsContent.jsp" %>
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
                            [See More ...]
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

        </script>
    </body>
</html>