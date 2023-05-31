var oppenBookingDiv = document.querySelectorAll('.content-main-item');
var closeBookingDiv = document.querySelector('.booking-apm .exit');
var bookingDiv = document.querySelector('.booking-apm');
var panelBookingDiv = document.querySelector('.booking-apm .panel');
var inforBookingDiv = document.querySelector('.booking-apm .infor');
var formBooking = document.querySelector('.booking-apm .infor-apm');
console.log(oppenBookingDiv);
console.log(bookingDiv);
oppenBookingDiv.forEach((item, index) =>{
    item.children[2].addEventListener('click', function (){
        //background
        bookingDiv.children[1].children[0].attributes[0].value = item.children[0].children[0].attributes[0].value;
        //avatar
        bookingDiv.children[1].children[1].attributes[0].value = item.children[0].children[1].attributes[0].value;
        //name
        bookingDiv.children[1].children[2].childNodes[0].nodeValue = item.children[0].children[2].childNodes[0].nodeValue;
        //date
        inforBookingDiv.children[1].children[1].childNodes[0].nodeValue = item.children[1].children[0].children[0].childNodes[0].nodeValue;
        //time
        inforBookingDiv.children[1].children[2].childNodes[0].nodeValue = item.children[1].children[0].children[1].childNodes[0].nodeValue;
        //type
        inforBookingDiv.children[2].children[1].childNodes[0].nodeValue = item.children[1].children[0].children[3].value;
        //location
        inforBookingDiv.children[3].children[1].childNodes[0].nodeValue = item.children[1].children[0].children[2].childNodes[1].nodeValue;
        //participants
        inforBookingDiv.nextElementSibling.children[1].innerHTML = `(<i class="fa-solid fa-users"></i> ${item.children[1].children[0].children[5].value} / ${item.children[1].children[0].children[4].value})`;
        let listMemberHTML = "";
        let listMember =  item.children[1].children[0].children[6].children;
        for(let i = 0; i < listMember.length; i++){
            listMemberHTML+= `<div class="item"> <img src="data:image/jpeg;base64,${listMember[i].children[0].value}">
                           <a class="name">${listMember[i].children[1].value}</a> </div>`;
        }
        if (listMemberHTML !== "") {
            inforBookingDiv.nextElementSibling.children[2].innerHTML = listMemberHTML;
        } else {
            inforBookingDiv.nextElementSibling.children[2].innerHTML = "";
        }
        //idAppointment
        formBooking.children[1].removeAttribute('disabled');
        formBooking.children[1].defaultValue = 'KẾT NỐI NGAY';
        formBooking.children[1].style.backgroundColor = '#18C0e6';
        formBooking.children[2].defaultValue = item.children[1].children[1].defaultValue;
        //submit
        if (Number.parseInt(item.children[1].children[0].children[5].value) === Number.parseInt(item.children[1].children[0].children[4].value)) {
            formBooking.children[1].setAttribute('disabled','');
            formBooking.children[1].defaultValue = 'Đã full';
            formBooking.children[1].style.backgroundColor = 'gray';
        }
        //show
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