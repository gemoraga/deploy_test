$(document).ready(function () {
var titleClicked = "";

$(".listWindow").accordion({
    header: ".accordionHeader",
    collapsible: true,
    active: false,
    activate: function( event, ui ) {
        var title = $(this).find(".title").html(); 
        setTimeout(function(){
            if(titleClicked == title){
                $(".listWindow").each(function(){
                    if ($(this).find(".title").html() != title){                       
                        $(this).accordion("option", "active", false);
                    }
                });
           }
        }, 100);
    }
});  

$(".siteTitle").click(function () {
    event.stopPropagation();        
});

$(".accordionWrapper").click(function(){        
    titleClicked = $(this).closest(".listWindow").find(".title").text();
});

});