function myFunction() {
    var x = document.getElementById("myDIV");
    if (x.style.display === "none") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
}

function timeStr(t) {
    console.log(t);
    // var temp = t.split(' ');
    // var time = temp[1].split(':');
    // var hour = Number.parseInt(time[0]);
    // var minute = Number.parseInt(time[1]);
    // var timestr = '';
    // if (hour >= 0 && hour <= 12) {
    //     return `${hour}:${minute} AM`;
    // }
    // if (hour >= 12 && hour <= 24) {
    //     return `${hour}:${minute} PM`;
    // }
    // return timestr;
}

var time = document.querySelectorAll("#content .content-main .content-main-list .content .item .time");
time.forEach(function (element) {
    element.innerHTML = timeStr(element.getAttribute("startTime")) + ' - ' + timeStr(element.getAttribute("endTime"));
})
