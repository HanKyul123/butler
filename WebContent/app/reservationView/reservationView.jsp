<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>예약하기</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/pc_header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reservation.css">
    <link rel="icon" href="${pageContext.request.contextPath}/img/Hotel_icon.png">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css">
    <script src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <script>
        
        $(function () {
        

        $('#demo').daterangepicker({
            "locale": {
                "format": "YYYY-MM-DD",
                "separator": " ~ ",
                "applyLabel": "확인",
                "cancelLabel": "취소",
                "fromLabel": "From",
                "toLabel": "To",
                "customRangeLabel": "Custom",
                "weekLabel": "W",
                "daysOfWeek": ["월", "화", "수", "목", "금", "토", "일"],
                "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
                "firstDay": 1,
                "mindate" : 0

                ,onClose: function( selectedDate ) {    
            // 시작일(fromDate) datepicker가 닫힐때
            // 종료일(toDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
            $("#demo").datepicker( "option", "minDate", selectedDate );
            },

            "startDate":0,
            "endDate":0,
            "drops": "down"

        }
        
        }, function (start, end, label) {
            console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
        });



        $('#demo').daterangepicker('setDate', 'today');
           
        
    });
    
    // let startdate = $('#demo').data('daterangepicker').startDate;
    // let enddate =$('#demo').data('daterangepicker').endDate;

    // console.log(startdate);



    </script>
</head>


<%@ include file="../../header/pc_header.jsp" %>



<body class="reservation_wrap">
<div class="mask"></div>
   

    <div class="box1">
        <div class="Hotel_pic">

            <div class="bigpic">
                <img id="pictures" src="${pageContext.request.contextPath}/img/example_hotel.webp" alt="">
            </div>
            <div class="small">
                <div  id="smallpic">
                    <img id="pictures" src="${pageContext.request.contextPath}/img/example_hotel.webp" alt="">

                </div>
                <div  id="smallpic">
                <img id="pictures" src="${pageContext.request.contextPath}/img/example_hotel.webp" alt="">
                    
                </div>
                <div  id="smallpic">
                    <img id="pictures" src="${pageContext.request.contextPath}/img/example_hotel.webp" alt="">

                </div>
                <div  id="smallpic">
                    <img id="pictures" src="${pageContext.request.contextPath}/img/example_hotel.webp" alt="">

                </div>
            </div>
            
        </div>

        <div class="Hotel_explain">
            <div class="Hotel_name">호텔이름</div>
            <div class="Hotel_addr">호텔주소</div>
            <div class="Hotel_info">호텔정보</div>
        </div>
    </div>


<!-- 예약 종류 선택하기 -->
    <div class="box2">
        <div class="addanimal">
            <div class="selectanimal">우리 아이는</div>
                <select name="반려동물 종류" id="animal">
                   
                    <option class="uderline" value="선택" selected="selected">선택</option>
                    <option value="강아지">강아지</option>
                    <option value="고양이">고양이</option>
                    <option value="그 외">그 외 (소동물)</option>
                </select>
            
            <div class="selectprice">몸무게는요</div>
            <!-- 강아지 무게 -->
                <select name="상세정보" id="selectbox" class="dog_weight">
                    
                    <option value="50000">1 ~ 5kg 1박 50000원</option>
                    <option value="80000">6 ~ 10kg 1박 80,000원</option>
                    <option value="120000">11 ~ 15kg 1박 120,000원</option>
                    <option value="150000">16 ~ 20kg 1박 150,000원</option>
                    <option value="180000">20kg 이상 1박 180,000원</option>
                </select>
                
            <!-- 고양이 무게 -->
                <select name="상세정보" id="selectbox" class="cat_weight">
                    
                    <option value="30000">1 ~ 5kg 1박 30000원</option>
                    <option value="60000">6 ~ 10kg 1박 60,000원</option>
                    <option value="80000">10kg 이상 1박 80,000원</option>
                </select>
                
            <!-- 소동물 무게 -->
                <select name="상세정보" id="selectbox" class="else_weight">
                    
                    <option value="20000">1 ~ 3kg 1박 20000원</option>
                </select>

                <button class="add" disabled="disabled" onclick="copyDiv()">추가하기</button>



                <!-- -----추가 시 뜨는 창----- -->
                 <!-- 무게창 고르면 display:flex 로 바꾸기  -->

                 <div id="parentadd" class="parentadd">

                    <!-- <div class='addinfo' id='addinfo'>
                        <div class='animal_info'>
                        <span class='animalname'>종류</span>
                        <span class='animalprice'>무게와 가격</span>
                        </div>
                        <div class='Xbtn'>
                        <img id='Xbtn' src='img/X_gray.png'><button id='remove_btn'></button></div>
                    </div> -->

                </div>

        </div>
        <div class="pickdate">
            
            <div class="datecontent">
                <label><img src="${pageContext.request.contextPath}/img/calender.png" alt="" class="calender_img">
                <input type="text" id="demo" name="demo" value="" readonly></label>
            </div>

        </div>

