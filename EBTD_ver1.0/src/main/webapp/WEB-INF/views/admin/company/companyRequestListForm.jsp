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
            width: 600px;
            
        }
        .ctile{
            text-align: center;
            width: 100%;
            height: 30px;
            background-color: #f9eb99;
        }
        .ccount{
            text-align: right;
        }
        .cbtn{
            text-align: center;
            width: 100%;
            height: 30px;
            background-color: #f9eb99;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<div id="adminheader"><%@ include file="/WEB-INF/views/include/adminheader.jsp" %></div>

    <div class="company-container">
        <input class="ctile" value="회사 등록 신청 List" readonly>
        <div class="ccount">Count : 4 개</div>
        <div>
            <input class="cbtn" value="1.구름운수" readonly>
            <input class="cbtn" value="2.하늘운수" readonly>
            <input class="cbtn" value="3.성운운수" readonly>
            <input class="cbtn" value="4.지훈운수" readonly>
        </div>
    </div>

<div id="adminfooter"><%@ include file="/WEB-INF/views/include/adminfooter.jsp" %></div>
</body>
</html>