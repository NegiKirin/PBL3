var openHeader = document.querySelector('.menu-btn')
var menuHeader = document.querySelector('.header-menu')

openHeader.addEventListener('click', function (){
    menuHeader.classList.toggle('hide')
} )

var openNoti = document.querySelector('.noti-btn')
var notiContent = document.querySelector('.noti-content')

openNoti.addEventListener('click', function (){
    notiContent.classList.toggle('hide')
})