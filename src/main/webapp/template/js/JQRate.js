$(document).ready(function() {
    $('.show-button').click(function() {
        // $('.list').css('display', 'inline-block');
        $(this).parent().next('.list').slideToggle();
        $(this).find('.arrow').toggleClass('rotate');
    });
});