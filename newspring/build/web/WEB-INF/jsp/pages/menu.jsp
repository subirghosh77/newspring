<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>


<div id="main_menu_div" class="main_nemu_div">
    <div id="menu_div" class="menu_slider">
        <div class="menu_main">
            <div class="menu_header">
                <span class="close">&times;</span> 			
            </div>
            <div class="menu_content scrollable">
                <div class="menu_content_div">
                    <!-- menu content start -->
                    <div class="content_menu space_menu">
                        <span class="span_content" onclick="drope_menu_l();">LANGUAGE</span>
                        <span id="down" class="arrow down" onclick="drope_menu_l();"></span>
                        <span id="up" class="arrow up" onclick="drope_menu_l();" style="display:none;"></span>
                        <div id="menu_language" class="menu_languages menu-div-new-width" style="display: none;">
                            <div class="lang lang-div-width space">
                                <span class="space_menu_content">ENGLISH</span>
                            </div>
                            <div class="lang lang-div-width space">
                                <span class="space_menu_content">HINDI</span>
                            </div>
                        </div>
                    </div>
                    <div class="content_menu space_menu">
                        <span class="span_content" onclick="drope_menu_c();">CATEGORIES</span>
                        <span id="down_c" class="arrow down" onclick="drope_menu_c();"></span>
                        <span id="up_c" class="arrow up" onclick="drope_menu_c();" style="display:none;"></span>
                        <div id="menu_categories" class="menu_languages menu-div-new-width" style="display: none;">
                            ${MAINMENUHTML}
                            <!--<div class="lang">
                                <span class="space_menu_content">POLITICS</span>
                            </div>
                            <div class="lang space">
                                <span class="space_menu_content">ENTERTAINMENT</span>
                            </div>
                            <div class="lang space">
                                <span class="space_menu_content">SPORTS</span>
                            </div>
                            <div class="lang space">
                                <span class="space_menu_content">IPL</span>
                            </div>-->
                        </div>
                    </div>

                    <div class="content_menu space_menu">
                        <a href="${pageContext.request.contextPath}/available-newspapers"><span class="span_content">NEWSPAPERS</span></a>
                        <!-- 					<span class="span_content" onclick="drope_menu_n();">NEWSPAPERS</span> -->
                        <!-- 					<span id="down_n" class="arrow down" onclick="drope_menu_n();"></span> -->
                        <!-- 					<span id="up_n" class="arrow up" onclick="drope_menu_n();" style="display:none;"></span> -->
                        <!-- 					<div id="menu_news" class="menu_languages" style="display: none;"> -->
                        <!-- 						<div class="lang"> -->
                        <!-- 							<span class="space_menu_content">POLITICS</span> -->
                        <!-- 						</div> -->
                        <!-- 						<div class="lang space"> -->
                        <!-- 							<span class="space_menu_content">ENTERTAINMENT</span> -->
                        <!-- 						</div> -->
                        <!-- 						<div class="lang space"> -->
                        <!-- 							<span class="space_menu_content">SPORTS</span> -->
                        <!-- 						</div> -->
                        <!-- 						<div class="lang space"> -->
                        <!-- 							<span class="space_menu_content">IPL</span> -->
                        <!-- 						</div> -->
                        <!-- 					</div> -->
                    </div>
                    <div class="content_menu space_menu">
                        <span class="span_content">TRAND</span>
                    </div>
                    <div class="content_menu space_menu">
                        <span class="span_content">TWITTER</span>
                    </div>
                    <div class="content_menu space_menu">
                        <a href="${pageContext.request.contextPath}/contact">
                            <span class="span_content">CONTACT US</span>
                        </a>
                    </div>
                    <div class="content_menu space_menu">
                        <a href="${pageContext.request.contextPath}/about"><span class="span_content">ABOUT US</span></a>
                    </div>
                    <div class="content_menu space_menu menu-footer-link">
                        <a href="javascript:void(0);">
                            <i class="fa fa-2x fa-twitter-square"></i>
                        </a>
                        <a href="javascript:void(0);">
                            <i class="fa fa-2x fa-facebook-square"></i>
                        </a>    
                       <a href="javascript:void(0);">
                           <i class="fa fa-2x fa-instagram"></i>
                       </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script>


</script>