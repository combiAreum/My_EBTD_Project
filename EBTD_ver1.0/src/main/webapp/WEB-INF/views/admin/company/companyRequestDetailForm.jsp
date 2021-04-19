<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회사 관리 페이지</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
    	.company-container{
            width: 800px;
            color: black;
        }
        .cdate{
            text-align: right;
        }
        .cname{
            text-align: center;
            width: 100%;
            margin-bottom: 10px;
        }
        .cdetail{
            text-align: center;
            width: 100%;
            border: 1px solid black;
        }
        .cdetail-content{
        	border: none;
        }
        .cdetail-content:focus{
			outline:none;
        }
        .cdetail-btn{
            text-align: center;
            background-color: lightgray;
            border-radius: 8px;
            border: none;
            margin: 10px;
            width: 100px;
            height: 40px;
        }
        .cdetail-btn:hover{
        	background-color: gray;
        }
    </style>
</head>
<body>
<div id="adminheader"><%@ include file="/WEB-INF/views/include/adminheader.jsp" %></div>

    <div class="company-container">
        <div class="cdate">신청일 : </div>
        <input class="cname" type="text" value="구름운수">
        <table class="cdetail">
        	<tr>
        		<td><input class="cdetail-content" type="text" value="구름운수 신청 내용"></td>
			</tr>
			<tr>
			    <td>
                	<button class="cdetail-btn">공문보기</button>
                	<button class="cdetail-btn">승인</button>
                	<button class="cdetail-btn">반려</button>
				</td>
			</tr>
        </table>
    </div>

<div id="adminfooter"><%@ include file="/WEB-INF/views/include/adminfooter.jsp" %></div>
</body>
</html>