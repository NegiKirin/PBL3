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


var groupStar = document.querySelectorAll('.form-group');
var length = groupStar.length;
for(var j = 0; j < length; j++){
    var noStar = Number.parseInt(groupStar[j].getAttribute('value'));
    for(var i = 1; i < noStar*2; i+=2){
        groupStar[j].childNodes[i].classList.add('checked');
    };
}
