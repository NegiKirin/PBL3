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

        var itemInner = item.children[1].children[0]
        //date
        inforDetailDiv.children[1].children[1].childNodes[0].nodeValue = itemInner.children[0].childNodes[0].nodeValue
        //time
        inforDetailDiv.children[1].children[2].childNodes[0].nodeValue = itemInner.children[1].childNodes[0].nodeValue
        //type
        inforDetailDiv.children[2].children[1].childNodes[0].nodeValue = item.children[1].children[1].value
        //location
        inforDetailDiv.children[3].children[1].childNodes[0].nodeValue = itemInner.children[2].childNodes[1].nodeValue
        detailDiv.classList.remove('hide')
    })
})

exitDetailDiv.addEventListener('click', function (){
    detailDiv.classList.add('hide')
})

panelDetailDiv.addEventListener('click', function (){
    detailDiv.classList.add('hide')
})
