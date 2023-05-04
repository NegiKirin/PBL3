var dateOfBirth1 = document.querySelector(".content-main-edit-infor .item .date");
var date1 = dateOfBirth1.getAttribute('date');
dateOfBirth1.defaultValue = date1.slice(0,10);
var dateOfBirth2 = document.querySelector(".vice-main .edit-infor .list .date");
var date2 = dateOfBirth2.getAttribute('date');
dateOfBirth2.defaultValue = date2.slice(0,10);



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
