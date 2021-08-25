
//$("img").mousedown(function(){
//	return false;
//});
//$("a").mousedown(function(){
//	return false;
//});


// menu

function menu() {
    var x = document.getElementById("menu_div");
// 	var y = document.getElementById("header");		

    if (window.matchMedia("(min-width: 768px) and (max-width: 991px)").matches && x.style.display !== "none") { //	(min-width: 768px) and (max-width: 991px)
        x.style.display = "-webkit-inline-box";
        $("#main_menu_div").addClass("main_nemu_div");
        $("#main_menu_div").css("display", "block");
        $("body").css("overflow-y", "hidden");
        $("#menu_div").animate({width: "60%"});
//		$("#main_menu_div").css("height","calc(100% + 50px)");
    }
    if (window.matchMedia("(min-width: 768px) and (max-width: 991px)").matches && x.style.display === "none") { //	(min-width: 768px) and (max-width: 991px)
        x.style.display = "-webkit-inline-box";
        $("#main_menu_div").addClass("main_nemu_div");
        $("#main_menu_div").css("display", "block");
        $("#menu_div").animate({width: "60%"});
        $("body").css("overflow-y", "hidden");
//		$("#main_menu_div").css("height","calc(100% + 50px)");
    }
    if (window.matchMedia("(max-width: 767px)").matches && x.style.display !== "none") { //	(max-width: 767px)
        x.style.display = "-webkit-inline-box";
        $("#main_menu_div").addClass("main_nemu_div");
        $("#main_menu_div").css("display", "block");
        $("body").css("overflow-y", "hidden");
        $("#menu_div").animate({width: "70%"});
//		$("#main_menu_div").css("height","calc(100% + 50px)");
    }
    if (window.matchMedia("(max-width: 767px)").matches && x.style.display === "none") { //	(max-width: 767px)
        x.style.display = "-webkit-inline-box";
        $("#main_menu_div").addClass("main_nemu_div");
        $("#main_menu_div").css("display", "block");
        $("#menu_div").animate({width: "70%"});
        $("body").css("overflow-y", "hidden");
//		$("#main_menu_div").css("height","calc(100% + 50px)");
    }
    if (window.matchMedia("(max-width: 540px)").matches && x.style.display !== "none") { //	(max-width: 540px)
        x.style.display = "-webkit-inline-box";
        $("#main_menu_div").addClass("main_nemu_div");
        $("#main_menu_div").css("display", "block");
        $("body").css("overflow-y", "hidden");
        $("#menu_div").animate({width: "80%"});
//		$("#main_menu_div").css("height","calc(100% + 50px)");
    }
    if (window.matchMedia("(max-width: 540px)").matches && x.style.display === "none") { //	(max-width: 540px)
        x.style.display = "-webkit-inline-box";
        $("#main_menu_div").addClass("main_nemu_div");
        $("#menu_div").animate({width: "80%"});
        $("#main_menu_div").css("display", "block");
        $("body").css("overflow-y", "hidden");
//		$("#main_menu_div").css("height","calc(100% + 50px)");
    }
    if (window.matchMedia("(min-width:250px) and (max-width: 320px)").matches && x.style.display !== "none") { // 	(max-width: 320px)
        x.style.display = "-webkit-inline-box";
        $("#main_menu_div").addClass("main_nemu_div");
        $("#main_menu_div").css("display", "block");
        $("body").css("overflow-y", "hidden");
        $("#menu_div").animate({width: "90%"});
//		$("#main_menu_div").css("height","calc(100% + 50px)");
    }
    if (window.matchMedia("(min-width:250px) and (max-width: 320px)").matches && x.style.display === "none") { // 	(max-width: 320px)
        x.style.display = "-webkit-inline-box";
        $("#main_menu_div").addClass("main_nemu_div");
        $("#main_menu_div").css("display", "block");
        $("#menu_div").animate({width: "90%"});
        $("body").css("overflow-y", "hidden");
//		$("#main_menu_div").css("height","calc(100% + 50px)");
    }
}

