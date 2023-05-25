function myFunction() {
    var x = document.getElementById("myDIV");
    if (x.style.display === "none") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
}

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
