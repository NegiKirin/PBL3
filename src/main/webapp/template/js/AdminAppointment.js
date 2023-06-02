var openDetailDiv = document.querySelectorAll('.content-main-item')
var detailDiv = document.querySelector('.booking-apm')
var exitDetailDiv = document.querySelector('.booking-apm .exit')
var panelDetailDiv = document.querySelector('.booking-apm .panel')
var inforDetailDiv = document.querySelector('.booking-apm .infor')

console.log(detailDiv)
console.log(openDetailDiv)

openDetailDiv.forEach((item, index)=>{
    item.children[2].addEventListener('click', function (){
        //background
        detailDiv.children[1].children[0].attributes[0].value = item.children[0].children[0].attributes[0].value
        //avatar
        detailDiv.children[1].children[1].attributes[0].value = item.children[0].children[1].attributes[0].value
        //name
        detailDiv.children[1].children[2].childNodes[0].nodeValue = item.children[0].children[2].childNodes[0].nodeValue
        //date
        inforDetailDiv.
        //time
        //location

        detailDiv.classList.remove('hide')
    })
})

exitDetailDiv.addEventListener('click', function (){
    detailDiv.classList.add('hide')
})

panelDetailDiv.addEventListener('click', function (){
    detailDiv.classList.add('hide')
})
