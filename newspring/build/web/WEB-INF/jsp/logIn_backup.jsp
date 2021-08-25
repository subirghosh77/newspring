<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="description" content="">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" sizes="200x200" href="images/icon.png">
        <link rel="icon" sizes="200x200" href="${pageContext.request.contextPath}/images/icon.png">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login_page.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/about.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sneha.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive_sneha.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login_responsive.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome-new.css">	
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
        <title>DailyNews - About</title>
        <style>
            * { Box-sizing: Border-box }
            .mycontainer{
                white-space: nowrap;
                overflow-x: visible;
                width: 204px;
            }
            .box{
                display: inline-block;
                border: 2px black solid;
                padding: 20px;
                width: 200px;
                height: 100px;
                vertical-align: top;
                background-color: pink;
            }
            .box2{
                background-color: yellow;
            }

        </style>
    </head>

    <body style="font-family: Montserrat;">
        <header>
            <%@include file="pages/header.jsp" %>
            <!--  menu  -->
            <%@include file="pages/menu.jsp" %>
        </header>



        <div class="mycontainer">

            <div class="innerLiner"><!-- new -->
                <span class="box">
                    This is box1
                    <input class="nextBtn" type="button" value="Next">
                </span>

                <span class="box box2">
                    This is box2
                    <input class="backBtn" type="button" value="Back">
                </span>
            </div><!-- new -->

        </div>

        <footer>
            <%@include file="pages/footer.jsp" %>
        </footer>	

    </body>
    <script src="${pageContext.request.contextPath}/js/jquery-min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-ui.js"></script>	
    <script src="${pageContext.request.contextPath}/js/main.js"></script>	
    <script type="text/javascript">

        $(document).ready(function () {

            $(".nextBtn").click(function (e) {
                goRight();
            });
            $(".backBtn").click(function (e) {
                goLeft();
            });


            function goRight() { // inner stuff slides left
                var initalLeftMargin = $(".innerLiner").css('margin-left').replace("px", "") * 1;
                var newLeftMargin = (initalLeftMargin - 202); // extra 2 for border
                $(".innerLiner").animate({marginLeft: newLeftMargin}, 500);
            }
            function goLeft() { // inner stuff slides right
                var initalLeftMargin = $(".innerLiner").css('margin-left').replace("px", "") * 1;
                var newLeftMargin = (initalLeftMargin + 202); // extra 2 for border
                $(".innerLiner").animate({marginLeft: newLeftMargin}, 500);
            }

        });
    </script>
</html>