var closebtns = document.getElementsByClassName("close");
var x = document.getElementById("menu_div");
for (var i = 0; i < closebtns.length; i++) {
    closebtns[i].addEventListener("click", function () {
        $("#menu_div").hide("slide", {direction: "right"}, 400).animate({width: "0%"});
        $("#main_menu_div").removeClass("main_nemu_div");
        $("#main_login").css("display", "none");
        $("body").css("overflow-y", "auto");
        $("body").css("overflow-x", "hidden");
//		$("#main_menu_div").css("height","0px");
        if ($("#menu_language").css("display", "inline-block")) {
            $("#up").css("display", "none");
            $("#down").css("display", "inline-block");
            $("#menu_language").css("display", "none");
        }
        if ($("#menu_categories").css("display", "inline-block")) {
            $("#up_c").css("display", "none");
            $("#down_c").css("display", "inline-block");
            $("#menu_categories").css("display", "none");
        }
        if ($("#menu_news").css("display", "inline-block")) {
            $("#up_n").css("display", "none");
            $("#down_n").css("display", "inline-block");
            $("#menu_news").css("display", "none");
        }
    });
}

// 	language 

// onmousehover

// 	function language_select_in(){
// 		var x = document.getElementById("langSelect");	
// 		var langClass = document.getElementsByClassName("language_select");
// 		var dex = {direction:top};
// 		if(x.style.display !== "none"){
// 			x.style.display === "block;"
// 			$( "#langSelect" ).slideDown();
// 		}	
// 		if(x.style.display === "none"){
// 			x.style.display === "block;"
// 			$( "#langSelect" ).slideDown();
// 		}		
// 	}

// onclick

function language_select_in() {
    var up = document.getElementsByClassName("up");
    var down = document.getElementsByClassName("down");
    var x = document.getElementById("langSelect");

    if (x.style.display !== "none") {
        $("#up_l").css("display", "inline-block");
        $("#up_l").css("margin-bottom", "-5px");
        $("#down_l").css("display", "none");
        x.style.display === "block";
        $("#langSelect").slideDown();
    }
    if (x.style.display === "none") {
        $("#up_l").css("display", "inline-block");
        $("#up_l").css("margin-bottom", "-5px");
        $("#down_l").css("display", "none");
        x.style.display === "block";
        $("#langSelect").slideDown();
    }
}

function language_select_out() {
    var x = document.getElementById("langSelect");
    if (x.style.display !== "none") {
        x.style.display === "block";
        $("#langSelect").slideUp();
        $("#up_l").css("display", "none");
        $("#down_l").css("display", "inline-block");
    }
}

// 	categories

// onmousehover

// 	function categories_select_in(){
// 		var x = document.getElementById("CatSelect");	
// 		var langClass = document.getElementsByClassName("cat_select");
// 		var dex = {direction:top};
// 		if(x.style.display !== "none"){
// 			x.style.display === "block";
// 			$( "#CatSelect" ).slideDown();	
// 		}	
// 		if(x.style.display === "none"){
// 			x.style.display === "block;"
// 			$( "#CatSelect" ).slideDown();
// 		}		
// 	}

// onclick

function categories_select_in() {
    var up = document.getElementsByClassName("up");
    var down = document.getElementsByClassName("down");
    var x = document.getElementById("CatSelect");

    if (x.style.display !== "none") {
        $("#up_normal").css("display", "inline-block");
        $("#up_normal").css("margin-bottom", "-5px");
        $("#down_normal").css("display", "none");
        x.style.display === "block";
        $("#CatSelect").slideDown();
    }
    if (x.style.display === "none") {
        $("#up_normal").css("display", "inline-block");
        $("#up_normal").css("margin-bottom", "-5px");
        $("#down_normal").css("display", "none");
        x.style.display === "block";
        $("#CatSelect").slideDown();
    }
}

function categories_select_out() {
    var x = document.getElementById("CatSelect");
    var langClass = document.getElementsByClassName("cat_select");
    if (x.style.display !== "none") {
        x.style.display === "block";
        $("#CatSelect").slideUp();
        $("#up_normal").css("display", "none");
        $("#down_normal").css("display", "inline-block");
    }
}

// 	search

function search_in() {
    var x = document.getElementById("search_bar");

    if (x.style.display === "none") {
        x.style.display === "block";
        $("#search_bar").slideDown();
    } else {
        x.style.display === "none";
        $("#search_bar").slideUp();
    }
}

//	 menu language

