$(document).ready(function () {
        $(document).on('click','#hide_left',function () {
            if ($(this).parent().parent().siblings("#common_left").is(":visible")) {
                $(this).parent().parent().siblings("#common_left").hide();
                $(this).parent().parent().siblings("#page-wrapper").css("margin-left","0px");
            }else {
                $(this).parent().parent().siblings("#common_left").show();
                $(this).parent().parent().siblings("#page-wrapper").css("margin-left","260px");
            }
        });
});

