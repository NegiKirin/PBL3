var itemUser = document.querySelectorAll('.content-list-user .item')
var detailDiv = document.querySelector('.detail-div')
var exitDetailDiv = document.querySelector('.detail-div .exit')

itemUser.addEventListener('click', function (){
    detailDiv.classList.remove('hide')
} )

exitDetailDiv.addEventListener('click', function (){
    detailDiv.classList.add('hide')
} )