function drope_menu_l() {
    var x = document.getElementById("menu_language");
    var up = document.getElementsByClassName("up");
    var down = document.getElementsByClassName("down");

    if (x.style.display === "none") {
        x.style.display === "block";
        $("#up").css("display", "inline-block");
        $("#up").css("margin-bottom", "-5px");
        $("#down").css("display", "none");
        $("#menu_language").css("z-index", "3");
        $("#menu_language").slideDown();
    } else {
        x.style.display === "none";
        $("#up").css("display", "none");
        $("#down").css("display", "inline-block");
        $("#menu_language").slideUp();
    }
}

//	 menu categories

function drope_menu_c() {
    var x = document.getElementById("menu_categories");
    var up = document.getElementsByClassName("up");
    var down = document.getElementsByClassName("down");

    if (x.style.display === "none") {
        x.style.display === "block";
        $("#up_c").css("display", "inline-block");
        $("#menu_categories").css("z-index", "2");
        $("#up_c").css("margin-bottom", "-5px");
        $("#down_c").css("display", "none");
        $("#menu_categories").slideDown();
    } else {
        x.style.display === "none";
        $("#up_c").css("display", "none");
        $("#down_c").css("display", "inline-block");
        $("#menu_categories").slideUp();
    }
}

// menu news praper

function drope_menu_n() {
    var x = document.getElementById("menu_news");
    var up = document.getElementsByClassName("up");
    var down = document.getElementsByClassName("down");

    if (x.style.display === "none") {
        x.style.display === "block";
        $("#up_n").css("display", "inline-block");
        $("#menu_news").css("z-index", "1");
        $("#up_n").css("margin-bottom", "-5px");
        $("#down_n").css("display", "none");
        $("#menu_news").slideDown();
    } else {
        x.style.display === "none";
        $("#up_n").css("display", "none");
        $("#down_n").css("display", "inline-block");
        $("#menu_news").slideUp();
    }
}

// goto_to_top

$(window).on("scroll", function () {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        $(".goto_top_button").css("display", "block");
    } else {
        $(".goto_top_button").css("display", "none");
    }
});

// go_top

$(".goto_top_button").on("click", function () {
    $("html,body").animate({scrollTop: 0}, "slow");
});

// change date in footer

$(document).ready(function () {
    var d = new Date();
    var y = d.getFullYear();
    $("#year").html(y);
});

// menu height

$(window).on("load", function () {
    var mainHeight = $("#main_menu_div").height();
    var mnuHeaderHeight = $(".menu_header").height();
    $(".menu_content").css("height", (mainHeight - mnuHeaderHeight - 300) + "px");

});

// for login 

$("#logIn,#login_img").click(function () {
    var modal = document.getElementById("main_login");
    if (modal.style.display === "none") {
        $("body").css("overflow", "hidden");
        document.getElementById("main_login").style.display = "block";
        document.getElementById("log_in_div").style.display = "block";
        document.getElementById("main_login").style.opacity = "1";
    }
});

// open signIn menu

$("#sign_in").click(function () {
    var modal = document.getElementById("log_in_div");
    if (modal.style.display === "block") {
        $("body").css("overflow", "hidden");
        document.getElementById("log_in_div").style.display = "none";
        document.getElementById("log_in_div").style.opacity = "0";
        document.getElementById("sign_in_div").style.opacity = "1";
        document.getElementById("sign_in_div").style.display = "block";
    }
});

//Switching logIn to Sign In menu

$("#log_in").click(function () {
    var m1 = document.getElementById("sign_in_div");
    if (m1.style.display === "block") {
        $("body").css("overflow", "hidden");
        document.getElementById("sign_in_div").style.display = "none";
        document.getElementById("sign_in_div").style.opacity = "0";
        document.getElementById("log_in_div").style.opacity = "1";
        document.getElementById("log_in_div").style.display = "block";

    }
});
$("#log_in_f").click(function () {
    var m2 = document.getElementById("forgotpassword_div");
    if (m2.style.display === "block") {
        $("body").css("overflow", "hidden");
        document.getElementById("forgotpassword_div").style.display = "none";
        document.getElementById("forgotpassword_div").style.opacity = "0";
        document.getElementById("log_in_div").style.opacity = "1";
        document.getElementById("log_in_div").style.display = "block";
    }
});

//open ForgotPassword menu

