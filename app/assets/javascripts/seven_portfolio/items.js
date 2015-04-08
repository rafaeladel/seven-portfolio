// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function(){
    var data_id = $("body").find(".item_type_radio_wrapper input:checked").attr("id");
    console.log(data_id);
    $(".item_type_wrapper > div").hide();
    $(".item_type_wrapper").find("div[data-id="+data_id+"]").show();

    $("body").on("click", ".item_type_radio", function (e) {
        $(".item_type_wrapper > div").hide();
        $(".item_type_wrapper").find("div[data-id="+$(e.target).attr("id")+"]").show();
    });
});