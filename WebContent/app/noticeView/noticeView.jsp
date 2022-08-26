<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="under1"S
	href="${pageContext.request.contextPath}/img/under1.png">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/notice.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/pc_header.css">
<title>공지사항</title>
<%@ include file="../../header/pc_header.jsp"%>
</head>
<body>
	<div class="notice_wrap">
		<div class="moremore" id="content">
            <nav>
                <ul>
                    <li>
                        <a href="" id="click" class="more_a">공지사항</a>
                    </li>
                    <li>
                    <a href="" class="more_a">자주 묻는 질문</a>
                    </li>
                    <li>
                        <a href="" class="more_a">약관 및 정책</a>
                    </li>
                </ul>
            </nav>
            </div>
            
			<div class="t_notice">
				<div class="notice">
					<div class="tab">
						<span class="tab_btn"> 서비스 공지사항 </span>
					</div>
					<div class="tab_more">
						<ul class="notice_list" id="notice">
							<li><a href="javascript:GetShow()" class="all_list"
								id="notice_tab">

									<p>[발표] 9월 1주차 무료 초대권 이벤트</p> <span>2022.07.27</span> <img
									src="${pageContext.request.contextPath}/img/under1.png"
									width="18px" class="under">
									<div id="plus" style="display: none;">
										<span> adasdasdasdas <br> asd <br> as <br>
											adasdasdasdasqweqwe <br> qweqweqweqwewq <br>
											fdhdfghdfhdfhdfh <br> hjkhjkhjkhjk <br>
										</span>
							</a></li>
					
					<li><a href="javascript:GetShow2()" class="all_list"
						id="notice_tab">
							<p>[발표] 9월 1주차 버틀러 응원하기 이벤트</p> <span>2022.07.25</span> <img
							src="${pageContext.request.contextPath}/img/under1.png"
							width="20px" class="under"
							style="background-color: rgba(white, white, white, alpha)">
							<div id="plus_2" style="display: none;">
								<span> safsafsadfsdafsdafsadfsdafsdafsadf </span>
						</a>
				
					</li>
					
					<li><a href="javascript:GetShow3()" class="all_list"
						id="notice_tab">
							<p>[발표] 8월 도전룰렛 블랙 숙박권 당첨안내</p> <span>2022.07.21</span> <img
							src="${pageContext.request.contextPath}/img/under1.png"
							width="20px" class="under">
							<div id="plus_3" style="display: none;">
								<span> safsafsadfsdafsdafsadfsdafsdafsadf </span>
					</a>
				
	
					</li>
					<li><a href="javascript:GetShow4()" class="all_list"
						id="notice_tab">
							<p>[발표] 7월 3주차 무료 초대권 이벤트</p> <span>2022.07.18</span> <img
							src="${pageContext.request.contextPath}/img/under1.png"
							width="20px" class="under">
							<div id="plus_4" style="display: none;">
								<span> safsafsadfsdafsdafsadfsdafsdafsadf </span>
						</a>
					</li>
				</ul>
		</div>
		
		<div id="notice_page">
			<div class="page">
				<button class="on">1</button>
				<button class="off">2</button>
				<button class="off">3</button>
				<button class="off">4</button>
				<button class="off">5</button>
				<button class="next">다음</button>
			</div>
		</div>
	</div>
	</div>
	</div>
	</div>
	</div>




</body>
<%@ include file="../../footer/footer.jsp"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="${pageContext.request.contextPath}/js/notice.js"></script>
<script src="${pageContext.request.contextPath}/js/pc_header.js"></script>
</html>
</body>
</html>