$("#forgot_password").click(function () {
    var modal = document.getElementById("log_in_div");
    if (modal.style.display === "block") {
        $("body").css("overflow", "hidden");
        document.getElementById("log_in_div").style.display = "none";
        document.getElementById("log_in_div").style.opacity = "0";
        document.getElementById("forgotpassword_div").style.opacity = "1";
        document.getElementById("forgotpassword_div").style.display = "block";
    }
});


// show password icon(login, signup, forgot password)

$(document).ready(function () {

    var log_s_p = $("#log_s_p");
    var log_p = document.getElementById("log_p");
    var for_s_p = $("#for_s_p");
    var for_p = document.getElementById("for_p");
    var for_con_s_p = $("#for_con_s_p");
    var for_con_p = document.getElementById("for_con_p");
    var create_s_p = $("#create_s_p");
    var create_p = document.getElementById("create_p");
    var create_sh_p = $("#create_sh_p");
    var create_p1 = document.getElementById("create_p1");

    //login
    $("#log_s_p").on("click", function () {
        if (log_p.type === "password") {
            $("#log_s_p").addClass("fa-eye");
            $("#log_s_p").removeClass("fa-eye-slash");
            document.getElementById("log_p").type = "text";
        } else {
            $("#log_s_p").addClass("fa-eye-slash");
            $("#log_s_p").removeClass("fa-eye");
            document.getElementById("log_p").type = "password";
        }

    });

    //forgot password
    $("#for_s_p").on("click", function () {
        if (for_p.type === "password") {
            $("#for_s_p").addClass("fa-eye");
            $("#for_s_p").removeClass("fa-eye-slash");
            document.getElementById("for_p").type = "text";
        } else {
            $("#for_s_p").addClass("fa-eye-slash");
            $("#for_s_p").removeClass("fa-eye");
            document.getElementById("for_p").type = "password";
        }
    });

    $("#for_con_s_p").on("click", function () {
        if (for_con_p.type === "password") {
            $("#for_con_s_p").addClass("fa-eye");
            $("#for_con_s_p").removeClass("fa-eye-slash");
            document.getElementById("for_con_p").type = "text";
        } else {
            $("#for_con_s_p").addClass("fa-eye-slash");
            $("#for_con_s_p").removeClass("fa-eye");
            document.getElementById("for_con_p").type = "password";
        }
    });

    //sign up
    $("#create_s_p").on("click", function () {
        if (create_p.type === "password") {
            $("#create_s_p").addClass("fa-eye");
            $("#create_s_p").removeClass("fa-eye-slash");
            document.getElementById("create_p").type = "text";
        } else {
            $("#create_s_p").addClass("fa-eye-slash");
            $("#create_s_p").removeClass("fa-eye");
            document.getElementById("create_p").type = "password";
        }
    });
    $("#create_sh_p").on("click", function () {
        if (create_p1.type === "password") {
            $("#create_sh_p").addClass("fa-eye");
            $("#create_sh_p").removeClass("fa-eye-slash");
            document.getElementById("create_p1").type = "text";
        } else {
            $("#create_sh_p").addClass("fa-eye-slash");
            $("#crteate_sh_p").removeClass("fa-eye");
            document.getElementById("create_p1").type = "password";
        }
    });
});

//$(window).on("click", function () {
//    var loginHeight = $(".div_login").height();
//    var mainLogInheight = $("#main_login").height();
//    var h = mainLogInheight-110;
//    console.log(loginHeight);
//    console.log(mainLogInheight);
//    
//    if(loginHeight >= mainLogInheight){
//        console.log(1);
//        $(".div_login").css("height",h+"px;");
//        $("#main_login").css("padding-top","0px")
//    }
//    
//});

// content height

//$(window).on("load", function () {
//    content_height_check();
//    content_height_check_main();
//});
//
//function content_height_check() {
//    if ($("#content_div").height() !== $(".second_div.showNews").height()) {
//        var h = $(".second_div.showNews").height() + $(".second_div").height() + 140;
//        $("#content_div").css("height", h + "px");
//    }
//}
//
//function content_height_check_main() {
//    if ($(".second_div").height() <= $("#f1").height()) {
//        var h1 = $("#f1").height() + 50;
//        $("#content_body").css("height", h1 + "px");
//    } else if ($(".second_div").height() >= $("#f1").height()) {
//        var h = $(".second_div").height() + 100;
//        $("#content_body").css("height", h + "px");
//    }
//}

