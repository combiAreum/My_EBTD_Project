<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/v4-shims.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
        body{
            margin: 0;
            padding: 0;
            border: 0;
            color: white;
            width: 450px; /*만들땐 450px에 두고 만들고 실제로 핸드폰 구현시는 100vw*/
        }
        .container {
            display: flex;
            justify-content: center;
            background-color : #0C3D6A;
            width: 450px;
            height: 80px;
            text-align: center;
        }
        .headertitle{
            padding-top: 10px;
            padding-right: 15px;
            font-size: 50px;
        }
        .headertitle img{
            height: 57px;
        } 
        .headerbell{
            color: yellow;
            padding-top: 25px;
            padding-right: 30px;
            font-size: 40px;
        }
        .headerbtn{
            padding-top: 8px;
            padding-bottom: 8px;
            border-radius: 8px;
            background-color: yellow;
            color: #0C3D6A;
            font-size: 20px;
        }
        .navdiv{
            display: flex;
            justify-content: space-around;
            height: 100%;
            background-color: lightgray;
            color: black;
        }
        .navline{
            margin-left: 10px;
            font-size: 30px;
            color: #0C3D6A;
            background-color: lightgray;
            border: none;
        }
        .navline:focus{outline: none;}
        .navcontent {
            display: flex;
            align-items: center; /*세로 가운데 정렬*/
            justify-content: flex-end; /*가로 가운데 정렬*/
            margin-right: 15px;
            background-color: lightgray;
            color: #0C3D6A;
            font-size: 18px;
            border: none;
            cursor: pointer;
            height: 40px;
            width: 240px;
            flex-grow: 1;
        }
        main{
            min-height: 100%;
        }
        .mainview{
            position: relative;
            font-size: 40px;
            color: black;
            padding: 20px;
            padding-bottom: 120px; /*footer여백*/
        }
        .menu_bg { 
            width: 450px;
            height: 530px;
            position: absolute;
            top:80px;
            left:0px;
            overflow: hidden;
            display: none;
            z-index: 10;
        }
		.menu {
            position:absolute;
            top:0px;
            left:0px;
            width:100%;
            height: 100%;
            background-color:#DDD;
        }
		.menu > div {
            padding: 2%;
        }
        .mainmenu{
            font: bold;
            font-size: 28px;
        }
        .mainmenu:hover{
            background-color: gray;
        }
        .menu {
            text-align: center;
            font-size: 18px;
        }
        .menu a{
            text-decoration: none;
            font: bold;
            color: #0C3D6A;
        }
        .menudetail:hover {
            background-color: gray;
        }
        .maindetail{
            height: 27vh;
            text-align: center;
        }
        .maindetail input{
            width: 385px;
            height: 175px;
            background-color: #f9eb99;
            text-align: center;
            border-radius: 8px;
            border: none;
        }
        .mainbtn{
            text-align: center;
        }
        .mainbtn button{
            width: 190px;
            font-size: 30px;
            padding-top: 40px;
            padding-bottom: 40px;
            margin-top: 10px;
            background-color: #0C3D6A;
            color: #f6e056;
            border-radius: 8px;
            border: none;
        }
    </style>
    <script>
        let speed = 500; //슬라이드 속도
        // 메뉴를 오른쪽으로 슬라이드하여서 보여준다.
        function ShowMenu(){
            $('.menu_bg').css({'display':'block'});
            $('.menu').css({'left':'-100%'});
            $('.menu').animate({left:'0px'},{duration:speed});
        }
        // 메뉴를 왼쪽으로 슬라이드하여서 닫는다.
        function HideMenu(){
            $('.menu').animate(
                {left:'-100%'},{duration: speed,complete:function(){
                                $('.menu_bg').css({'display':'none'});}
                }
            );
        }
    </script>
</head>
<body>
    <header>
        <div class="container">
            <div class="headertitle">&nbsp;<img src="./resources/image/mainlogo.png" alt="EBTD메인로고"/></div>
        </div>
        <nav class="navdiv">
            <div class="dropdown">
                <button class="navline" onclick="ShowMenu()"><i class="fas fa-bars"></i></button>
                <div class="menu_bg">
                    <div class="menu"> <!--dropdown-content-->
                        <div  style="width: 96%; height: 13px; text-align: right" onclick="HideMenu()">닫기</div>
                        <div class="mainmenu"><a>예약하기</a></div>
                        <div class="menudetail"><a href="#">- 버스 검색</a></div>
                        <div class="menudetail"><a href="#">- 정류장 검색</a></div>
                        <div class="mainmenu"><a>예약확인</a></div>
                        <div class="mainmenu"><a>즐겨찾기</a></div>
                        <div class="mainmenu"><a>마이페이지</a></div>
                        <div class="menudetail"><a href="#">- 이용내역</a></div>
                        <div class="menudetail"><a href="#">- 고객소리함</a></div>
                        <div class="menudetail"><a href="#">- 내 정보 확인</a></div>
                        <div class="menudetail"><a href="#">- 로그아웃</a></div>
                    </div>
                </div>
            </div>
            <div class="navcontent">
                <p>하성운</p>님 환영합니다~!
            </div>
        </nav>
    </header>
</body>
</html>