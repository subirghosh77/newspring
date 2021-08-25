<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<div id="f1" class="first_div">
    <div class="main_contener_div">
        <!-- recent news -->
        <div class="title" style="display:none">
            <i class="fa fa-globe i_space"></i>RECENT NEWS
        </div>
        <div class="title refresh_i" style="display:none">
            <a href="javascript:void(0);"><i id="recent-news" class="fa fa-refresh"></i></a>
        </div>

        <div id="scroll-h" class="div_first scrollable" style="display:none">
            <%@include file="loader.jsp" %>
            <!-- <div class="refresh"><img src="images/refresh.png" class="refresh_img"></div> -->    
            <div class="recent_news_new">
                <div class="recent_news space_recent_news not_space_recent_news">
                    <div class="recent_news_div">
                        <a href="detailed-news">Lorem Ipsum is simply dummy text
                            of the printing and typesetting industry.</a>
                    </div>
                    <span class="space-b-recent"></span>
                    <div class="recent_news_div">
                        <div class="recent-img-div">
                            <img src="images/channel_logo/dna_s.png" width="100%" height="100%">
                        </div>
                        <div class="recent-img-div width-recent-name space-width-recent-name">
                            <span class="span-name-recent-news recent-news-time">3m ago</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- brands logo -->
        <div class="title space_div_first">
            <i class="fa fa-newspaper-o i_space"></i><a href="${pageContext.request.contextPath}/available-newspapers">NEWS PAPERS</a>
        </div>        
        <div id="newsLogo" class="div_first scrollable" style="padding: 0;">
            <div class="preloader-for-lent-news-logo" style="display: none">
                <div class="loader">
                    <svg class="circular" viewBox="25 25 50 50">
                    <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="5" stroke-miterlimit="10"/>
                    </svg>
                </div>
            </div>
            <!--   <div class="news_praper_logo_div">
                   <a href="newspaper">
                       <div class="news_praper_logo">
                           <img src="images/channel_logo/et.png" class="image_np">
                       </div>
                   </a>
               </div>      -->      
        </div>
        <!-- trand -->
        <div class="title space_div_first" style="display:none">
            <i class="fa fa-line-chart i_space"></i>TREND
        </div>
        <div class="title space_div_first refresh_i" style="display:none">
            <i class="fa fa-refresh"></i>
        </div>
        <div class="div_first" style="display:none">
            <!-- <div class="refresh"><img src="images/refresh.png" class="refresh_img"></div> -->
        </div>
        <!-- tweeter -->
        <div class="title space_div_first" style="display:none">
            <i class="fa fa-twitter-square i_space"></i>TWITTER
        </div>
        <div class="title space_div_first refresh_i" style="display:none">
            <i class="fa fa-refresh"></i>
        </div>
        <div class="div_first" style="display:none">
            <!-- <div class="refresh"><img src="images/refresh.png" class="refresh_img"></div> -->
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/js/jquery-min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-ui.js"></script>	
<script src="${pageContext.request.contextPath}/js/main.js"></script>                   
<script type="text/javascript">
    $(document).ready(function () {
        if (window.matchMedia("(min-width: 1300px)").matches) {
            console.log("Page loaded. triggerAjaxLogoCall");
            triggerAjaxLogoCall();
        }
    });

    function triggerAjaxLogoCall() {
        console.log("Inside Ajax Refresh");
        $.ajax({
            method: "POST",
            url: "ajaxcall-newspaperslogo",
            async: true,
            //contentType: "application/json",
            dataType: "json",
            beforeSend: function () {
                $(".preloader-for-lent-news-logo").css("display", "block");
            },
            success: function (data) {
                $(".preloader-for-lent-news-logo").remove();
            }
            //data: {name: $('#name').val(), location: $('#loc').val()} 
        }).done(function (items) {
//            console.log(items);
            var text = "<div class='news_praper_logo_div'>";
            $.each(items, function (index, item) {
                text = text + "<a href=newspaper?data=" + item.data + "><div class='news_praper_logo'><img src=" + item.blogopath + " class='image_np'></div></a>"
            });
            text = text + "</div>";
            $("#newsLogo").append(text);
        }).fail(function () {
            alert("Error In append text in logo");
        });
    }
</script>                        