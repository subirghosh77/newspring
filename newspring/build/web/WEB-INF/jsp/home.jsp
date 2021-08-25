<%-- 
    Document   : home
    Created on : 22 Dec, 2020, 3:41:30 PM
    Author     : DELL
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Daily News Home Demo</title>
    </head>
    <body>
        <%--        <h1>Hello World!</h1>
                <c:out value="${n1}"/>
                <ul>
                    <c:forEach items="${l1}" var="x">
                        <li><c:out value="${x}"/></li>
                        </c:forEach>
                </ul>--%>

        <button onclick="triggerAjaxCall();">Refresh</button>
        <input id="name"/>
        <input id="loc"/>
        <span id="imgContainer" style="display: none;"><img height="100" width="100" src="${pageContext.request.contextPath}/images/Preloader.gif" /></span>
        <div id="showNews"></div>
        <script typë="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.5.1-min.js"></script>
        <script>
            $(document).ready(function () {
                alert("Page loaded.");

            });
            $(document).ajaxComplete(function (event, request, settings) {
                //alert( "<li>Request Complete.</li>" );
                $('#imgContainer').hide();

            });

            function triggerAjaxCall() {
                alert("1");
                $.ajax({
                    method: "POST",
                    url: "democall",
                    async: true,
                    //contentType: "application/json",
                    dataType: "json",
                    beforeSend: function () {
                        $('#imgContainer').show();
//                        setTimeout(7000);
                    },
                    data: {name: $('#name').val(), location: $('#loc').val()}
                }).done(function (items) {
                    var text = "<ul>";
                    //var items = JSON.stringify(msg);
                    $.each(items, function (index, item) {
                        text = text + "<li>" + item.title + "&nbsp;&nbsp;&nbsp;" + item.pubDate + "&nbsp;&nbsp;&nbsp;Link:<a href='" + item.link + "'>Goto</a></li>";
                    });
                    text = text + "</ul>";
                    $('#showNews').html(text)
                }).fail(function (error) {
                    alert("Failed: " + error);
                });

            }
        </script>
    </body>
</html>
