var oppenBookingDiv = document.querySelectorAll('.content-main-item')
var closeBookingDiv = document.querySelector('.booking-apm .exit')
var bookingDiv = document.querySelector('.booking-apm')
var panelBookingDiv = document.querySelector('.booking-apm .panel')
var inforBookingDiv = document.querySelector('.booking-apm .infor')
console.log(oppenBookingDiv)
console.log(bookingDiv)
oppenBookingDiv.forEach((item, index) =>{
    item.children[2].addEventListener('click', function (){
        //background
        bookingDiv.children[1].children[0].attributes[0].value = item.children[0].children[0].attributes[0].value
        //avatar
        bookingDiv.children[1].children[1].attributes[0].value = item.children[0].children[1].attributes[0].value
        //name
        bookingDiv.children[1].children[2].childNodes[0].nodeValue = item.children[0].children[2].childNodes[0].nodeValue
        //date
        inforBookingDiv.children[1].children[1].childNodes[0].nodeValue = item.children[1].children[0].children[0].childNodes[0].nodeValue
        //time
        inforBookingDiv.children[1].children[2].childNodes[0].nodeValue = item.children[1].children[0].children[1].childNodes[0].nodeValue
        //type
        inforBookingDiv.children[2].children[1].childNodes[0].nodeValue = item.children[1].children[0].children[3].value
        //location
        inforBookingDiv.children[3].children[1].childNodes[0].nodeValue = item.children[1].children[0].children[2].childNodes[1].nodeValue
        bookingDiv.classList.remove('hide')
    })
})

closeBookingDiv.addEventListener('click', function (){
    bookingDiv.classList.add('hide')
})

panelBookingDiv.addEventListener('click', function (){
    bookingDiv.classList.add('hide')
})

function timeStr(time) {
    var temp = time.split(':');
    return `${temp[0]}:${temp[1]}`
}

var time = document.querySelectorAll(".item .time");
time.forEach(function (element) {
    element.innerHTML = timeStr(element.getAttribute("startTime")) + ' - ' + timeStr(element.getAttribute("endTime"));
})

function date(date) {
    var temp = date.split('-');
    return `${temp[2]}-${temp[1]}-${temp[0]}`;
}

var dateMeetings = document.querySelectorAll('.item .date');
dateMeetings.forEach((element,index)=>{
    element.innerText = date(element.innerText);
})