// open comment section

//$(".fa.fa-commenting-o").on("click",function(){
//    if($(".comm-show").css("display") === "none"){
//        $(".fa.fa-commenting-o").addClass("fa-commenting colour-s-2").removeClass("fa-commenting-o colour-s");
//        $(".comm-show").addClass("com-div");
//        $(".comm-show").removeClass("comm-h");
//    }else{
//         $(".fa.fa-commenting").addClass("fa-commenting-o colour-s").removeClass("fa-commenting colour-s-2");
//        $(".comm-show").removeClass("com-div");
//        $(".comm-show").addClass("comm-h");
//    } 
//});

// refresh recent news , trend , twitter

$("#recent-news").on("click", function () {
    if ($(".showbox").css("display") === "none") {
        $(".showbox").slideDown();
//        $("#scroll-h").css("overflow-y", "hidden");
    } else {
        $(".showbox").slideUp();
//        $("#scroll-h").css("overflow-y", "auto");
    }
});

// refresh newspaper page

$("#newspaper-r").on("click", function () {
    if ($(".showbox-newspaper").css("display") === "none") {
        $(".showbox-newspaper").slideDown();
    } else {
        $(".showbox-newspaper").slideUp();
    }
});

// see more loader 

$("#index-sm").on("click", function () {
    if ($(".showbox-newspaper.showbox-seemore").css("display") === "none") {
        $(".showbox-newspaper.showbox-seemore").slideDown();
    } else {
        $(".showbox-newspaper.showbox-seemore").slideUp();
    }
});

// news paper show categories

$(".np-s").on("click", function () {
    if ($(".np-c-s-m").css("display") === "none") {
        $(".np-c-s-m").slideDown();
        $(".fa.fa-angle-down").removeClass("fa-angle-down").addClass("fa-angle-up");
    } else {
        $(".np-c-s-m").slideUp();
        $(".fa.fa-angle-up").removeClass("fa-angle-up").addClass("fa-angle-down");
    }
});

// change border in newspaper 

$(document).ready(function () {
    $("#categories-1").on("click", function () {
        $("#categories-1").children("span").addClass("active");
        $("#categories-2").children("span").removeClass("active");
        $("#categories-3").children("span").removeClass("active");
        $("#categories-4").children("span").removeClass("active");
        $(".np-c-s-m").slideUp();
        $(".fa.fa-angle-up").removeClass("fa-angle-up").addClass("fa-angle-down");
    });

    $("#categories-2").on("click", function () {
        $("#categories-2").children("span").addClass("active");
        $("#categories-1").children("span").removeClass("active");
        $("#categories-3").children("span").removeClass("active");
        $("#categories-4").children("span").removeClass("active");
        $(".np-c-s-m").slideUp();
        $(".fa.fa-angle-up").removeClass("fa-angle-up").addClass("fa-angle-down");
    });

    $("#categories-3").on("click", function () {
        $("#categories-3").children("span").addClass("active");
        $("#categories-1").children("span").removeClass("active");
        $("#categories-2").children("span").removeClass("active");
        $("#categories-4").children("span").removeClass("active");
        $(".np-c-s-m").slideUp();
        $(".fa.fa-angle-up").removeClass("fa-angle-up").addClass("fa-angle-down");
    });

    $("#categories-4").on("click", function () {
        $("#categories-4").children("span").addClass("active");
        $("#categories-1").children("span").removeClass("active");
        $("#categories-2").children("span").removeClass("active");
        $("#categories-3").children("span").removeClass("active");
    });
});

// change border in users 

$(document).ready(function () {
    $("#users-1").on("click", function () {
        $("#users-1").children("span").addClass("active");
        $("#users-2").children("span").removeClass("active");
        $("#users-3").children("span").removeClass("active");
    });

    $("#users-2").on("click", function () {
        $("#users-2").children("span").addClass("active");
        $("#users-1").children("span").removeClass("active");
        $("#users-3").children("span").removeClass("active");
    });

    $("#users-3").on("click", function () {
        $("#users-3").children("span").addClass("active");
        $("#users-1").children("span").removeClass("active");
        $("#users-2").children("span").removeClass("active");
    });

});










