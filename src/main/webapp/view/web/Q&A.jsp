<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Study With Me | Ứng dụng tìm kiếm người bạn học cùng</title>
    <script src="https://kit.fontawesome.com/5175756225.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="<c:url value="/template/css/Q&A.css"/>">
    <link rel="stylesheet" href="<c:url value="/template/css/navbar.css"/>">
</head>
<body>
    <div id="main">
        <jsp:include page="/common/web/navbar.jsp"></jsp:include>
        <div id="content">
            <div class="content-left">
                <jsp:include page="/common/web/Calender.jsp"></jsp:include>
                <div class="content-list-meeting">
                    <p class="text">Lịch hẹn</p>
                    <div class="content scroll-style">
                        <jsp:include page="/common/web/Appointment.jsp"></jsp:include>
                    </div>
                </div>
            </div>
            <div class="content-main">

                <div class="content-main-search">
                    <i class="fa-solid fa-magnifying-glass"></i>
                    <input type="text" placeholder="Gõ gì đó để tìm kiếm ...">
                </div>
                <div class="content-main-list">   
                    <div class="content-main-item">
                        <div class="profile">                            
                            <img class="avatar" src="../image/ava1.png" alt="">
                            <p class="name">Họ và Tên</p>
                        </div>
                        <div class="content">                                  
                                    <p class="content1"></i>Mọi người ơi!
                                    <br> Cho em xin công thức tình điện trở toàn phần của mạch hình sao và chứng mình ạ. Em cảm ơn mn ạ.</p>                                                                                                                                      
                        </div>
                        <div class="square1">
                            Vật lý
                        </div>
                        <div class="square2">
                            Công Thức
                        </div>
                        <a><button class="see-more" onclick="myFunction()">Xem thêm 5 câu trả lời...</button></a>                             
                    </div>
                    <div class="content-main-item">
                        <div class="profile">                            
                            <img class="avatar" src="../image/ava1.png" alt="">
                            <p class="name">Họ và Tên</p>
                        </div>
                        <div class="content">                                  
                                    <p class="content1"></i>Mọi người ơi!
                                    <br> Cho em xin công thức tình điện trở toàn phần của mạch hình sao và chứng mình ạ. Em cảm ơn mn ạ.</p>                                                                                                                                      
                        </div>
                        <div class="square1">
                            Vật lý
                        </div>
                        <div class="square2">
                            Công Thức
                        </div>
                        <a><button class="see-more" onclick="myFunction()">Xem thêm 5 câu trả lời...</button></a>                             
                    </div>
                    <div class="content-main-item">
                        <div class="profile">                            
                            <img class="avatar" src="../image/ava1.png" alt="">
                            <p class="name">Họ và Tên</p>
                        </div>
                        <div class="content">                                  
                                    <p class="content1"></i>Mọi người ơi!
                                    <br> Cho em xin công thức tình điện trở toàn phần của mạch hình sao và chứng mình ạ. Em cảm ơn mn ạ.</p>                                                                                                                                      
                        </div>
                        <div class="square1">
                            Vật lý
                        </div>
                        <div class="square2">
                            Công Thức
                        </div>
                        <a><button class="see-more" onclick="myFunction()">Xem thêm 5 câu trả lời...</button></a>                             
                    </div>                                                      
                </div>               
            </div>
            <div class="content-right">
                <jsp:include page="/common/web/ListFriend.jsp"/>
                <div class="your-profile">
                    <p class="title">Đặt câu hỏi của bạn</p>
                    <div class="your-profile-main">
                        <div class="paper">
                            <div class="line"></div>
                            <div class="line"></div>
                            <div class="line"></div>
                            <div class="line"></div>
                            <div class="line"></div>
                            <div class="line"></div>
                            <div class="line"></div>
                            <div class="line"></div>
                            <div class="line"></div>
                            <div class="line"></div>   
                        </div>
                        <div class="box">
                            <div class="title">Thêm từ khóa:</div>
                            <div class="square1"></div>       
                        </div>
                        <p class="add"><a href="">+</a></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="booking-apm" id="myDIV" >
            <div class="content">
                <img src="../image/background.png" alt="" class="background">
                <button class="exit" onclick="myFunction()">X</button> 
                <img src="../image/ava1.png" alt="" class="ava">
                <h1 class="name">Phúc Tân</h1>
                <form class="infor-apm">
                    <p class="title">Thông tin cuộc hẹn:</p>
                    <div class="list">
                        <i class="fa-solid fa-clock"></i><p class="time">8 A.M - 9 A.M</p>
                    </div>
                    <div class="list">
                        <i class="fa-solid fa-store"></i><p class="type-location">Coffee</p>
                    </div>
                    <div class="list">
                        <i class="fa-solid fa-location-dot"></i><p class="address">60 Nguyen Luong Bang</p>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d10688.770641389345!2d108.15040840348887!3d16.075210696191036!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314218d68dff9545%3A0x714561e9f3a7292c!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBCw6FjaCBLaG9hIC0gxJDhuqFpIGjhu41jIMSQw6AgTuG6tW5n!5e0!3m2!1svi!2s!4v1681118874787!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                    <div class="list">
                        <i class="fa-solid fa-users"></i><p class="number">3 người khác tham gia</p>
                    </div>
                    <input class="submit" type="submit" value="KẾT NỐI NGAY">
                </form>
            </div>
        </div>
    </div>
    <script>
        function myFunction() {
          var x = document.getElementById("myDIV");
          if (x.style.display === "none") {
            x.style.display = "block";
          } else {
            x.style.display = "none";
          }
        }
    </script>
    <script src="<c:url value="/template/js/Calender.js"/>"></script>
    <script src="<c:url value="/template/js/navbar.js"/>"></script>
    <script src="<c:url value="/template/js/Appointment.js"/>"></script>
</body>
</html>