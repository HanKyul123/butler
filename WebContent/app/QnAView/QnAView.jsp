<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="under1"
	href="${pageContext.request.contextPath}/img/under1.png">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/QnA.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/pc_header.css">


<title>QnA</title>


</head>
<%@ include file="../../header/pc_header.jsp"%>

<body> 
<div class="QnA_wrap">
        <div class="moremore" id="content">
            <nav>
                <ul>
                    <li>
                        <a href="${pageContext.request.contextPath}/app/noticeView/noticeView.jsp"  class="more_a">공지사항</a>
                    </li>
                    <li>
                    <a href="${pageContext.request.contextPath}/app/QnAView/QnAView.jsp" id="click" class="more_a">자주 묻는 질문</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/app/policyView/policy.jsp" class="more_a">약관 및 정책</a>
                    </li>
                </ul>
            </nav> 
            </div>
            <div class="t_QnA">
                <div class="QnA">
                    <div class="tab">
                        <span class="tab_btn">
                            	자주 묻는 질문
                        </span>
                    </div>
                    <div class="tab_more">
                        <ul class="QnA_list" id="QnA">
                            <li>
                                <a href="javascript:GetShow()" class="all_list" id="QnA_tab">
                                    <p>[숙박] 예약을 취소하고 싶어요.</p>
                                    <img src="${pageContext.request.contextPath}/img/under1.png" width="18px" class="under">
                                    <div id="ans_1" style="display: none;">
                                        <span >
                                            	예약취소는  앱/웹 > 내정보 > 예약/구매내역에서 직접 가능합니다
	                                             <br>
	                                             <br>
												예약/결제 진행 당시 안내된 취소/환불 규정에 따라 처리되며, 취소수수료가 발생할 경우 취소수수료를 차감한 금액으로 환불 처리됩니다. <br>
												일부 숙소에 한해 취소가 가능한 시점이나 앱/웹에서 취소가 불가할 수 있으니 이 경우에는 고객행복센터로 요청해 주시길 바랍니다.
                                        </span>
                                	</div>
                                 </a>
                            </li>
                            <li>
                                <a href="javascript:GetShow2()" class="all_list" id="QnA_tab">
                                 <p>[공통] 천재지변/감염병으로 인한 예약 취소는 어떻게 하나요?</p>
                                 <img src="${pageContext.request.contextPath}/img/under1.png" width="20px" class="under"> 
                                 <div id="ans_2" style="display: none;">
                                    <span >
							                                        천재지변(기상악화), 법정 감염병 등 불가항력적인 사유로 제휴점 이용이 불가할 경우 고객행복센터로 예약내역 및 증빙서류(결항확인서, e-티켓, 진단확인서 등)를 보내주시면 확인 후 예약취소 가능 여부를 확인해 드립니다. <br>
							                                        <br>
							                                        다만, 당사는 판매 중개 플랫폼의 입장으로 제휴점에 대하여 취소/환불을 강제할 수 없어 각 제휴점의 규정에 근거하여 상황에 따라 수수료가 발생하거나 취소가 어려울 수 있는 점 양해 부탁드립니다. <br>
                                        <br>
							                                        [접수방법] <br>
							                                        ※ 이메일 : help@butler.co.kr (예약자명, 숙소명, 체크인 날짜 필수) <br>
							                                        ※ 카카오톡 : 카카오톡 내 플러스 친구 > 여기어때 고객행복센터 추가
                                    </span>   
                            </div>
                            </a>
                             </li>
                             <li>
                                <a href="javascript:GetShow3()" class="all_list" id="QnA_tab">
                                 <p>[숙박] 예약대기 건 예약취소하고 싶어요.</p>
                                 <img src="${pageContext.request.contextPath}/img/under1.png" width="20px" class="under" > 
                                 <div id="ans_3" style="display: none;">
                                    <span >
						                                        예약 대기중에는 여기어때 고객행복센터에 예약취소 요청해주시길 바랍니다. <br>
						                                        <br>
						
						                                        단, 예약확정이 될 경우 수수료가 발생하거나 예약취소가 불가할 수 있습니다.
                                    </span>
                                
                            </div>
                           </a>    
                             </li>
                             <li>
                                <a href="javascript:GetShow4()" class="all_list" id="QnA_tab">
                                 <p>[숙박] 체크인 날짜/객실 타입을 변경하고 싶어요.</p>
                                 <img src="${pageContext.request.contextPath}/img/under1.png" width="20px" class="under" > 
                                 <div id="ans_4" style="display: none;">
                                    <span >
                                       	 예약 결제 완료 후 날짜 및 객실타입 등 부분 변경은 불가합니다. 
                                       	 <br>
                                         <br>
			
										예약취소와 동일하게 취소 및 환불 규정에 따라 처리되므로 예약취소가 가능한 기간에는 예약취소 후 재결제 하셔서 이용 부탁드립니다. 
										 <br><br>
										
										만약, 예약취소가 불가하거나 수수료가 발생하는 경우라면 고객행복센터로 문의해주시길 바랍니다.
                                    </span>
                                
                            </div>
                            </a>
                             </li>
                             <li>
                                <a href="javascript:GetShow5()" class="all_list" id="QnA_tab">
                                 <p>[공통] 현금영수증을 발급받고 싶어요.</p>
                                 <img src="${pageContext.request.contextPath}/img/under1.png" width="20px" class="under" > 
                                 <div id="ans_5" style="display: none;">
                                    <span >
					                                             현금영수증은 현금성 결제수단으로 결제 시 발급이 가능합니다. <br><br>
					
										결제 단계에서 현금영수증을 신청하면 자동으로 발행되지만,
										신청을 누락했거나 발행받지 못한 경우라면 영수증 확인 후 국세청에서 자진발급분을 등록해 주시길 바랍니다. <br><br>
										
										[네이버페이]
										- 결제 단계에서 현금영수증 신청하면 자동으로 발행 (19년 12월 26일 시행)
										- 자진발급 : 네이버페이 > 결제내역 > 주문건 > 주문상세정보 > 영수증 발급내역 > 현금영수증 확인
										- 단, 19년 12월 26일 10시 이전 결제 건은 여기어때 고객행복센터로 요청 <br><br>
										
										[간편계좌이체 / TOSS / PAYCO]
										- 결제 단계에서 현금영수증 신청하면 자동으로 발행
										- 단, 간편계좌이체의 경우 신청 누락 시 여기어때 고객행복센터로 요청 <br><br>
										
										[카카오페이] 
										- 카카오페이머니 결제 시 자동으로 발행
										- 자진발급 : 카카오톡 > pay > 우측톱니바퀴(나의 카카오페이) > 이용내역 > 결제 > 개별 상세내역 > 현금영수증 확인
                                    </span>
                                    </div>
                                </a>
                            
                             </li>
                             <li>
                                <a href="javascript:GetShow6()" class="all_list" id="QnA_tab">
                                 <p>[공통] 영수증(거래 내역서)를 발급받고 싶어요.</p>
                                 <img src="${pageContext.request.contextPath}/img/under1.png" width="20px" class="under"> 
                                 <div id="ans_6" style="display: none;">
                                    <span >
                                        	예약정보와 결제정보가 기재되어 있는 영수증(거래내역서)은 여기어때 고객행복센터로 문의하시면 발급이 가능합니다. <br><br>

											예약내역, 영수증을 받으실 이메일 주소(또는 FAX번호)를 1:1문의 또는 카카오 상담톡으로 남겨주시길 바라며, 발급 완료까지는 영업일 기준 최대 1~2일 소요되오니 시간 양해 부탁드립니다.
                                    </span>
                                </div>
                                </a>
                            
                             </li>
                        </ul>
                        <div id="QnA_page">
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
                       


</body>
<%@ include file="../../footer/footer.jsp"%>
<script src="${pageContext.request.contextPath}/js/pc_header.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="${pageContext.request.contextPath}/js/QnA.js"></script>

</html>