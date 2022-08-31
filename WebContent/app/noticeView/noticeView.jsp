<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="under1" href="${pageContext.request.contextPath}/img/under1.png">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/notice.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/pc_header.css">
<link rel="icon"
	href="${pageContext.request.contextPath}/img/Hotel_icon.png">
<title>Butler:notice</title>
<%@ include file="../../header/pc_header.jsp"%>
</head>
<body>
	<div class="notice_wrap"> 
		<div class="moremore" id="content"> 
			<nav>
				<ul>
					<li><a href="${pageContext.request.contextPath}/app/noticeView/noticeView.jsp" id="click" class="more_a">공지사항</a></li>
					<li><a href="${pageContext.request.contextPath}/app/QnAView/QnAView.jsp" class="more_a">자주 묻는 질문</a></li>
					<li><a href="${pageContext.request.contextPath}/app/policyView/policy.jsp" class="more_a">약관 및 정책</a></li>
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

								<p>[발표] 8월 4주자 Butler 응원하기 이벤트</p> <span>2022.08.15</span> <img
								src="${pageContext.request.contextPath}/img/under1.png"
								width="18px" class="under">
								<div id="plus" style="display: none;">
									<div>
										<p>
											안녕하세요. 취향대로 머물다 Butler입니다. <br> 8월 4차 'Butler 응원하기' 이벤트
											당첨자를 발표합니다. <br> <br> ■ 응원하기 이벤트 당첨자 <br> <br>
										</p>
									</div>
									<table>
										<colgroup>
											<col width="83">
											<col width="169">
										</colgroup>
										<tbody> 
											<tr style="height: 30px;">
												<td class="td_1" rowspan="2" colspan="1">
													<div style="max-height: 60px;">
														<span style="font-size: 9pt; color: rgb(255, 255, 255);">당첨자</span>
													</div>
												</td>
												<td class="td_2"><span style="font-size: 9pt;">·
														다**아프간하운드</span></td>
											</tr>
											<tr class="td_2" style="height: 30px;">
												<td class="td_3"><span style="font-size: 9pt;">·
														군*노루 </span></td>
											</tr>
										</tbody>
									</table>
									<br> <br>
									<div style="font-size: 12px;">
										<p style="font-size: medium;">
											<strong>※ 참고하세요</strong> <br> - 포인트는 당첨 발표일에 당첨자 회원 계정으로
											지급됩니다. <br> - 지급된 포인트는 지급일로부터 30일 이내 사용 가능합니다. <br>
											- 본 이벤트는 당사의 사정에 의해 변경/중지될 수 있습니다.
										</p>

									</div>
						</a></li>

						<li><a href="javascript:GetShow2()" class="all_list"
							id="notice_tab">
								<p>[안내] 서비스 점검 안내 (8/10 03:00~06:30)</p> <span>2022.08.10</span>
								<img src="${pageContext.request.contextPath}/img/under1.png"
								width="20px" class="under"
								style="background-color: rgba(white, white, white, alpha)">
								<div id="plus_2" style="display: none;">
									<div style="font-size: 12px;">
										<p style="font-size: medium;">

											안녕하세요. 취향대로 머물다 Butler 입니다 <br> <br> 더 나은 서비스 제공을
											위한 점검 안내드립니다. <br> 점검 시간 동안에는 여기어때 앱/웹 이용이 일시 중지됩니다. <br>
											<br> ■ Butler 시스템 점검 안내 <br> - 일시: 2022년 8월 23일(화)
											오전 3시 ~ 6시 30분 (3시간 30분) <br> - 점검 사유 : 시스템 업그레이드 <br>
											- 점검 영향 : 점검 시간 동안 서비스 이용 불가. <br> <br> <br>
											점검 시간은 변경될 수 있으며 변경 시 공지를 통해 안내 드리겠습니다. <br> <br> 더
											좋은 서비스로 보답하는 Butler가 되겠습니다. 감사합니다.

										</p>
									</div>
						</a></li>

						<li><a href="javascript:GetShow3()" class="all_list"
							id="notice_tab">
								<p>[발표] 데일리 럭키드로우 1등 당첨 안내</p> <span>2022.08.07</span> <img
								src="${pageContext.request.contextPath}/img/under1.png"
								width="20px" class="under">
								<div id="plus_3" style="display: none;">
									<div style="font-size: 12px;">
										<p style="font-size: medium;">

											안녕하세요. Butler 입니다. <br> 데일리 럭키드로우 1등 당첨자 안내드립니다. <br>
											<br> <br> ■ 이벤트 당첨자
										</p>
										<p style="font-size: 10px";>*영업일 기준 구매 익일 오전 11시 전
											업데이트됩니다.</p>
										<br>
										<p>
											************************************************************
										</p>
										<div>
											<p
												style="background-color: rgb(255, 255, 255); font-size: 13.3333px;">
											<table border="0" cellpadding="0" cellspacing="0"
												style="border: 1px solid #cccccc; border-left: 0; border-bottom: 0;">
												<tbody>
													<tr>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;당첨
																	일자 </span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;당첨
																	경품 </span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;" align="center">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;당첨자
																	닉네임 </span>
															</p>
															<p style="text-align: center;" align="center">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">(+휴대폰번호
																	끝 4자리) </span>

															</p>
														</td>
													</tr>
													<tr>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;8/16
																</span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;
																</span> <span style="font-size: 9pt; color: rgb(0, 0, 0);">파크
																	하얏트 서울&nbsp; </span>
															</p>
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">1박
																	숙박권 </span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">광*어묵(9080)&nbsp;
																</span>
															</p>
														</td>
													</tr>
													<tr>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;8/17
																</span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">웨스틴
																	조선 서울 아리아&nbsp; </span>
															</p>
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">2인
																	식사권 </span> <span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;
																</span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">메*남불(1945)
																</span>
															</p>
														</td>
													</tr>
													<tr>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;8/18
																</span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">파크로쉬
																	리조트&amp;웰니스</span>
															</p>
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">1박
																	숙박권 </span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">내*산사수궁(3694)
																</span>
															</p>
														</td>
													</tr>
													<tr>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt;; color: rgb(0, 0, 0);">&nbsp;8/19~21
																</span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;
																</span> <span style="font-size: 9pt; color: rgb(0, 0, 0);">푸켓or괌
																	해외여행&nbsp; </span>
															</p>
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">2인
																	패키지 </span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">난*한태연(6140)&nbsp;
																</span>
															</p>
														</td>
													</tr>
													<tr>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;8/22
																</span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">인터컨티넨탈
																	서울 파르나스 </span>
															</p>
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">1박
																	숙박권 </span> <span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;
																</span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">심*한스칼렛(4641)&nbsp;
																</span>
															</p>
														</td>
													</tr>
													<tr>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;8/23
																</span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">비스타
																	워커힐 서울 </span>
															</p>
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">1박
																	숙박권&nbsp; </span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">김*이94(2843)&nbsp;
																</span>
															</p>
														</td>
													</tr>
													<tr>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;8/24
																</span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;롯데호텔
																	월드 </span>
															</p>
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">1박
																	숙박권 </span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;먼*의인생이(7354)
																</span>
															</p>
														</td>
													</tr>
													<tr>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;8/25
																</span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;소피텔
																	앰배서더 서울 </span>
															</p>
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">1박
																	숙박권 </span>
															</p>
														</td>
														<td class="event_2">
															<p style="text-align: center;">
																<span style="font-size: 9pt; color: rgb(0, 0, 0);">&nbsp;
																</span> <span style="font-size: 9pt; color: rgb(0, 0, 0);">t*ntin(2693)
																</span>
															</p>
														</td>
													</tr>
													&nbsp;
													</span>
													</p>
													</td>
													</tr>
												</tbody>
											</table>
											<p>&nbsp;</p>
											</p>
										</div>
										<br> <br>
										<p style="font-size: medium;">
											************************************************************
											<br> <br> <strong>※ 참고하세요.</strong> <br> - 5만원
											초과 당첨금은 제세공과금 22%가 부여되며, 당사가 100% 부담합니다. <br> - 제세공과금
											처리를 위해 1등 당첨자 전원에게 신분증 사본을 요청, 수집하며 거부 시 당첨에서 제외됩니다. <br>
											- 제세공과금 처리를 위하여 9월 1일부터 Butler 고객행복센터 1670-6250에서 당첨자에게 유선으로
											연락드리며 <br> 9월 6일까지 유선 연락이 불가한 (내정보 내 휴대폰 번호 미등록, 오류 등)
											당첨자는 당첨에서 제외됩니다. - 당첨자 유선 안내는 여기어때에 등록된 휴대폰번호를 기준으로 제공되며 미기재
											및 오기재로 인한 유선 연락 불가 시 <br> 당첨에서 제외됩니다. (당첨 제외 시 환불 불가) -
											경품 지급 전 회원탈퇴 시 환불 및 경품 지급이 불가하오니 이 점 유의바랍니다. <br> -
											미사용으로 인한 경품 소멸 시 재 지급되지 않습니다. <br> - 당첨자가 개인정보 수집 또는 당첨
											거부 시 당첨자를 재 선정하지 않습니다. <br> - 당첨자에게는 9월 13일 경품이 지급/발송
											됩니다.
										</p>

									</div>
						</a></li>
						<li><a href="javascript:GetShow4()" class="all_list"
							id="notice_tab">
								<p>[발표] 8월 4주차 무료초대권 이벤트</p> <span>2022.07.29</span> <img
								src="${pageContext.request.contextPath}/img/under1.png"
								width="20px" class="under">
								<div id="plus_4" style="display: none;">
									<div style="font-size: 12px;">
										<p style="font-size: medium;">
											안녕하세요. 취향대로 머물다 Butler 입니다. <br> 8월 4주차 '호텔 리얼리뷰 무료초대권'
											이벤트 당첨자를 발표합니다. <br> <br> <br> ■ 이벤트 당첨자
										</p>
										<table
											style="table-layout: fixed; font-size: 10pt; width: 0px;">
											<colgroup>
												<col width="83">
												<col width="169">
												<col width="135">
											</colgroup>
											<tbody>
												<tr style="height: 21px;">
													<td class="td_4" rowspan="1" colspan="3"></td>
												</tr>
												<tr style="height: 58px;">
													<td class="td_5">숙박 <br> 무료 초대권 <br> (2명)
													</td>
													<td class="td_6">· 빤질빤질한시력</td>
													<td class="td_7">· 깔끔깔끔하군</td>
												</tr>
												<tr style="height: 58px;">
													<td class="td_8" rowspan="2" colspan="1">
														<div style="max-height: 116px;">
															케어 <br>무료 초대권 <br>(4명)
														</div>
													</td>
													<td class="td_9">· 바른생활강아지</td>
													<td class="td_10">· 하후후하</td>
												</tr>
												<tr style="height: 58px;">
													<td class="td_11"
														style="border-bottom: 1px solid rgb(183, 183, 183); overflow: hidden; padding: 2px 3px; vertical-align: middle; font-size: 9pt;">·
														융콩하잉</td>
													<td class="td_12"
														style="border-right: 1px solid rgb(183, 183, 183); border-bottom: 1px solid rgb(183, 183, 183); overflow: hidden; padding: 2px 3px; vertical-align: middle; font-size: 9pt;">·
														Clzlswhdkdya</td>
												</tr>
												<tr style="height: 21px;">
													<td class="td_13"
														style="font-size: 13.3333px; overflow: hidden; padding: 2px 3px; vertical-align: middle;">
													</td>
													<td class="td_14"></td>
												</tr>
											</tbody>
										</table>
										<p style="font-size: medium;">
											<strong>※ 참고하세요.</strong> <br> - 지급된 무료초대권은 쿠폰함에서 확인
											가능합니다. <br> - 무료초대권 사용 시 최소 3일 전 해당 숙소 프런트에 문의해 주세요. <br>
											- 무료초대권은 타인에게 양도하거나 재 판매 할 수 없습니다. <br> - 숙소 사정(광고제휴 종료,
											업주변경 등)에 의해 무료초대권 사용이 불가능할 수 있으며, Butler에서 대체해 드리지 않습니다. <br>






											- 본 이벤트는 당사의 사정에 의해 변경/중지될 수 있습니다.
										</p>

									</div>
						</a></li>
					</ul>
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