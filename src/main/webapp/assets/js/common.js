$(window).resize(function () {
        if($(this).innerWidth()<= 520) {
            console.log(1);
            $(".header-link").hide();
            $(".navbar-right").hide();
        }else {
            $(".header-link").show();
            $(".navbar-right").show();
        }
});
