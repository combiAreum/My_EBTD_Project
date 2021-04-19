<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 메인 페이지</title>
    <!--폰트어썸-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/v4-shims.css">
    <!--부트스트랩-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- 차트 링크 -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>

    <style>
        body{
            margin: 0;
            padding: 0;
            border: 0;
            color: white;
            min-height: 100%;
        }
        .footer-container img{
            height: 60px;
        }
        /*600px 이하 일 때 사용하는 미디어쿼리*/
        @media screen and (max-width: 600px){
            footer{
                height: 100px;
                position:absolute;
                width:100%;
            }
            .footer-container{
                background-color : #0C3D6A;
                height: 100px;
                text-align: center;
                padding-top: 10px;
                padding-bottom: 20px;
                font-size: 10px;
            }
        }
        /*600px 이상 일 때 사용하는 미디어쿼리*/
        @media screen and (min-width: 600px){
            footer{
                position: fixed;
                left: 0px;
                bottom: 0px;
                height: 100px;
                width: 100vw;
            }
            .footer-container{
                background-color : #0C3D6A;
                height: 100px;
                text-align: center;
                padding-top: 10px;
                padding-bottom: 20px;
                font-size: 10px;
            }
        }

    </style>
</head>
<body>
    <footer>
        <div class="footer-container">
            <div>
                <img src="/resources/image/teamlogo.png" alt="BITS로고"/>
            </div>
            <div>
                김혜지, 김아름, 김민주, 김주한, 신재구, 이충호, 황원혁
            </div>
        </div>
    </footer>
</body>
</html>