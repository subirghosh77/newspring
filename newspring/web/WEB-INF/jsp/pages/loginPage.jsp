

<div id="main_login" class="main_div_login" style="display:none;">	

    <%@include file="signIn.jsp" %>
    <%@include file="forgotPassword.jsp" %>

    <div id="log_in_div" class="div_login">

        <!-- header -->

        <div class="menu_header menu_header_login">
            <span class="login-text">Log In</span>
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
                            <span class="show_password"><i id="log_s_p" class="fa fa-eye-slash"></i></span>
                            <input id="log_p" type="password" name="password" autocomplete="off" required>
                            <label for="password" class="label-name">
                                <span class="content-name">Password
                                    <span class="star_required"></span>
                                </span>
                            </label>
                            <span class="forgot_password_span" style="float: left">
                                <input type="checkbox" class="check_box"><span id="r-check" class="remember_me_span">Remember Me</span>
                            </span>
                            <span id="forgot_password" class="forgot_password_span">Forgot Password ?</span>
                        </div>
                        <div class="click_log_in">
                            <input type="submit" value="Log In">
                        </div>
                    </div>   	
                </div> 

                <!-- footer start -->

                <div class="container-login container-login-b"> 
                    <div class="form" style="height: 160px;">
                        <span class="text_login">
                            <p class="text">Or</p>
                            <p class="text">Login With</p>
                        </span>
                        <%@include file="loginFooter.jsp" %>
                        <div class="log_in_web creat_account_div" style="padding:0">
                            <div class="creat_account_text">Don't have an Account?
                                <span id="sign_in">Create Account</span>
                            </div>
                        </div>
                    </div>   	
                </div> 

                <!-- footer end -->

            </div>
        </form>
    </div>
</div>
