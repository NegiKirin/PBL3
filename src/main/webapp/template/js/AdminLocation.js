$(document).ready(function() {
    $(".item").click(function() {
        var none = $(".menu .count")
        $(".item").css("background-color", "");
        $(this).css("background-color", "#18C0e6");
        $(none).css("display", "block");
    });
    $("#confirmButton").click(function() {

        $("#confirmBox").fadeOut(200);
    });

    $("#cancelButton").click(function() {

        $("#confirmBox").fadeOut(200);
    });

    $(".fa-trash").click(function() {
        $("#confirmBox").fadeIn();
    });

});
