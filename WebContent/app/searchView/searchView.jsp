<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="img/Hotel_icon.png">
    <link rel="stylesheet" href="../../css/search.css">
    <link rel="stylesheet" href="../../css/footer.css">
    <link rel="stylesheet" href="../../css/pc_header.css">
    <title>Butler-Animal Hotel 검색 결과</title>
</head>
<!-- 헤더  -->
<header>
    <section>
        <a href="#">
            <div class="top">
            <img class="top_btn" src="../../img/TopBtn.png" alt="">
            top
            </div>
        </a>
        <!-- 헤더 로고 -->
        <!-- <a href=""><div class="icon_img"></div></a> -->
        <a href="../main/main_logout.jsp"><img id="H_logo" class="header_logo" src="../../img/Hotel_width_white_logo.png" alt=""></a>
            <!-- onclick 주고 클릭하면 메인화면으로 돌아가기 -->

            <ul class="over_list01">                                    
                    
                    <li class="Sclick">                        
                       <label>
                        <button type="button" class="btn_search" value="검색" onclick="tog1()">
                            &nbsp;&nbsp;&nbsp;<br><br>
                        </button>       
                        <div class="searchBar_box">

                            <input class="search" type="text" placeholder="지역, 호텔명">
                        </div>
                       </label>
                       <img id="X" class="X" src="../../img/X.png" alt="" onclick="tog2()">
                       <div class="recommend_box">
                            <div id="recommend" class="Rcontents1"><a href="">강아지</a>
                                </div>
                            <div id="recommend" class="Rcontents2"><a href="">고양이</a></div>
                            <div id="recommend" class="Rcontents3"><a href="">애견 호텔</a></div>
                       </div>
                </li>
                    <li class="list" id="over"><a class="text" href="">더보기</a>
                        <div class="more_list" name="morelist">
                            
                            <div id="more_inside" class="more_list_1"><a href="">공지사항</a></div>
                            <div id="more_inside" class="more_list_2"><a href="">QnA</a></div>
                            <div id="more_inside" class="more_list_3"><a href="">이용약관</a></div>
                        </div>

                    </li>
                    <li class="list"><a class="text" href="">내주변</a></li>
                    <li class="list"><a class="text" href="">로그인</a>
                    
                    </li>
                </ul>
                <div class="srh_mask" onclick="tog2()">&nbsp;</div>
    </section>
    </header>
<body>
    <!-- 검색 키워드 -->
    <div class="SearchWord">
        <span class="">'검색어'</span>
    </div>

    <div class="wrap1">
        <!-- 태그 고르기 -->
        <div class="Tagbox">

            <!-- 날짜 -->
            <div id="Tagin" class="datebox">
                <div class="datetitle">날짜</div>
                <div class="today">오늘 날짜 : <span id="today"></span></div> 
                <input type="text" id="datepicker1" readonly >
                ~
                <input type="text" id="datepicker2" readonly>
          
          
                <img id="calender" src="../../img/calender.png" alt="">
            </div>
           
            <!-- 상세 조건 -->
            <div id="Tagin" class="detail"><span>상세 조건</span></div>

            <!-- 반려동물 분류 -->     
            <div id="Tagin" class="Type">
                <div id="TypeTitle" class="petType">반려동물 분류</div>
                <div class="checkbox1">
                    <label><input type="checkbox" name="dog" id="pet">강아지</label>
                    <label><input type="checkbox" name="cat" id="pet">고양이</label>
                    <label><input type="checkbox" name="else_pet" id="pet">그 외</label>
                </div>
            </div>


            <!-- 숙소 분류 -->
            <div id="Tagin" class="Type">
                <div id="TypeTitle" class="HotelType">숙소 분류</div>
                <div class="checkbox2">
                    <label><input type="checkbox" name="Hotel" id="Hotel">호텔</label><br>
                    <label><input type="checkbox" name="Hospital" id="Hotel">동물병원</label>
                </div>
            </div>

        </div>

        <!-- 검색 결과 상품들 -->
        <div class="prod">

            <!-- 필터 -->
            <div class="choice">
                <input type="button" value="거리순">
                <input type="button" value="낮은 가격순">
            </div>


            <!-- 호텔란 -->
            
            <a href=""><div class="prodbox">
                <table class="prodtable">
                    
                    <!-- 호텔사진, 안쪽에 좋아요 버튼 -->
                    <div class="HotelPic">배경에사진
                        <div class="heart">
                            <img src="" alt="">
                        </div>  
                    </div>

                    <!-- 호텔 소개란 -->
                    <div class="Hotelprodbox">
                        <!-- 호텔 이름 -->
                        <div class="Hotelname"><span>호텔명</span></div>
                        <div class="famousbox">
                            <div class="star">별점</div>
                            <div class="reviewcnt"><span id="reviewcnt">리뷰수</span></div>
                        </div>
                        <div class="address"><span id="address">서울 강동구 머시기</span></div>
                        <div class="Hotelinfo"><span id="Hotelinfo">이호텔짱좋음오셈</span></div>
                        <div class="Hotelprice">
                            <span class="price"><span id="price"></span>1000</span>
                            <span class="won">원</span>
                        </div>
                    </div>
                </table>
            </div></a>


        </div>


        <!-- 검색결과 상품들 나열 -->


    </div>
    
