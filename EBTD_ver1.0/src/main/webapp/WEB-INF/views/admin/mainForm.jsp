<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!--부트스트랩-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<!-- 차트 링크 -->
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<script>
    var ctx = document.getElementById('myChart'); var myChart = new Chart(ctx, { type: 'bar', data: { labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'], datasets: [{ label: '# of Votes', data: [12, 19, 3, 5, 2, 3], backgroundColor: [ 'rgba(255, 99, 132, 0.2)', 'rgba(54, 162, 235, 0.2)', 'rgba(255, 206, 86, 0.2)', 'rgba(75, 192, 192, 0.2)', 'rgba(153, 102, 255, 0.2)', 'rgba(255, 159, 64, 0.2)' ], borderColor: [ 'rgba(255, 99, 132, 1)', 'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)', 'rgba(75, 192, 192, 1)', 'rgba(153, 102, 255, 1)', 'rgba(255, 159, 64, 1)' ], borderWidth: 1 }] }, options: { scales: { yAxes: [{ ticks: { beginAtZero: true } }] } } });
</script>
<style type="text/css">
            .mainview{
                display: flex;
                justify-content: space-around;
                position: relative;
                font-size: 40px;
                color: black;
                padding: 20px;
                padding-bottom: 120px; /*footer여백*/

            }
</style>
</head>
<body>
<div id="adminheader"><%@ include file="/WEB-INF/views/include/adminheader.jsp" %></div>

    <main class="mainview">
        <table class="maintable">
            <tr>
                <td colspan="2">
                     <div class="container">
                        <canvas id="myChart"></canvas>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="container2" style="margin-right: 10px;">
                        <canvas id="myChart2"></canvas>
                    </div>
                </td>
                <td>
                    <div class="container3" style="margin-left: 10px;">
                        <canvas id="myChart3"></canvas>
                    </div>
                </td>
            </tr>
        </table>
         <!-- 부트스트랩 -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
         <!-- 차트 -->
        <script>
        //지역별 이용자 유형 총인원 챠트
            const DATA_COUNT = 2;
            const NUMBER_CFG = {count: DATA_COUNT, min: -100, max: 1000};
            var ctx = document.getElementById('myChart');
            var myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: ['만수동', '서창동', '불로동', '연수동', '간석동'],
                    datasets: [
                        {
                        label: '휠체어이용자',
                        data: [10,20,30,40,50],
                        backgroundColor: 'yellow',
                        },
                        {
                        label: '시각장애인',
                        data: [5,10,15,20,25],
                        backgroundColor: 'green',
                        }
                    ]
                },
                options: {
                    plugins: {
                        title: {
                            display: true,
                            text: 'Chart.js Bar Chart - Stacked'
                        },
                        responsive: true,
                        scales: {
                        x: {
                            stacked: true,
                        },
                        y: {
                            stacked: true
                        }
                        }
                    }
                }
            });
        // 유형별 이용자 총인원 챠트
            var ctx2 = document.getElementById('myChart2');
            var myChart = new Chart(ctx2, {
                type: 'bar',
                data: {
                    labels: ['휠체어 이용자', '시각 장애인'],
                    datasets: [{
                        label: '# 유형별 이용자',
                        backgroundColor: 'transparent',
                        borderColor: 'red',
                        data: [95, 213],
                        backgroundColor: [
                            'rgba(98,108,255, 0.2)',
                            'rgba(54, 162, 235, 0.2)'
                        ],
                        borderColor: [
                            'rgba(255, 99, 132, 1)',
                            'rgba(54, 162, 235, 1)'
                        ],
                        borderWidth: 1
                        
                    }]
                },
                options: {
                    scales: {
                        yAxes: [{
                            ticks: {
                                beginAtZero: true
                            }
                        }]
                    }
                }
            });

        //도넛형 챠트
            data = {
                datasets: [{
                    backgroundColor: ['blue','red'],
                    data: [109, 20]
                }], // 라벨의 이름이 툴팁처럼 마우스가 근처에 오면 나타남
                labels: ['만족','불만족']
            }; // 가운데 구멍이 없는 파이형 차트
            var ctx3 = document.getElementById("myChart3");
            var myPieChart = new Chart(ctx3, {
                type: 'pie',
                data: data, options: {}
            }); 
        </script>
    </main>

<div id="adminfooter"><%@ include file="/WEB-INF/views/include/adminfooter.jsp" %></div>
</body>
</html>