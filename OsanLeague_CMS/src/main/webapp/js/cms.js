$(document).ready(function(){
    /*==================== nav */
    $('.depth01_tit').click(function() {
        var show = !$(this).next().is(':visible');

        $(this).parents('li').siblings().children('.depth01_tit.on').removeClass('on');
        $(this).toggleClass('on', show);

        $('.depth02_ul').slideUp('normal');

        if(show)
            $(this).next().slideDown('normal');
        });

    //open first 
    $(".on").trigger('click');

    /*==================== label */
    $('.label_hide').focus(function(){
        //$(this).addClass('focused');
        $(this).prev().css('display','none');
    });

    $('.label_hide').blur(function(){
        $(this).prev().css('display','block');
        var inputValue = $(this).val();

        if(inputValue == ""){
            //$(this).removeClass('filled');
            $(this).removeClass('focused');
        } else {
            //$(this).addClass('filled');
            $(this).prev().css('display','none');
        }   
    });

    /*==================== tab */
    var tabt = $('.tab_tit');
        tabc = $('.tab_cont');

    tabt.click(function(e){
        tabt.removeClass('on');
        tabc.hide();

        $(this).addClass('on');
        if($(this).hasClass('on')){
            $(this).next().show();
        }
        e.preventDefault();
    });

    /*==================== select */
    $('.league_sct_tit').click(function(){
        $(this).next('.league_select ul').slideToggle(200);
    });    

    /*==================== popup */
    function openPopUp() {
        $(".darkbg, .popup").fadeIn(200);
    }

    function closePopUp() {
        $(".darkbg, .popup").fadeOut(200);
    }

    $(function () {
        $(".btn_pop").on("click", openPopUp);
        $(".btn_close, .darkbg").on("click", closePopUp);
    });
});