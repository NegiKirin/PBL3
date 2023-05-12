var dateOfBirth1 = document.querySelector(".content-main-edit-infor .item .date");
var date1 = dateOfBirth1.getAttribute('date');
dateOfBirth1.defaultValue = date1.slice(0,10);
var dateOfBirth2 = document.querySelector(".vice-main .edit-infor .list .date");
var date2 = dateOfBirth2.getAttribute('date');
dateOfBirth2.defaultValue = date2.slice(0,10);

var buttonEdit = document.querySelector('.content-main-edit-infor .edit');
buttonEdit.onclick = function (e){
    var div = document.querySelector('.vice-main');
    div.style.display = 'block';
};

var buttonExit = document.querySelector('.vice-main .edit-infor .exit');
buttonExit.onclick = function (e) {
    var div = document.querySelector('.vice-main');
    div.style.display = 'none';
}

function myFunction() {
    var x = document.getElementById("myDIV");
    if (x.style.display === "none") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
}

var inputAvatar = document.querySelector('.vice-main .edit-infor .edit-ava .input-img');
inputAvatar.oninput = function (e) {
    Object.assign(e.target.nextElementSibling.style, {
        cursor: 'pointer',
        backgroundColor: '#18C0e6'
    });
    e.target.nextElementSibling.removeAttribute('disabled');
};

var inputBackground = document.querySelector('.vice-main .edit-infor .edit-background .input-img');
inputBackground.oninput = function (e) {
    Object.assign(e.target.nextElementSibling.style, {
        cursor: 'pointer',
        backgroundColor: '#18C0e6'
    });
    e.target.nextElementSibling.removeAttribute('disabled');
};

var divEditProfile = document.getElementById('editProfile');
divEditProfile.onchange = function (e) {
    Object.assign(divEditProfile.lastElementChild.style, {
        cursor: 'pointer',
        backgroundColor: '#18C0e6'
    });
    divEditProfile.lastElementChild.removeAttribute('disabled');
};

var selectGender = document.querySelector(' .vice-main .edit-infor .list .list-sex');
if (selectGender.getAttribute('value')==='0'){
    selectGender.childNodes[1].setAttribute('selected','selected');
} else if (selectGender.getAttribute('value')==='1'){
    selectGender.childNodes[3].setAttribute('selected','selected');
} else {
    selectGender.childNodes[5].setAttribute('selected','selected');
}

var selectSchool = document.querySelector('.vice-main .edit-infor .list .list-school');
var lengthSchool = selectSchool.children.length;
var idSchool = selectSchool.getAttribute('idSchool');
for(var i = 0; i < lengthSchool; i++) {
    if (selectSchool.children[i].getAttribute('idSchool') === idSchool){
        selectSchool.children[i].setAttribute('selected','selected');
    }
}

function timeStr(t) {
    var temp = t.split(' ');
    var time = temp[1].split(':');
    var hour = Number.parseInt(time[0]);
    var minute = Number.parseInt(time[1]);
    var timestr = '';
    if (hour >= 0 && hour <= 12) {
        return `${hour}:${minute} AM`;
    }
    if (hour >= 12 && hour <= 24) {
        return `${hour}:${minute} PM`;
    }
    return timestr;
}

var time = document.querySelectorAll(".list-apm .item-apm .times");
console.log(time);
time.forEach(function (element) {
    element.innerHTML = timeStr(element.getAttribute("startTime")) + ' - ' + timeStr(element.getAttribute("endTime"));
})

var date = document.querySelectorAll(".list-apm .item-apm .date");


var groupStar = document.querySelectorAll('.form-group');
var length = groupStar.length;
for(var j = 0; j < length; j++){
    var noStar = Number.parseInt(groupStar[j].getAttribute('value'));
    for(var i = 1; i < noStar*2; i+=2){
        groupStar[j].childNodes[i].classList.add('checked');
    }
}
