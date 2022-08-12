<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/pc_header.css"> 
    <title>Header_front</title>
   

</head>

 <!-- 헤더  -->
    <header>
    <form action="">       
        <section>
            <a href="#">
                <div class="top">
                <img class="top_btn" src="${pageContext.request.contextPath}/img/TopBtn.png" alt="">
                top
                </div>
            </a>
 			<!-- 헤더로고 -->
            <a href="index.jsp">
            <img id="H_logo" class="header_logo" src="${pageContext.request.contextPath}/img/Hotel_width_white_logo.png" alt="">            
            </a>
                

                <ul class="over_list01">                                    
                        
                        <li class="Sclick">                        
                           <label>
                            <button type="button" class="btn_search" value="검색" onclick="tog1()">
								&nbsp;&nbsp;&nbsp;<br>
								<br>
							</button>    
                            <div class="searchBar_box">

                                <input class="search" type="text" placeholder="지역, 호텔명">
                            </div>
                           </label>
                           <img id="X" class="X" src="${pageContext.request.contextPath}/img/X.png" alt="" onclick="tog2()">
                           <div class="recommend_box">
                                <div id="recommend" class="Rcontents1"><a href="">강아지</a>
                                    </div>
                                <div id="recommend" class="Rcontents2"><a href="">고양이</a></div>
                                <div id="recommend" class="Rcontents3"><a href="">애견 호텔</a></div>
                           </div>
                    </li>
                        <li class="list" id="over"><a class="text" href="">더보기</a>
                            <div class="more_list" name="morelist">
                                
                                <div id="more_inside" class="more_list_1"><a href="/noticeView.etc">공지사항</a></div>
                                <div id="more_inside" class="more_list_2"><a href="">자주 묻는 질문</a></div>
                                <div id="more_inside" class="more_list_3"><a href="">이용약관</a></div>
                            </div>

                        </li>
                        <li class="list"><a class="text" href="">내주변</a></li>
                        <li class="list"><a class="text" href="/login.login.us">로그인</a>
                        </li>
                        <li/>
                    </ul>
                    <div class="srh_mask" onclick="tog2()">&nbsp;</div>
        </section>
        </form>
        </header>
        <body>
        </body>
 		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        </html>
      



<!-- 자바스크립트로 클래스 이름으로 헤더를 찾아 클래스 명을 추가하여 스크롤을 했을 때
     디자인을 원하는 대로 바꿔 배치하기. (header.roll) -->