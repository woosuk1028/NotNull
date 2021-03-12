$(".nav-left > ul > li").mouseover(function(){
    $(this).find(".submenu").stop().slideDown(200);
});

$(".nav-left > ul > li").mouseout(function(){
    $(this).find(".submenu").stop().slideUp(200);
});