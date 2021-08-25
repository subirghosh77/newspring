<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@include file="loginPage.jsp" %>


<div class="goto_top_button">
    <i id="top" class="fa fa-angle-double-up top_img"></i>		
</div>	

<div id="header" class="header">

    <div class="logo">
        <a href="${pageContext.request.contextPath}/index">
            <img class="logo-img" src="${pageContext.request.contextPath}/images/logo.svg">
        </a>
    </div>
    <svg id="menu" class="menu" viewBox="0 0 24 24" onclick="menu();">				
    <path fill="currentColor" d="M12 7a2 2 0 1 0-.001-4.001A2 2 0 0 0 12 7zm0 2a2 2 0 1 0-.001 3.999A2 2 0 0 0 12 9zm0 6a2 2 0 1 0-.001 3.999A2 2 0 0 0 12 15z"></path>
    </svg>
    <div class="language-div">
        <div id="logIn" class="language space_normal">LOG IN</div>
        <div id="login_img" class="language logo_margin" style="margin: 0 !important;">
            <i class="fa fa-user-circle-o logo_img_login"></i>
        </div>
        <div id="lang" class="language" onclick="language_select_in();" onmouseleave="language_select_out();">LANGUAGE	
            <span id="down_l" class="arrow_normal down" onclick="language_select_in();"></span>
            <span id="up_l" class="arrow_normal up" onclick="language_select_in();" style="display:none;"></span>
            <!-- Language Select -->					
            <div id="langSelect" class="language_select" style="width: fit-content;">
                <div class="language_select_div">
                    <div class="lang lang-div-width space">
                        <span id="l1" >ENGLISH</span>
                    </div>
                    <div class="lang lang-div-width space">
                        <span id="l2" >HINDI</span>
                    </div>						
                </div>					
            </div>				
        </div>	
        <div id="cat" class="language" onclick="categories_select_in();" onmouseleave="categories_select_out();">CATEGORIES
            <span id="down_normal" class="arrow_normal down" onclick="drope_menu_c();"></span>
            <span id="up_normal" class="arrow_normal up" onclick="drope_menu_c();" style="display:none;"></span>
            <!-- Categories Select -->					
            <div id="CatSelect" class="cat_select">
                <div class="language_select_div">
                    ${MAINMENUHTML}
                    <!--<div class="lang space">
                        <span>POLITICS</span>
                    </div>-->
                </div>					
            </div>			
        </div>
        <div id="serachBar"class="language">
            <!-- search bar -->
            <div class="img_div">                
                <!-- 				<img src="images/search.png" alt="search" class="search_img" /> -->
                <i  id="img_search" class="fa fa-search search_img" onclick="search_in();"></i>
            </div>
            <div class="search_div">
                <input id="search_bar" type="text" placeholder="Search" arial-label="Search" class="search_input" style="display:none;"/>
            </div>
        </div>

    </div>
</div>
<!-- <script src="js/jquery.js"></script> -->
<script src="${pageContext.request.contextPath}/js/jquery-min.js"></script>
<!--<script src="${pageContext.request.contextPath}/js/jquery-3.5.1-min.js"></script>-->
<script src="${pageContext.request.contextPath}/js/jquery-ui.js"></script>	
<script src="${pageContext.request.contextPath}/js/main.js"></script>	
<script type="text/javascript">
//    function getNewsWithTypeFromCategories(type) {
//        alert(type.split("+").join(" "));
////        triggerAjaxCallForCat(type);
//    }
//    
    


</script>