<!-- 총 기간과 가격 -->
        <div class="buy">
            <div class="totaldate">총 기간 몇박 몇일</div>
            <div class="pricetitle">가격</div>
            <div class="totalprice">
                <span class="pricecontent">0</span>
                <span class="pricewon">원</span>
            </div>
            <div class="reserbtnflex">
            <button class="reservation_btn">예약하기</button>
            <img src="${pageContext.request.contextPath}/img/reservationCart.png" alt="" class="cart">
        </div>
    </div>

    </div>


<!-- 호텔정보 / 사업자정보 / 리뷰 버튼 -->
    <div class="box3">
        <div class="Dtail_btn">
            <a href="#D1"><button class="HotelDtail_info_title" href="#D1">
                <span class="Hbtn_title">호텔정보</span>
            </button></a>
            <a href="#D2"><button class="Entrepreneur_info_title">
                <span class="Ebtn_title">사업자 정보</span>
            </button></a>
            <a href="#D3"><button class="review_info_title">
                <span class="Rbtn_title">리뷰</span>
            </button></a>
        </div>


<!-- 호텔 상세 정보 란 -->
        <a id="aa" name="D1">
            <article class="HotelDtail_box" >
                <div class="startHD">※<span>
                    ~ 
                </span>호텔/동물병원의 상세정보 입니다.※</div>

                <div class="HD_explain">
                    <span class="HDE">이 칸은 호텔 정보를 자유롭게 적습니다.</span>
                </div>
                
                <div class="HDpic">호텔 이미지를 올리는 곳<br>현재 height는 auto 이기 때문에 아래처럼 올려지는 사진 크기대로 높이가 정해짐.
                
                <img src="${pageContext.request.contextPath}/img/메인베너배경이미지.png" alt="">
                </div>
            </article>
        </a>

<!-- 사업자 상세 정보 란 -->
    <a id="aa" name="D2">
        <article class="Entrepreneur_info_box">
            <div class="Einfotitle">▶사업자 정보</div>
            
            <div class="Entrepreneur_box">
                <table>
                    <tr id="Etr">
                        <td id="Etitle" class="ET">사업자</td>
                        <td class="ET">김아무개</td>
                    </tr>
                    <tr id="Etr">
                        <td id="Etitle" class="ET">사업자 등록번호</td>
                        <td class="ET">00000000</td>
                    </tr>
                    <tr id="Etr">
                        <td id="Etitle" class="ET">E-mail</td>
                        <td class="ET">이메일</td>
                    </tr>
                    <tr>
                        <td id="Etitle" class="ET">영업 소재지</td>
                        <td class="ET">북한</td>
                    </tr>
                </table>

            <!-- GSP 들어가는 공간 -->
            </div>
            <div class="Hotel_map_title">⭐ 오시는 길</div>
            <div class="Hotel_map">
                호텔 GPS가 들어가는 공간입니다.
            </div>

        </article>
    </a>

    
