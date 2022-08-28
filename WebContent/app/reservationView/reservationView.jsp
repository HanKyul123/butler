<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<%@ include file="../../header/pc_header.jsp"%>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>예약하기</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/reservation.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/footer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/pc_header.css">
<link rel="icon"
	href="${pageContext.request.contextPath}/img/Hotel_icon.png">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css">
<script src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>

<script>

	let nowdate = 0;

	$(function() {

		let txttotalprice = document.getElementById("pricecontent");
		const insidecnt = document.getElementById("parentadd");
		let nowdate2 = document.getElementById("nowdate");
		nowdate2.value = 1;
		$('#demo')
				.daterangepicker(
						{

							"locale" : {
								"format" : "YYYY-MM-DD",
								"separator" : " ~ ",
								"applyLabel" : "확인",
								"cancelLabel" : "취소",
								"fromLabel" : "From",
								"toLabel" : "To",
								"customRangeLabel" : "Custom",
								"weekLabel" : "W",
								"daysOfWeek" : [ "월", "화", "수", "목", "금", "토",
										"일" ],
								"monthNames" : [ "1월", "2월", "3월", "4월", "5월",
										"6월", "7월", "8월", "9월", "10월", "11월",
										"12월" ],
								"firstDay" : 1

							},

							"startDate" : 0,
							"endDate" : 0,
							"drops" : "down"
						},
						function(start, end, label) {

								console.log('New date range selected: '+ start.format('YYYY-MM-DD') + ' to '+ end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
							
							
							let totaldate = document.getElementById("totaldate");
							let totaldate2 = document.getElementById("totaldate2");
								console.log(end.format('DD') - start.format('DD'));

							let startMM = parseInt(start.format('MM'));
							let endMM = parseInt(end.format('MM'));

							let startDD = parseInt(start.format('DD'));
							let endDD = parseInt(end.format('DD'));

							if (endMM == startMM) {

								console.log("체크 아웃 달 = 체크인 달");
								/* 체크 아웃 달 == 체크인 달 */
								
								if (endDD > startDD) {
									nowdate = endDD - startDD;
									
								} else if (endDD < startDD) {
									nowdate = startDD - endDD;
								}
							}

							
							else if (endMM > startMM) {

								console.log("체크 아웃 달 > 체크인 달");
								/* 체크 아웃 달 > 체크인 달 */

								if ((startMM % 2 == 0) && startMM < 8) {
									nowdate = (30 - startDD) + endDD;

								} else if ((startMM % 2 == 1) && startMM < 8) {
									nowdate = (31 - startDD) + endDD;
								} else if (startMM == 2) {
									nowdate = (28 - startDD) + endDD;

								} else if ((startMM >= 8) && startMM % 2 == 0) {
									nowdate = (31 - startDD) + endDD;

								} else if ((startMM >= 8) && startMM % 2 == 1) {
									nowdate = (30 - startDD) + endDD;
								}

							}

							// 기간
							nowdate2.value = nowdate;

								console.log("<----- 기간 수정 : "+nowdate+"일 ----->");
								console.log("<----- 달 : " + end.format('MM') + "월 ----->");
								console.log(end.format('MM') % 2);

							totaldate.innerHTML = "체크인 : " + startMM + "월  " + startDD + "일  ~ " + "체크 아웃 : " + endMM + "월 " + endDD + "일";
							totaldate2.innerHTML = "총 " + nowdate + "박 "+ (nowdate + 1) + "일";

							// 날짜 가져오기
							let book_checkin_date = document.getElementById("book_checkin_date");
							book_checkin_date.value = start.format('YYYY-MM-DD');

							let book_checkout_date = document.getElementById("book_checkout_date");
							book_checkout_date.value = end.format('YYYY-MM-DD');

								console.log(book_checkin_date.value);
								console.log(book_checkout_date.value);

							let xcount = nowdate;
							let nd = document.getElementById("nowdate");
							nd.value = xcount;

							// 총 기간과 총합의 값
							console.log("총 기간과 총합의 값 : " + fullcharge * xcount);/* 기간과 곱해져있지 않는 총합을 새로 꺼내서 기간을 곱해준다. */

							// 프론트 상에 보여주기
							txttotalprice.innerHTML = fullcharge * xcount;
							
							// input value에 담아주기
							toprice.value = fullcharge * xcount;
							book_charge = fullcharge * xcount;
							
								console.log(book_charge + "=" + fullcharge + "X"+ xcount);
								console.log("\n");

						});

	});
</script>



</head>


<body class="reservation_wrap">

	<div class="mask"></div>

	<div class="box1">
		<div class="Hotel_pic">

			<div class="bigpic">
				<img id="pictures"
					src="${pageContext.request.contextPath}/img/business_place_img/${hotelresult.business_place_num_pk}/${hotelresult.business_place_num_pk}_1.png"
					alt="">
			</div>
			<div class="small">
				<div id="smallpic">
					<img id="pictures"
						src="${pageContext.request.contextPath}/img/business_place_img/${hotelresult.business_place_num_pk}/${hotelresult.business_place_num_pk}_1.png"
						alt="">
				</div>
				<div id="smallpic">
					<img id="pictures"
						src="${pageContext.request.contextPath}/img/business_place_img/${hotelresult.business_place_num_pk}/${hotelresult.business_place_num_pk}_2.png"
						alt="">
				</div>
				<div id="smallpic">
					<img id="pictures"
						src="${pageContext.request.contextPath}/img/business_place_img/${hotelresult.business_place_num_pk}/${hotelresult.business_place_num_pk}_3.png"
						alt="">
				</div>
				<div id="smallpic">
					<img id="pictures"
						src="${pageContext.request.contextPath}/img/business_place_img/${hotelresult.business_place_num_pk}/${hotelresult.business_place_num_pk}_4.png"
						alt="">
				</div>
			</div>

		</div>

		<div class="Hotel_explain">
			<div class="Hotel_name">${hotelresult.business_name}</div>
			<div class="Hotel_addr">${hotelresult.business_addr}
				${hotelresult.business_addrdetail}</div>
			<div class="Hotel_info">${hotelresult.business_main_intro}</div>
		</div>
	</div>

	<form action="/book/BookOk.book" type="post" onsubmit="reservation()">
		<!-- 예약 종류 선택하기 -->
		<div class="box2">
			<div class="addanimal">
				<div class="selectanimal">우리 아이는</div>
				<select name="animal" id="animal">

					<option class="uderline" value="선택" selected="selected">선택</option>
	
 						<c:forEach items="${animal_type}" var="animal_type">
								<c:if test="${0 eq animal_type.animal_type}"><option value="0">기타</option></c:if><!-- else_weight -->
								<c:if test="${1 eq animal_type.animal_type}"><option value="1">강아지</option></c:if><!-- dog_weight -->
								<c:if test="${2 eq animal_type.animal_type}"><option value="2">고양이</option></c:if><!-- cat_weight -->
								<c:if test="${3 eq animal_type.animal_type}"><option value="3">조류</option></c:if><!-- bird_weight -->
								<c:if test="${4 eq animal_type.animal_type}"><option value="4">파충류</option></c:if><!-- reptile_weight -->
								<c:if test="${5 eq animal_type.animal_type}"><option value="5">양서류</option></c:if><!-- amphibia_weight -->
								<c:if test="${6 eq animal_type.animal_type}"><option value="6">설치류</option></c:if><!-- hamster_weight -->
								<c:if test="${7 eq animal_type.animal_type}"><option value="7">족제비과</option></c:if><!-- Farad_weight -->
								<c:if test="${8 eq animal_type.animal_type}"><option value="8">돼지류</option></c:if><!-- Pig_weight -->
								<c:if test="${9 eq animal_type.animal_type}"><option value="9">토끼류</option></c:if><!-- rabbit_weight -->
						</c:forEach>


				</select>

				<div class="selectprice">몸무게는요</div>
				
				<!-- 그 외 몸무게 -->
				<select name="상세정보" id="selectbox" class="else_weight">
					<c:choose>
						<c:when test="${etc_result != null and etc_result.size()>0 }">
							<c:forEach items="${etc_result}" var="etc_result">
								<fmt:formatNumber type="number" maxFractionDigits="3" value="${etc_result.one_day_charge}" var="etcOnedayCharge" />
								<option value="${etc_result.one_day_charge}">${etc_result.animal_weight} 1박 ${etcOnedayCharge}원</option>			
							</c:forEach>
						</c:when>
					</c:choose>
				</select>				
				
				
				<!-- 강아지 무게 -->
				<select name="상세정보" id="selectbox" class="dog_weight">
					<c:choose>
						<c:when test="${dog_result != null and dog_result.size()>0 }">
							<c:forEach items="${dog_result}" var="dog_result">						
								<fmt:formatNumber type="number" maxFractionDigits="3" value="${dog_result.one_day_charge}" var="dogOnedayCharge" />
								<option value="${dog_result.one_day_charge}">${dog_result.animal_weight} 1박 ${dogOnedayCharge}원</option>			
							</c:forEach>
						</c:when>
					</c:choose>
					
				</select>

				<!-- 고양이 무게 -->
				<select name="상세정보" id="selectbox" class="cat_weight">
					<c:choose>
						<c:when test="${cat_result != null and cat_result.size()>0 }">
							<c:forEach items="${cat_result}" var="cat_result">
								<fmt:formatNumber type="number" maxFractionDigits="3" value="${cat_result.one_day_charge}" var="catOnedayCharge" />
								<option value="${cat_result.one_day_charge}">${cat_result.animal_weight} 1박 ${catOnedayCharge}원</option>			
							</c:forEach>
						</c:when>
					</c:choose>
				</select>

				<!-- 새 무게 -->
				<select name="상세정보" id="selectbox" class="bird_weight">
					<c:choose>
						<c:when test="${bird_result != null and bird_result.size()>0 }">
							<c:forEach items="${bird_result}" var="bird_result">
								<fmt:formatNumber type="number" maxFractionDigits="3" value="${bird_result.one_day_charge}" var="birdOnedayCharge" />
								<option value="${bird_result.one_day_charge}">${bird_result.animal_weight} 1박 ${birdOnedayCharge}원</option>			
							</c:forEach>
						</c:when>
					</c:choose>
				</select>

				<!-- 파충류 무게 -->
				<select name="상세정보" id="selectbox" class="reptile_weight">
					<c:choose>
						<c:when test="${reptile_result != null and reptile_result.size()>0 }">
							<c:forEach items="${reptile_result}" var="reptile_result">
								<fmt:formatNumber type="number" maxFractionDigits="3" value="${reptile_result.one_day_charge}" var="reptileOnedayCharge" />
								<option value="${reptile_result.one_day_charge}">${reptile_result.animal_weight} 1박 ${reptileOnedayCharge}원</option>			
							</c:forEach>
						</c:when>
					</c:choose>
				</select>
				
				<!-- 양서류 무게 -->	
				<select name="상세정보" id="selectbox" class="amphibia_weight">
					<c:choose>
						<c:when test="${amphibia_result != null and amphibia_result.size()>0 }">
							<c:forEach items="${amphibia_result}" var="amphibia_result">
								<fmt:formatNumber type="number" maxFractionDigits="3" value="${amphibia_result.one_day_charge}" var="amphibiaOnedayCharge" />
								<option value="${amphibia_result.one_day_charge}">${amphibia_result.animal_weight} 1박 ${amphibiaOnedayCharge}원</option>			
							</c:forEach>
						</c:when>
					</c:choose>
				</select>				
				
				
				
				<!-- 햄스터 무게 -->
				<select name="상세정보" id="selectbox" class="hamster_weight">				
					<c:choose>
						<c:when test="${rodent_result != null and rodent_result.size()>0 }">
							<c:forEach items="${rodent_result}" var="rodent_result">
								<fmt:formatNumber type="number" maxFractionDigits="3" value="${rodent_result.one_day_charge}" var="rodentOnedayCharge" />
								<option value="${rodent_result.one_day_charge}">${rodent_result.animal_weight} 1박 ${rodentOnedayCharge}원</option>			
							</c:forEach>
						</c:when>
					</c:choose>
				</select>				
				


				<!-- 패럿 무게  -->
				<select name="상세정보" id="selectbox" class="Farad_weight">
					<c:choose>
						<c:when test="${weasel_result != null and weasel_result.size()>0 }">
							<c:forEach items="${weasel_result}" var="weasel_result">
								<fmt:formatNumber type="number" maxFractionDigits="3" value="${weasel_result.one_day_charge}" var="weaselOnedayCharge" />
								<option value="${weasel_result.one_day_charge}">${weasel_result.animal_weight} 1박 ${weaselOnedayCharge}원</option>			
							</c:forEach>
						</c:when>
					</c:choose>
				</select>
				
				
				<!-- 돼지 무게  -->
				<select name="상세정보" id="selectbox" class="Pig_weight">
					<c:choose>
						<c:when test="${pig_result != null and pig_result.size()>0 }">
							<c:forEach items="${pig_result}" var="weasel_result">
								<fmt:formatNumber type="number" maxFractionDigits="3" value="${pig_result.one_day_charge}" var="weaselOnedayCharge" />
								<option value="${pig_result.one_day_charge}">${pig_result.animal_weight} 1박 ${weaselOnedayCharge}원</option>			
							</c:forEach>
						</c:when>
					</c:choose>
				</select>				


				<!-- 토끼 무게 -->
				<select name="상세정보" id="selectbox" class="rabbit_weight">
					<c:choose>
						<c:when test="${rabbit_result != null and rabbit_result.size()>0 }">
							<c:forEach items="${rabbit_result}" var="rabbit_result">
								<fmt:formatNumber type="number" maxFractionDigits="3" value="${rabbit_result.one_day_charge}" var="rabbitOnedayCharge" />
								<option value="${rabbit_result.one_day_charge}">${rabbit_result.animal_weight} 1박 ${rabbitOnedayCharge}원</option>			
							</c:forEach>
						</c:when>
					</c:choose>
				</select>

				<button type="button" class="add" id="add" disabled="disabled"
					onclick="copyDiv()">추가하기</button>

 


				<div id="parentadd" class="parentadd">
					<!-- 고른 상품이 추가되는 공간 -->
				</div>

			</div>
			<div class="pickdate">

				<div class="datecontent">
					<label>
					<img src="${pageContext.request.contextPath}/img/calender.png" alt="" class="calender_img"> 
					<input type="text" id="demo" name="demo" value="" readonly></label> 
						<input type="hidden" id="book_checkin_date" name="book_checkin_date" readonly><!-- 체크인 기간을 담는 input -->
						<input type="hidden" id="book_checkout_date" name="book_checkout_date" readonly> <!-- 체크 아웃 기간을 담는 input -->
						<input type="hidden" id="nowdate" readonly><!-- 총 기간을 담은 input -->
				</div>

			</div>

			<!-- 총 기간과 가격 -->
			<div class="buy">
				<input type="hidden" id="BUSINESS_PLACE_NUM_FK" name="BUSINESS_PLACE_NUM_FK" value="${hotelresult.business_place_num_pk}">	
				<div id="totaldate" class="totaldate"></div> <!-- 체크인 기간이 보여지는 공간 -->
				<div id="totaldate2" class="totaldate2"></div> <!-- 체크아웃 기간이 보여지는 공간 -->
				
				<div class="pricetitle">가격</div>
				
				<div class="totalprice">
					<span id="pricecontent" class="pricecontent">0</span> <!-- 처음에는 기본적으로 0을 띄워준다 -->
					<spanclass="pricewon">원</span>
				</div>
				
				<input type="hidden" name="book_charge" id="book_charge"><!-- 총 가격이 담겨지는 input -->

				<!-- 예약하기 제출 버튼 -->
				<div class="reserbtnflex">
					<button type="submit" class="reservation_btn" onclick="reservation()">예약하기</button>
					<img src="${pageContext.request.contextPath}/img/reservationCart.png" alt="" class="cart">
				</div>
			</div>
			
		</div>
	</form>

	<!-- 호텔정보 / 사업자정보 / 리뷰 버튼 -->
	<div class="box3">
		<div class="Dtail_btn">
				<a href="#D1"> <!-- 클릭하면 호텔정보쪽으로 이동 -->
					<button type="button" class="HotelDtail_info_title" href="#D1">
						<span class="Hbtn_title">호텔정보</span>
					</button>
				</a> 
				
				<a href="#D2"> <!-- 클릭하면 사업자정보쪽으로 이동 -->
					<button type="button" class="Entrepreneur_info_title">
						<span class="Ebtn_title">사업자 정보</span>
					</button>
				</a> 
				<a href="#D3"> <!-- 클릭하면 리뷰쪽으로 이동 -->
					<button type="button" class="review_info_title">
						<span class="Rbtn_title">리뷰</span>
					</button>
				</a>
		</div>


		<!-- 호텔 상세 정보 란 -->
		<a id="aa" name="D1">
			<article class="HotelDtail_box">
				<div class="startHD">
					※<span> ${hotelresult.business_name} </span>호텔/동물병원의 상세정보 입니다.※
				</div>

				<div class="HD_explain">
					<span class="HDE"> ${hotelresult.business_workplace_detail}<br>
						${hotelresult.business_workplace_rule}
					</span>
				</div>

				<div class="HDpic">
					<img
						src="${pageContext.request.contextPath}/img/business_place_img/${hotelresult.business_place_num_pk}/${hotelresult.business_place_num_pk}_1.png"
						alt="">
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
							<td class="ET">${ownerResult.user_name}</td>
						</tr>
						<tr id="Etr">
							<td id="Etitle" class="ET">사업자 등록번호</td>
							<td class="ET">${ownerResult.user_business_num}</td>
						</tr>
						<tr id="Etr">
							<td id="Etitle" class="ET">E-mail</td>
							<td class="ET">${hotelresult.business_email}</td>
						</tr>
						<tr>
							<td id="Etitle" class="ET">영업 소재지</td>
							<td class="ET">${hotelresult.business_addr}
								${hotelresult.business_addrdetail}</td>
						</tr>
					</table>

				
				<!-- GSP 들어가는 공간 -->
				</div>
				<div class="Hotel_map_title">⭐ 오시는 길</div>
				<div id="map" class="Hotel_map"></div>
				<input type="hidden" id="Hotel_address" name="Hotel_address"
					value="${hotelresult.business_addr} ${hotelresult.business_addrdetail}">
				<input type="hidden" id="Hotel_name" name="Hotel_name"
					value="${hotelresult.business_name}">

			</article>
		</a>


		<!-- 유저가 올리는 리뷰 -->
		<a id="aa" name="D3">
			<article class="review_info_box">

				<div class="Rtitle">
					▶리뷰
					<button id="go_reservation_info">리뷰 쓰러 가기</button>
				</div>


				<c:choose>
					<c:when test="${reviewResult != null and reviewResult.size()>0 }">
						<c:forEach items="${reviewResult}" var="reviewResult">
						
				<!-- ----------- 유저 리뷰와 관리인 답글 포함한 박스  하나 "Review_Reply" ---------------
								  유저 리뷰를 지으면 관리인 답글까지 같이 지워진다. -->
							<div class="Review_Reply">

								<div class="user_review_box">
									<div class="user_info">
										<span class="usernick">${reviewResult.review_nickname}</span>
										<img class="user_from"
											src="${pageContext.request.contextPath}/img/카카오톡.png" alt="">
										<span class="user_date">${reviewResult.review_regdate}</span>

										<!-- 유저 리뷰 수정하는 버튼 -->
										<button type="button" id="modify_Review" class="Review_btn" onclick="modify()" title="수정하기">
											<img id="modi" src="${pageContext.request.contextPath}/img/modify_icon.png" alt="" class="MD">
										</button>

										<!-- 유저 리뷰 삭제하는 버튼 -->
										<button type="submit" id="delete_Review" class="Review_btn" onclick="delete_review(this)" title="삭제하기">
											<img id="delete" src="${pageContext.request.contextPath}/img/delete.png" alt="" class="MD">
										</button>

										<br> <span class="user_pet"> 아이 종류: </span> <span
											class="user_pet_what">강아지</span>

									</div>

									<div id="Rbox" class="user_review">
										<!-- <div id="Rbox" class="user_title">여기는 리뷰제목입니다.</div> -->

										<div id="Rbox" class="user_contents">
											${reviewResult.review_contents}</div>
									</div>

									<!-- 유저가 올리는 사진 -->
									<div class="user_review_pic" id="URP"></div>

								</div>

								<!-- 수정박스 -->
								<form id="review_modify_Form" method="post"
									action="/user/review_modifyAction.us">
									<div class="Mbox">
										<div class="flex_go">
											<div>
												<span id="user_pet_M" class="Mall"> 아이 종류:</span> <span
													id="user_pet_what_M" class="Mall">강아지</span><br> <span
													id="price_prod" class="Mall">무게와 가격</span>
											</div>

											<div class="btnbox">
												<button type="submit" class="CB" onclick="complete()">
													<img
														src="${pageContext.request.contextPath}/img/complete_btn.png"
														alt="" id="Mbtn" class="MCbtn">
												</button>
												<button type="button" class="CB" onclick="cancel()">
													<img
														src="${pageContext.request.contextPath}/img/Mdelete_btn.png"
														alt="" id="Dbtn" class="MCbtn">
												</button>
											</div>
										</div>
										<textarea name="Mnew_review" id="Mnew_review" cols="30"
											rows="10">${reviewResult.review_contents}</textarea>
										<input type="hidden" id="review_num" name="review_num"
											value="${reviewResult.review_num_pk}"> <input
											type="hidden" id="BUSINESS_PLACE_NUM_FK"
											name="BUSINESS_PLACE_NUM_FK"
											value="${hotelresult.business_place_num_pk}">

										<!-- 사진 추가하면 사진이 담긴 자식 생성됨. -->
										<div class="modypic" id="ele"></div>

										<div class="addpic">
											<input type="file" name="file" id="file"> <input
												type="button" value="이미지 추가" id="addpic_btn" class="CaddB">
										</div>

									</div>
								</form>

								<!-- 관리인 리뷰 답장 -->
								<div class="replyBigbox">
									<img src="${pageContext.request.contextPath}/img/Ladder.png"
										alt="" class="ladder">
									<div class="reply_box">

										<div class="manager_info">
											<img
												src="${pageContext.request.contextPath}/img/manager_icon.png"
												alt="" class="manager_icon">
											<div class="manager_name">관리인 닉네임 또는 이름</div>
											<div class="manager_date">날짜</div>
										</div>

										<div class="manager_Hotelname">여기는 호텔 이름입니다.</div>

										<div class="manager_reply">
											여기는 답장 내용입니다. <br> 답자아아앙
										</div>
									</div>
								</div>
							</div>
							
							<!-- ------------------------------------------------------------------------ -->
						</c:forEach>
					</c:when>
					<c:otherwise>
						<div id="emty_review">
							<div id="ER">아직 리뷰가 없습니다.</div>
						</div>
					</c:otherwise>
				</c:choose>

			</article>
		</a>
	</div>

</body>
<!-- 문서수정할때는주석처리를 하고 진행하세요 -->
<%--     <c:choose>
        <c:when test="${sessionScope.loginUser eq null}">
            <script>
                alert("login후에 이용하세요.");
                window.location.href="/index.jsp"
            </script>
        </c:when>
    </c:choose>
 --%>
<%@ include file="../../footer/footer.jsp"%>


<script src="${pageContext.request.contextPath}/js/reservation.js"></script>
<script src="${pageContext.request.contextPath}/js/pc_header.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8371f82865e1a5caad2fb3821aba3a1a&libraries=services"></script>
<script>
	var Hotel_address = document.getElementById('Hotel_address')
	var Hotel_name = document.getElementById('Hotel_name')

	console.log(Hotel_address.value)
	console.log(Hotel_name.value)

	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
		center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		level : 4
	// 지도의 확대 레벨
	};

	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption);

	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();

	// 주소로 좌표를 검색합니다
	geocoder
			.addressSearch(
					Hotel_address.value,
					function(result, status) {

						// 정상적으로 검색이 완료됐으면 
						if (status === kakao.maps.services.Status.OK) {

							var coords = new kakao.maps.LatLng(result[0].y,
									result[0].x);

							// 결과값으로 받은 위치를 마커로 표시합니다
							var marker = new kakao.maps.Marker({
								map : map,
								position : coords
							});

							// 인포윈도우로 장소에 대한 설명을 표시합니다
							var infowindow = new kakao.maps.InfoWindow(
									{
										content : '<div style="width:150px;text-align:center;padding:6px 0;">'
												+ Hotel_name.value + '</div>'
									});
							infowindow.open(map, marker);

							// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
							map.setCenter(coords);
						}
					});