</body>
<!-- Footer -->
<footer id="footer">
    <div class="inner">
        <section class="info">
            <h3 class="info-name"><b>Team NORUN</b></h3>
            <div class="about">
                <img class="under-logo" src="../../img/Hotel_logo.PNG" alt="" style="background-repeat: no-repeat;">
                
            </div>
            <div class="team">
                <article>
                    <span class="image"><img class="team-img" src="../../img/images/아루.webp" alt=""></span>
                    <p>
                        <strong class="name">김한결</strong>
                        <span class="title">하늘같은 팀장님</span>
                    </p>
                </article>
                <article>
                    <span class="image"><img  class="team-img" src="../../img/images/cat.jpg" alt=""></span>
                    <p>
                        <strong class="name">강예은</strong>
                        <span class="title">팀 간판</span>
                    </p>
                </article>
                <article>
                    <span class="image"><img  class="team-img" src="../../img/images/김병준.jpg" alt=""></span>
                    <p>
                        <strong class="name">김병준</strong>
                        <span class="title">서강준</span>
                    </p>
                </article>
                <article>
                    <span class="image"><img  class="team-img" src="../../img/images/bono.jpg" alt=""></span>
                    <p>
                        <strong class="name">정경운</strong>
                        <span class="title">노런 지니어스</span>
                    </p>
                </article>
                <article>
                    <span class="image"><img  class="team-img" src="../../img/images/궁예.jpg" alt=""></span>
                    <p>
                        <strong class="name">문규혁</strong>
                        <span class="title">구라쟁이</span>
                </p>
            </article>
            
        </div>
    </section>
    <section class="contact">
        <h3>Contact Us</h3>
        <ul class="contact-icons">
            <li class="icon-phone">코리아IT아카데미(815-88-00171)</li>
            <li class="icon-home">서울특별시 강남구 테헤란로<br>146 현익빌딩 3층, 4층</li>
            <li class="icon solid fa-envelope"><a href="mailto:koreais@koreaedugroup.com">koreais@koreaedugroup.com</a><br> 교육담당 : zㅣ존 정다솔</li>
            <li class="icon-copy">&copy;2015 KOREA INFORMATION TECHNOLOGY ACADEMY</li>
            <li class="importantnum">대표 문의 : 02-583-0021</li>
        </ul>
    </section>
</div>
<div class="copyright">
    &copy; Butler :: Animal Hotel | NORUN
</div>
</footer>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="../../js/searchdate.js"></script>
<script src="../../js/pc_header.js"></script>


</html>