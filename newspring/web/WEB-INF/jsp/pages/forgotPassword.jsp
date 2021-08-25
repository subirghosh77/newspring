

<div id="forgotpassword_div" class="div_login" style="display:none;">

    <!-- header -->

    <div class="menu_header menu_header_login">
        <span class="login-text">Forgot Password</span>
        <span class="close close_login">&times;</span>
    </div>

    <form method="post">
        <div class="scrollable" style="border:1px solid red;">	
            <div class="container-login"> 
                <div class="form">
                    <div class="name-div">
                        <input type="email" name="email" autocomplete="off" required>
                        <label for="email" class="label-name">
                            <span class="content-name">Email
                                <span class="star_required"></span>
                            </span>
                        </label>
                    </div>
                    <div class="name-div">
                        <span class="show_password"><i id="for_s_p" class="fa fa-eye-slash"></i></span>
                        <input id="for_p" type="password" name="password" autocomplete="off" required>
                        <label for="password" class="label-name">
                            <span class="content-name">Password
                                <span class="star_required"></span>
                            </span>
                        </label>
                    </div>
                    <div class="name-div">
                        <span class="show_password"><i id="for_con_s_p" class="fa fa-eye-slash"></i></span>
                        <input id="for_con_p" type="password" name="con-password" autocomplete="off" required>
                        <label for="con-password" class="label-name">
                            <span class="content-name">Confirm Password
                                <span class="star_required"></span>
                            </span>
                        </label>
                        <span class="forgot_password_span" style="	float: left">
                            <input type="checkbox" class="check_box"><span id="r-check" class="remember_me_span">Remember Me</span>
                        </span>
                    </div>
                    <div class="click_log_in">
                        <input type="submit">

                    </div>
                </div>   	
            </div> 

            <!-- footer start -->
            <div class="container-login container-login-b"> 
                <div class="form" style="height:160px;padding-bottom: 10px;">
                    <span class="text_login">
                        <p class="text">Or</p>
                        <p class="text">Login With</p>
                    </span>
                    <%@include file="loginFooter.jsp" %>
                    <div class="log_in_web creat_account_div">
                        <div class="creat_account_text">Already have Account ?
                            <span id="log_in_f">Log In</span>							
                        </div>
                    </div>
                </div>   	
            </div> 

            <!-- footer end -->
        </div>	
    </form>
</div>




