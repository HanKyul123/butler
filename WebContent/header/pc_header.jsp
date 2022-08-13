<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Header_login_front</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/pc_header.css">
</head>
<!-- 헤더  -->
<header>
	<section>
		<a href="#">
			<div class="top">
				<img class="top_btn" src="${pageContext.request.contextPath}/img/TopBtn.png" alt=""> top
			</div>
		</a>
		<!-- 헤더 로고 -->
		<a href="index.jsp">
            <img id="H_logo" class="header_logo" src="${pageContext.request.contextPath}/img/Hotel_width_white_logo.png" alt="">            
        </a>
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
				<img id="X" class="X" src="${pageContext.request.contextPath}/img/X.png" alt="" onclick="tog2()">
				<div class="recommend_box">
					<!-- 반복문으로 추천 검색어 가져오기 -->
					<div id="recommend" class="Rcontents1">
						<a href="">강아지</a>
					</div>
					<div id="recommend" class="Rcontents2">
						<a href="">고양이</a>
					</div>
					<div id="recommend" class="Rcontents3">
						<a href="">애견 호텔</a>
					</div>
				</div>
			</li>
			<li class="list" id="over">
				<a href="">더보기</a>
				<div class="more_list" name="morelist">
					<div id="more_inside" class="more_list_1">
						<a href="">공지사항</a>
					</div>
					<div id="more_inside" class="more_list_2"> 
						<a href="">자주 묻는 질문</a>
					</div>
					<div id="more_inside" class="more_list_3">
						<a href="">이용약관</a>
					</div>
				</div>
			</li>
			<li class="list">
				<a href="">내주변</a>
			</li>
			<li id="status_logout" class="list" ><a class="text" href="/login.login.us">로그인</a>
			<li id="status_login" class="list" >
				<div class="set_profile">
					<div class="profile">
						<img class="pf" src="${pageContext.request.contextPath}/img/profile1.png" alt="">&nbsp;
					</div>
					<div class="click_pf">
						<img id="PF" class="Cpf" src="${pageContext.request.contextPath}/img/click_profile.png" alt="">&nbsp;
						<div class="more_profile">
							<div id="CMpf" class="nickname">
								<a href="">닉네임</a>
							</div>
							<div id="CMpf" class="my_inform">
								<a href="">내 정보</a>
							</div>
							<div id="CMpf" class="Reservation">
								<a href="">예약 내역</a>
							</div>
							<div id="CMpf" class="my_review">
								<a href="">내가 쓴 리뷰</a>
							</div>
							<div id="CMpf" class="heart_cart">
								<a href="">찜 목록</a>
							</div>
							<div id="CMpf" class="logout">
								<a href="${pageContext.request.contextPath}/main.logout.us">로그아웃</a>
							</div>
						</div>
					</div>
				</div> <a href=""></a>
			</li>
		</ul>
		<div class="srh_mask" onclick="tog2()">&nbsp;</div>
	</section>
	<c:choose>
    	<c:when test="${sessionScope.loginUser eq null}">
			<script>
				function statusChangelogoutHeader(){
					document.getElementById("status_logout").style.display="block";
					document.getElementById("status_login").style.display="none";
					console.log(11);
				};
				statusChangelogoutHeader();
			</script>
    	</c:when>
    	<c:otherwise>
			<script>
				function statusChangeloginHeader(){
					document.getElementById("status_logout").style.display="none";
					document.getElementById("status_login").style.display="block";
					console.log(22);
				}
			statusChangeloginHeader();
			</script>
    	</c:otherwise>
	</c:choose>
</header>

</html>
      



<!-- 자바스크립트로 클래스 이름으로 헤더를 찾아 클래스 명을 추가하여 스크롤을 했을 때
     디자인을 원하는 대로 바꿔 배치하기. (header.roll) -->