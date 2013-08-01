(document).ready(function()
        {
            $("#login_btn").hide();
            $("#signup_form").hide();
            $("#forgotPassword").hide();
            $("#login_btn").click(function()
            {
                $("#sign").slideToggle();
                $("header").delay(500).animate({height:'225px' ,top:'25%'}, 500);
                $("#login_form").delay(750).fadeIn();
            });
            $("#signup_btn").click(function()
            {
                $("#sign").slideToggle();
                $("header").delay(500).animate({height:'450px' ,top:'25%'}, 500);
                $("#signup_form").delay(750).fadeIn();
            });
             $("#loginformbtn").click(function()
            {
                $("#signup_form").fadeOut();
                $("header").delay(500).animate({height:'225px' ,top:'25%'}, 500);
                $("#login_form").delay(750).fadeIn();
               
            });
            $("#signupformbtn").click(function()
            {
                $("#login_form").fadeOut();
                $("header").delay(500).animate({height:'450px' ,top:'25%'}, 500);
                $("#signup_form").delay(750).fadeIn();
            });
            $("#forgotpdubBtn").click(function(){
                $("#login_form").fadeOut();
                $("header").delay(500).animate({height:'175px' ,top:'25%'}, 500);
                $("#forgotPassword").delay(750).fadeIn();
               
            });
            $("#bckToLogin").click(function()
            {
                $("#forgotPassword").fadeOut();
                $("header").delay(500).animate({height:'225px' ,top:'25%'}, 500);
                $("#login_form").delay(750).fadeIn();  
            });
        });