<!-- 유저가 올리는 리뷰 -->
<a id="aa" name="D3">
        <article class="review_info_box">

            <div class="Rtitle">▶리뷰
                <button id="go_reservation_info">리뷰 쓰러 가기</button>
            </div>
            
            <div class="Review_Reply">
            
            <div class="user_review_box">

                <div class="user_info">
                    <span class="usernick">유저닉네임</span>
                    <img class="user_from" src="${pageContext.request.contextPath}/img/카카오톡.png" alt="">
                    <span class="user_date">날짜</span>

					<!-- 유저 리뷰 수정하는 버튼 -->
                    <button id="modify_Review" class="Review_btn" onclick="modify()"><img id="modi" src="${pageContext.request.contextPath}/img/modify_icon.png" alt="" class="MD"></button>
                    
                    <!-- 유저 리뷰 삭제하는 버튼 -->
                    <button id="delete_Review" class="Review_btn" onclick="delete_review()"><img id="delete" src="${pageContext.request.contextPath}/img/delete.png" alt="" class="MD"></button>
                    
                    <br>
                    <span class="user_pet">
                       	 아이 종류:
                    </span>
                    <span class="user_pet_what">강아지</span>

                </div>

                <div id="Rbox" class="user_review">

                    <div id="Rbox" class="user_contents">여기는 리뷰내용 입니다. <br>
                  	 	 리뷰를 마음껏 작성하세요.</div>
                </div>

                <!-- 유저가 올리는 사진 -->
                <div class="user_review_pic">
                    <div class="user_pic">
                        <img class="user_pic" src="${pageContext.request.contextPath}/img/메인베너배경이미지.jpg" alt="">
                    </div>
                </div>

            </div>

			<!-- 수정박스 -->
            <div class="Mbox">
                <div class="flex_go">
                    <div>
                        <span id="user_pet_M" class="Mall">
                            	아이 종류:
                        </span>
                        <span id="user_pet_what_M" class="Mall">강아지</span>
                        <br>
                        <span id="price_prod" class="Mall">무게와 가격</span>
                    </div>

                    <div class="btnbox">
                        <button class="CB" onclick="complete()">
                            <img src="${pageContext.request.contextPath}/img/complete_btn.png" alt="" id="Mbtn" class="MCbtn">
                        </button>
                        <button class="CB" onclick="cancel()">
                            <img src="${pageContext.request.contextPath}/img/Mdelete_btn.png" alt="" id="Dbtn" class="MCbtn">
                        </button>
                    </div>
                </div>
                <textarea name="" id="Mnew_review" cols="30" rows="10"></textarea>
            </div>

<!-- 관리인 리뷰 답장 -->
            <div class="replyBigbox">
                <img src="${pageContext.request.contextPath}/img/Ladder.png" alt="" class="ladder">
                <div class="reply_box">

                    <div class="manager_info">
                        <img src="${pageContext.request.contextPath}/img/manager_icon.png" alt="" class="manager_icon">
                        <div class="manager_name">관리인 닉네임 또는 이름</div>
                        <div class="manager_date">날짜</div>
                    </div>

                    <div class="manager_Hotelname">여기는 호텔 이름입니다.</div>
                    
                    <div class="manager_reply">여기는 답장 내용입니다. <br> 답자아아앙</div>
                </div>
            </div>
        </div>
        <!-- <div id="emty_review">
                <div id="ER">아직 리뷰가 없습니다.</div>
            </div> -->
        </article>
        </a>
    </div>
    
</body>

<%@ include file="../../footer/footer.jsp" %>


<script src="${pageContext.request.contextPath}/js/reservation.js"></script>
<script src="${pageContext.request.contextPath}/js/pc_header.js"></script>
<!-- <script src="script/test2.js"></script> -->
<!-- <script src="/plugins/moment/moment.min.js"></script>
<script src="/plugins/daterangepicker/daterangepicker.js"></script> -->

<!--        
        <script src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script> -->


</html>