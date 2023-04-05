<%@include file="/common/taglib.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Study With Me | Ứng dụng tìm kiếm người bạn học cùng</title>
    <script src="https://kit.fontawesome.com/5175756225.js" crossorigin="anonymous"></script>
    <link rel="icon" href="/PBL3/template/image/Study1.png" type="image/icon type">
    <link rel="stylesheet" href="/PBL3/template/css/home.css">
</head>
<body>
    <div id="main">
        <jsp:include page="/common/web/navbar.jsp"></jsp:include>
        <div id="content">
            <div class="content-left">
                <div class="content-calender">
                    <div class="calender-title">
                        <p class="Lichcuaban">Lịch của bạn</p>
                    </div>
                    <div class="calender-main">
                    <script type="text/javascript">
                        var dt= new Date();
                        var month=dt.getMonth(); // read the current month
                        var year=dt.getFullYear(); // read the current year
                        
                        dt=new Date(year, month, 01);//Year , month,date format
                        
                        var first_day=dt.getDay(); //, first day of present month
                        //document.write("first_day=" + first_day + "<br><br>");
                        
                        dt.setMonth(month+1,0); // Set to next month and one day backward.
                        var last_date=dt.getDate(); // Last date of present month
                        //document.write(dt); // Last date in full
                        //document.write("<br><br> Last Date of the month =" + last_date + "<br><br>");
                        
                        var dy=1; // day variable for adjustment of starting date.
                        document.write ("<table><tr><td>Sun</td><td>Mon</td><td>Tue</td><td>Wed</td><td>Thu</td><td>Fri</td><td>Sat</td>");
                        
                        for(i=0;i<=41;i++){
                        if((i%7)==0){document.write("</tr><tr>");} // if week is over then start a new line
                        if((i>= first_day) && (dy<= last_date)){
                        document.write("<td>"+ dy +"</td>");
                        dy=dy+1;
                        }else {document.write("<td> </td>");} // Blank dates.
                        } // end of for loop
                        
                        document.write("</tr></table>")
                    </script>
                    </div>
                </div>
                <div class="content-list-meeting">
                    <p class="text">Lịch hẹn</p>
                    <p class="all"><a href="">Tất cả</a></p>
                    <div class="content-left-item">
                        <p class="time-date"> 8 A.M - 9 A.M 08/03/2023</p>
                        <p class="with">Với</p>
                        <p class="name">Tran Le Nguyen</p>
                    </div>
                    <div class="content-left-item">
                        <p class="time-date"> 8 A.M - 9 A.M 08/03/2023</p>
                        <p class="with">Với</p>
                        <p class="name">Tran Le Nguyen</p>
                    </div>
                </div>
            </div>
            <div class="content-main">
                <h1 class="content-main-title">Cộng đồng</h1>
                <div class="content-main-search">
                    <i class="fa-solid fa-magnifying-glass"></i>
                    <input type="text" placeholder="Gõ gì đó để tìm kiếm ...">
                </div>
                <div class="content-main-list">
                    <div class="content-main-item">
                        <div class="profile">
                            <img class="background" src="./image/background.png" alt="">
                            <img class="avatar" src="./image/ava1.png" alt="">
                            <p class="name">Phúc Tân</p>
                        </div>
                        <div class="content">
                            <div class="item">
                                <p class="time">8 A.M - 9 A.M</p>
                                <p class="address"><i class="fa-solid fa-location-dot"></i>60 Nguyen Luong...</p>
                            </div>
                        </div>
                        <p class="see-more"><a href="">Xem chi tiết</a></p>
                    </div>
                    <div class="content-main-item">
                        <div class="profile">
                            <img class="background" src="./image/background.png" alt="">
                            <img class="avatar" src="./image/ava1.png" alt="">
                            <p class="name">Phúc Tân</p>
                        </div>
                        <div class="content">
                            <div class="item">
                                <p class="time">8 A.M - 9 A.M</p>
                                <p class="address"><i class="fa-solid fa-location-dot"></i>60 Nguyen Luong...</p>
                            </div>
                        </div>
                        <p class="see-more"><a href="">Xem chi tiết</a></p>
                    </div>
                    <div class="content-main-item">
                        <div class="profile">
                            <img class="background" src="./image/background.png" alt="">
                            <img class="avatar" src="./image/ava1.png" alt="">
                            <p class="name">Phúc Tân</p>
                        </div>
                        <div class="content">
                            <div class="item">
                                <p class="time">8 A.M - 9 A.M</p>
                                <p class="address"><i class="fa-solid fa-location-dot"></i>60 Nguyen Luong...</p>
                            </div>
                        </div>
                        <p class="see-more"><a href="">Xem chi tiết</a></p>
                    </div>
                    <div class="content-main-item">
                        <div class="profile">
                            <img class="background" src="./image/background.png" alt="">
                            <img class="avatar" src="./image/ava1.png" alt="">
                            <p class="name">Phúc Tân</p>
                        </div>
                        <div class="content">
                            <div class="item">
                                <p class="time">8 A.M - 9 A.M</p>
                                <p class="address"><i class="fa-solid fa-location-dot"></i>60 Nguyen Luong...</p>
                            </div>
                        </div>
                        <p class="see-more"><a href="">Xem chi tiết</a></p>
                    </div>
                </div>
            </div>
            <div class="content-right">
                <div class="list-friends">
                    <p class="list-friends-title">Danh sách bạn bè</p>
                    <div class="list-friends-item">
                        <img src="../image/ava.png" alt="">
                        <p class="name"><a href=""> Ho va ten </a></p>
                        <i class="fa-solid fa-mug-saucer"></i>
                    </div>
                    <div class="list-friends-item">
                        <img src="../image/ava.png" alt="">
                        <p class="name"><a href=""> Ho va ten </a></p>
                        <i class="fa-solid fa-mug-saucer"></i>
                    </div>
                    <div class="list-friends-item">
                        <img src="../image/ava.png" alt="">
                        <p class="name"><a href=""> Ho va ten </a></p>
                        <i class="fa-solid fa-mug-saucer"></i>
                    </div>
                </div>
                <div class="your-profile">
                    <p class="title">Lịch đặt hẹn của bạn</p>
                    <div class="your-profile-main">
                        <div class="profile">
                            <img class="background" src="./image/background.png" alt="">
                            <img class="avatar" src="./image/ava1.png" alt="">
                            <p class="name">Phúc Tân</p>
                        </div>
                        <div class="content">
                            <div class="item">
                                <p class="time">8 A.M - 9 A.M</p>
                                <p class="address"><i class="fa-solid fa-location-dot"></i>60 Nguyen Luong...</p>
                            </div>
                        </div>
                        <p class="add"><a href="">+</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>