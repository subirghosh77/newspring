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
        <title>Newspring - About Us</title>
    </head>

    <body style="font-family: Montserrat;">
        <header>
            <%@include file="pages/header.jsp" %>
            <!--  menu  -->
            <%@include file="pages/menu.jsp" %>
        </header>

        <div class="div">
            <div class="about_imag_big_div h1-img">
                <div id="ai1" class="about_small_div">
                    <div class="ab_text">
                        <svg id="about" width="723" height="170" viewBox="0 0 723 170" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M76.35 87.75H30.75L22.35 111H7.94995L45.75 7.05001H61.5L99.15 111H84.75L76.35 87.75ZM72.45 76.65L53.55 23.85L34.65 76.65H72.45Z" stroke="white" stroke-width="5" mask="url(#path-1-outside-1)"/>
                        <path d="M167.974 57.15C171.774 57.75 175.224 59.3 178.324 61.8C181.524 64.3 184.024 67.4 185.824 71.1C187.724 74.8 188.674 78.75 188.674 82.95C188.674 88.25 187.324 93.05 184.624 97.35C181.924 101.55 177.974 104.9 172.774 107.4C167.674 109.8 161.624 111 154.624 111H115.624V6.45001H153.124C160.224 6.45001 166.274 7.65001 171.274 10.05C176.274 12.35 180.024 15.5 182.524 19.5C185.024 23.5 186.274 28 186.274 33C186.274 39.2 184.574 44.35 181.174 48.45C177.874 52.45 173.474 55.35 167.974 57.15ZM129.274 51.6H152.224C158.624 51.6 163.574 50.1 167.074 47.1C170.574 44.1 172.324 39.95 172.324 34.65C172.324 29.35 170.574 25.2 167.074 22.2C163.574 19.2 158.524 17.7 151.924 17.7H129.274V51.6ZM153.424 99.75C160.224 99.75 165.524 98.15 169.324 94.95C173.124 91.75 175.024 87.3 175.024 81.6C175.024 75.8 173.024 71.25 169.024 67.95C165.024 64.55 159.674 62.85 152.974 62.85H129.274V99.75H153.424Z" stroke="white" stroke-width="5" mask="url(#path-1-outside-1)"/>
                        <path d="M255.016 112.05C245.316 112.05 236.466 109.8 228.466 105.3C220.466 100.7 214.116 94.35 209.416 86.25C204.816 78.05 202.516 68.85 202.516 58.65C202.516 48.45 204.816 39.3 209.416 31.2C214.116 23 220.466 16.65 228.466 12.15C236.466 7.55 245.316 5.25 255.016 5.25C264.816 5.25 273.716 7.55 281.716 12.15C289.716 16.65 296.016 22.95 300.616 31.05C305.216 39.15 307.516 48.35 307.516 58.65C307.516 68.95 305.216 78.15 300.616 86.25C296.016 94.35 289.716 100.7 281.716 105.3C273.716 109.8 264.816 112.05 255.016 112.05ZM255.016 100.2C262.316 100.2 268.866 98.5 274.666 95.1C280.566 91.7 285.166 86.85 288.466 80.55C291.866 74.25 293.566 66.95 293.566 58.65C293.566 50.25 291.866 42.95 288.466 36.75C285.166 30.45 280.616 25.6 274.816 22.2C269.016 18.8 262.416 17.1 255.016 17.1C247.616 17.1 241.016 18.8 235.216 22.2C229.416 25.6 224.816 30.45 221.416 36.75C218.116 42.95 216.466 50.25 216.466 58.65C216.466 66.95 218.116 74.25 221.416 80.55C224.816 86.85 229.416 91.7 235.216 95.1C241.116 98.5 247.716 100.2 255.016 100.2Z" stroke="white" stroke-width="5" mask="url(#path-1-outside-1)"/>
                        <path d="M338.886 6.45001V72.6C338.886 81.9 341.136 88.8 345.636 93.3C350.236 97.8 356.586 100.05 364.686 100.05C372.686 100.05 378.936 97.8 383.436 93.3C388.036 88.8 390.336 81.9 390.336 72.6V6.45001H403.986V72.45C403.986 81.15 402.236 88.5 398.736 94.5C395.236 100.4 390.486 104.8 384.486 107.7C378.586 110.6 371.936 112.05 364.536 112.05C357.136 112.05 350.436 110.6 344.436 107.7C338.536 104.8 333.836 100.4 330.336 94.5C326.936 88.5 325.236 81.15 325.236 72.45V6.45001H338.886Z" stroke="white" stroke-width="5" mask="url(#path-1-outside-1)"/>
                        <path d="M491.107 6.45001V17.55H462.607V111H448.957V17.55H420.307V6.45001H491.107Z" stroke="white" stroke-width="5" mask="url(#path-1-outside-1)"/>
                        <path d="M561.25 6.45001V72.6C561.25 81.9 563.5 88.8 568 93.3C572.6 97.8 578.95 100.05 587.05 100.05C595.05 100.05 601.3 97.8 605.8 93.3C610.4 88.8 612.7 81.9 612.7 72.6V6.45001H626.35V72.45C626.35 81.15 624.6 88.5 621.1 94.5C617.6 100.4 612.85 104.8 606.85 107.7C600.95 110.6 594.3 112.05 586.9 112.05C579.5 112.05 572.8 110.6 566.8 107.7C560.9 104.8 556.2 100.4 552.7 94.5C549.3 88.5 547.6 81.15 547.6 72.45V6.45001H561.25Z" stroke="white" stroke-width="5" mask="url(#path-1-outside-1)"/>
                        <path d="M682.27 112.05C675.37 112.05 669.17 110.85 663.67 108.45C658.27 105.95 654.02 102.55 650.92 98.25C647.82 93.85 646.22 88.8 646.12 83.1H660.67C661.17 88 663.17 92.15 666.67 95.55C670.27 98.85 675.47 100.5 682.27 100.5C688.77 100.5 693.87 98.9 697.57 95.7C701.37 92.4 703.27 88.2 703.27 83.1C703.27 79.1 702.17 75.85 699.97 73.35C697.77 70.85 695.02 68.95 691.72 67.65C688.42 66.35 683.97 64.95 678.37 63.45C671.47 61.65 665.92 59.85 661.72 58.05C657.62 56.25 654.07 53.45 651.07 49.65C648.17 45.75 646.72 40.55 646.72 34.05C646.72 28.35 648.17 23.3 651.07 18.9C653.97 14.5 658.02 11.1 663.22 8.7C668.52 6.30001 674.57 5.10001 681.37 5.10001C691.17 5.10001 699.17 7.55001 705.37 12.45C711.67 17.35 715.22 23.85 716.02 31.95H701.02C700.52 27.95 698.42 24.45 694.72 21.45C691.02 18.35 686.12 16.8 680.02 16.8C674.32 16.8 669.67 18.3 666.07 21.3C662.47 24.2 660.67 28.3 660.67 33.6C660.67 37.4 661.72 40.5 663.82 42.9C666.02 45.3 668.67 47.15 671.77 48.45C674.97 49.65 679.42 51.05 685.12 52.65C692.02 54.55 697.57 56.45 701.77 58.35C705.97 60.15 709.57 63 712.57 66.9C715.57 70.7 717.07 75.9 717.07 82.5C717.07 87.6 715.72 92.4 713.02 96.9C710.32 101.4 706.32 105.05 701.02 107.85C695.72 110.65 689.47 112.05 682.27 112.05Z" stroke="white" stroke-width="5" mask="url(#path-1-outside-1)"/>
                        <path d="M 0 127 L 721 127" stroke="white" stroke-width="5" mask="url(#path-1-outside-1)"></path>
                        </svg>
                    </div>
                </div>
            </div>
        </div>

        <div id="content_body_about" class="content_body_about" style="height:980px;padding: 0;">
            <div class="content">
                <div id="content_div_about" class="content_div_about">

                    <!-- 		main news content start -->

                    <div id="secondDiv_about" class="second_div about_div">			
                        <div class="main_contener_div about_text">
                            <div class="news_summary_div about_text_div" style="box-shadow:none;">
                                <div class="top_page_changer">
                                    <a href="${pageContext.request.contextPath}/index">News</a> / About Us
                                </div>
                                <div class="title space_div_first news_heading margin_text">
                                    <i class="fa fa-info-circle i_space"></i>ABOUT
                                </div>
                                <div  class="ab_text_i box2">	
                                    <div  class="ab_text_i box2">								
                                        <!-- 								<div class="news_summary_div about_image_background ">				 -->
                                        <!-- 									<img src="images/career.jpeg" alt="about_B" height="100%" width="100%">				 -->
                                        <!-- 								</div> -->
                                        <div class="about_imag_big_div text_about_image_big_div" style="margin: 10px;">
                                            <div class="about_small_div mini_div_about s1">
                                                <div class="tex_padding">
                                                    <div class="about_text_span">					
                                                        <div class="about_text_span_p">
                                                            <span class="about-topics">Who We Are</span><br>                                                            
                                                            We are a team of seasoned and daring, young journalists of diverse nationalities. 
                                                            We deliver information that is not biased. We are journalists who are neutral to the core and non-partisan when it comes to the politics of the world. People are tired of biased reportage and we stand for a globalised united world. So for us the World is truly One.
                                                            Through news, views, analyses and interactivity, 'NewSpring' provides readers with a composite 
                                                            unbiased picture of the city, the country and the world around them.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="about_small_div mini_div_about h1"></div>
                                            <div class="about_small_div mini_div_about h2"></div>
                                            <div class="about_small_div mini_div_about s2">
                                                <div class="tex_padding">
                                                    <div class="about_text_span">					
                                                        <div class="about_text_span_p">
                                                            <span class="about-topics">Our Technology</span><br>
                                                            Our unique machine learning and deep learning technology enables smart curation of 
                                                            content and tracks user preferences to deliver real-time, personalised 
                                                            content and notifications. Our app is available on Android & iOS platforms and it is 
                                                            available on mobile web as well.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>							
                                    </div>
                                </div>		
                            </div>
                        </div>					
                    </div>				
                </div>			
            </div>
        </div>

        <footer>
            <%@include file="pages/footer.jsp" %>
        </footer>	

    </body>
    <script src="${pageContext.request.contextPath}/js/jquery-min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-ui.js"></script>	
    <script src="${pageContext.request.contextPath}/js/main.js"></script>	
    <script type="text/javascript">


    </script>
</html>