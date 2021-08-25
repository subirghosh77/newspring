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
        <title>Newspring - Available News Paper</title>
    </head>
    <body>
        <header>
            <%@include file="pages/header.jsp" %>
            <!--  menu  -->
            <%@include file="pages/menu.jsp" %>
        </header>


        <div id="content_body" class="content_body"  style="height: fit-content;">
            <div class="content">
                <div id="content_div" class="content_div">

                    <!-- recent news and all start -->
                    <%@include file="pages/leftDiv.jsp" %>
                    <!-- recent news and all end -->

                    <!-- main news content start -->
                    <div id="secondDiv" class="second_div" style="border-bottom-right-radius: 0;border-bottom-left-radius: 0;margin-bottom: 10px;">
                        <div id="showNews" class="main_contener_div" style="height:fit-content;">
                            <div class="title space_div_first news_heading">
                                <i class="fa fa-newspaper-o i_space"></i>NEWS PAPERS
                                <!--<button id="index-r" onclick="triggerAjaxCallAvail();">Refresh</button>-->
                                <!--                                <button id="index-r">Refresh</button>-->
                            </div>
                        </div>
                    </div>
                    <div id="secondDiv" class="second_div showNews">   
                        <div class="top_page_changer">
                            <a href="${pageContext.request.contextPath}/index">News</a> / Available News Papers <span id="avil-count"></span>
                        </div>

                        <!-- loader start -->
                        <div class="showbox-avail-newspaper" style="display: none">
                            <div class="loader-index">
                                <svg class="circular" viewBox="25 25 50 50">
                                <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="5" stroke-miterlimit="10"/>
                                </svg>
                            </div>
                        </div>
                        <!-- loader end -->

                        <div id="show-data" style="width: 100%;height: fit-content;margin: 10px 0 0 0;"> 
                            <div class="ul-avail">
                                <!--<div class="avail-np-icons-div-main">
                                    <a href="newspaper">
                                        <div class="avail-np-icons-div">
                                            <img src="images/channel_logo/ht.png" width="100%" height="100%">
                                        </div>
                                    </a>
                                    <div class="avail-np-icons-name">
                                        <p class="np-p a-p">Hindustan Times</p>
                                    </div>
                                </div>-->
                            </div>
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
                triggerAjaxCallAvail();
            });

            $(document).ajaxComplete(function (event, request, settings) {
                //alert( "<li>Request Complete.</li>" );
                $(".showbox-avail-newspaper").remove();
            });

            function triggerAjaxCallAvail() {
                console.log("Inside Ajax Refresh Avail");
                $.ajax({
                    method: "POST",
                    url: "ajaxcall-availnewspapers",
                    async: true,
                    //contentType: "application/json",
                    dataType: "json",
                    beforeSend: function () {
                        $(".showbox-avail-newspaper").css("display", "block");
                    },
                    //data: {name: $('#name').val(), location: $('#loc').val()} 
                }).done(function (items) {
                    document.getElementById("avil-count").innerHTML = "( " + items.length + " )";
                    var text = "<div class='ul-avail'>";
                    $.each(items, function (index, item) {
                        text = text + "<div class='avail-np-icons-div-main'><a href='newspaper?data="+item.data+"'><div class='avail-np-icons-div'><img src='" + item.blogopath + "' width='100%' height='100%'></div></a><div class='avail-np-icons-name'><p class='np-p a-p'>" + item.name + "</p></div></div>";
                    });
                    text = text + "</div>";
                    $("#show-data").append(text);
                }).fail(function () {
                    alert("Error In Ajax Avail News Paper");
                });
            }
        </script>
    </body>
</html>