</script>
<script>

	if ($("#parentadd").val() == "") {
		book_charge = 0;
		fullcharge = 0;
	}
	
	
	/* 삭제하기 */
	function removethis(i) {
		let totalprice = document.getElementById("book_charge")/* DB에 총가격을 넘길 input 태그 불러오기 */
		let txttotalprice = document.getElementById("pricecontent");/* 프론트상에 출력하는 span 태그 불러오기 */
		let nd = document.getElementById("nowdate");/* 총 기간값을 담는 input 태그 불러오기 */
		let xcount = parseInt(nd.value);
		// 총가격과 #thisprice+i 의 value 값을 parseint 로 변환해 빼어 계산한다.
		console.log("<----- 상품 삭제 : "+arrayprice[i]*xcount+"원 ----->");
		console.log("<----- 상품 원가 : "+arrayprice[i]+"원 ----->");
		console.log("<----- 남은 가격 : "+book_charge-arrayprice[i]*xcount+"원 ----->");
		
		console.log(arrayprice[i]);
		console.log(xcount);
		console.log(book_charge);

		console.log(book_charge + "-" + arrayprice[i] + "*" + xcount);

		/* 총합에서 해당가격에 기간만큼 곱해진 가격을 빼서 저장해준다. */
		book_charge = book_charge - arrayprice[i] * xcount;
		
		/* 기간이 곱해져있지 않은 총합에서 해당 가격을 빼서 저장해준다. */
		fullcharge = fullcharge - arrayprice[i];
		
		/* 프론트상에 총합을 출력해준다. */
		txttotalprice.innerHTML = book_charge;

		console.log(book_charge);/* 총합(기간 곱해져있는것) */
		console.log(fullcharge);/* 총합(기간 곱해져있지 않는것) */
		console.log(insidecnt.childElementCount);/* 상품이 추가되는 박스상의 상품 갯수 */
		
		totalprice.value = book_charge;/* 총합을 DB로 보내주는 히든 input값에 저장해준다. */
		
		/* 만약 상품추가되는 박스의 자식이 1이 된다면 총합을 담은 객체들과 프론트상에 비춰지는 값을 0으로 출력해준다. */
		if (insidecnt.childElementCount == 1) {
			book_charge = 0;
			fullcharge = 0;
			anotherprice = 0;
			totalprice.value=0;
		}

		// 담긴 상품들 어레이에서 삭제하기
		let idx = array.indexOf("bigadd" + i);
		while (idx > -1) {
			array.splice(idx, 1);
			idx = array.indexOf("bigadd" + i);
		}

		console.log("\n");

		/* 해당 상품을 삭제해준다. */
		$(".bigadd" + i).remove();

		if (arraypet[i] == '고양이') {
			arraypet.splice(i, 1);
			arraypet.splice(i, 0, '삭제');

		} else if (arraypet[i] == '강아지') {
			arraypet.splice(i, 1);
			arraypet.splice(i, 0, '삭제');

		} else if (arraypet[i] == '기타') {
			arraypet.splice(i, 1);
			arraypet.splice(i, 0, '삭제');
		} else if (arraypet[i] == '조류') {
			arraypet.splice(i, 1);
			arraypet.splice(i, 0, '삭제');

		} else if (arraypet[i] == '파충류') {
			arraypet.splice(i, 1);
			arraypet.splice(i, 0, '삭제');

		} else if (arraypet[i] == '양서류') {
			arraypet.splice(i, 1);
			arraypet.splice(i, 0, '삭제');

		} else if (arraypet[i] == '토끼류') {
			arraypet.splice(i, 1);
			arraypet.splice(i, 0, '삭제');

		} else if (arraypet[i] == '설치류') {
			arraypet.splice(i, 1);
			arraypet.splice(i, 0, '삭제');

		}else if (arraypet[i] == '족제비과') {
			arraypet.splice(i, 1);
			arraypet.splice(i, 0, '삭제');

		}else if (arraypet[i] == '돼지과') {
			arraypet.splice(i, 1);
			arraypet.splice(i, 0, '삭제');

		}

		console.log(arraypet);

	}
</script>


</html>