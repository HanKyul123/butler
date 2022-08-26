<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>내 정보</title>

    <link rel="icon" href="${pageContext.request.contextPath}/img/Hotel_icon.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/myinfo.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/pc_header.css">

</head>

<%@ include file="../../../header/pc_header.jsp"%>


<body class="my_info_wrap">
   
    <div class="my_info_title">
        내 정보
    </div>

    <div class="my_info_BigBox">

            <div class="my_info_box1">
                <a class="my_info_manage" href=""><div id="all_choice">내 정보 관리</div></a>
                <br>
                <a class="my_reservation_info" href=""><div id="all_choice">예약 내역</div></a>
                <br>
                <a class="my_review_info" href=""><div id="all_choice">내가 쓴 리뷰</div></a>
                <br>
                <a class="my_cart_info" href=""><div id="all_choice">찜 목록</div></a>
            </div>

            <!-- 내용 공간 -->
            <div class="my_info_box2">

                <div class="modify_title">내 정보 수정</div>

                <div class="profile">
                    <img class="profile" src="${pageContext.request.contextPath}/img/profile1.png" alt="">
                </div>
              
              
           <form method="post" action="/user/user_modifyAction.us">
                <input type="hidden" name="user_num_pk" value="${LoginUser.user_num_pk}">
                <input type="hidden" name="user_logintype" value="${LoginUser.user_logintype}">
                
                <div class="user_email_box">
                   <!-- 버틀러 회원/카카오 회원 구별하여 해당하는 아이콘으로 하기 -->
                    <img src="${pageContext.request.contextPath}/img/Hotel_icon.png" alt="" class="user_from" id="Butler">
                    <img src="${pageContext.request.contextPath}/img/카카오톡.png" alt="" class="user_from" id="Kakao">
                    <!-- 유저 버틀러/카카오 이메일 아이디 정보 넣기 -->
                    <div class="user_email" name="user_email">${LoginUser.user_email}</div>
                </div>
  
                 
            
                <div id="all_info" class="user_nick_box">
                    <div id="title_box" class="user_nick_title">닉네임</div>
                    <div id="modify_contents" class="user_nick_name">
                    <span class="user_nick" id="user_nickname">${LoginUser.user_nickname}</span>
                    <input type="hidden" id="user_nickname2" name="user_nickname2" value="${LoginUser.user_nickname}">
                    <input type="hidden" id="user_nickname" name="user_nickname" value="">
                </div>
                </div>

                 <div class="flexMody">
                    
                    <input class="write_new_nick" type="text" id="WNN" onkeyup="checknick(this.value)"  autocomplete="off">
                    
                    <button type="button" class="modify_nick_btn" id="MNB" onclick="myFunction()">수정하기</button>
                    <button type="button"  id="checknick">중복확인</button>
                    <button type="button" class="complete_nick_btn" id="CMB" onclick="myFunction_1()">수정완료</button>
                   
                    <button type="button" id="XB1" onclick="myFunction2_2()">X</button>
                </div>

                <div class="wary" id="wary1">
                    <span class="wary_nick" id="WN"></span>
                </div>
                


                <div id="all_info" class="user_name_box">

                    <div id="title_box" class="user_name_title">예약자 이름</div>
                    <div id="modify_contents" class="user_name">${LoginUser.user_name}</div>

                </div>

                
                

                <div id="all_info" class="user_phone_box">

                    <div id="title_box" class="user_phone_title">휴대폰 번호</div>
                    <div id="modify_contents" class="modfiy_phone"><span id="USP" class="user_phone" name="user_phone">${LoginUser.user_phone}</span></div>

                </div>

                <div class="phone_notice">개인 정보 보호를 위해 내 정보는 모두 안전하게 암호화됩니다.</div>


                <div class="flexMody">
                    <input class="write_new_phone" type="tel" id="WNP" minlength="10" maxlength="11" autocomplete="off" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                    <button type="button" class="modify_phone_btn" onclick="myFunction2()" id="MPB">수정하기</button>
                 <input type="hidden" name="user_phone" value="${LoginUser.user_phone}">
                 <input type="hidden" name="user_phone2" id="user_phone2" value="">
                
                    <button type="button" class="send_code" onclick="myFunction3()" id="SC" disabled="disabled">인증번호 전송</button>
                    <button type="button" id="XB" onclick="myFunction2_1()">X</button>
                    
                </div>
                <!-- 누르면 수정하기 -> 인증번호 전송 -->
                <div class="wary"  id="wary2">
                    <span class="wary_phone"></span>
                </div>

                <div class="flexMody">
                    <input class="write_phone_code" type="tel" name="" id="WPC" maxlength="4" >
                    <button type="button" class="phone_code_btn" id="PCB" disabled="disabled" onclick="finish_prove()">인증하기</button>
                    <button type="button" id="XB5" onclick="cancel_phone()">X</button>
                </div>
                <div class="time" id="time"><span id="timer" class="timer">3:00</span></div>
                
                <div class="wary"  id="wary3">
                    <span class="wary_code"></span>
                </div>

			
                
                <div id="all_info" class="user_addr_box">
                    <div class="user_addr_title" id="title_box">주소</div>
                    <div id="modify_addr" class="modify_contents" name="user_addr">${LoginUser.user_addr} ${LoginUser.user_addrdetail}</div>
                    <input type="hidden" name="user_zipcode" value="${LoginUser.user_zipcode}">
                    <input type="hidden" name="user_addr" value="${LoginUser.user_addr}">
                    <input type="hidden" name="user_addrdetail" value="${LoginUser.user_addrdetail}">
                    <input type="hidden" name="user_addretc" value="${LoginUser.user_addretc}">
                    
                    <input type="hidden" id="user_zipcode2" name="user_zipcode2" value="">
                    <input type="hidden" id="user_addr2" name="user_addr2" value="">
                    <input type="hidden" id="user_addrdetail2" name="user_addrdetail2" value="">
                    <input type="hidden" id="user_addretc2" name="user_addretc2" value="">
                </div>
                   <!-- 주소 수정 -->
                  
                    <div class="zipcode_area">
                        <div class="flexMody">
                            <input type="text" id="sample6_postcode" placeholder="우편번호" name="zipcode" readonly required>
                            <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"  class="UP_btn" id="SEB">
                        </div>
                    </div>
                    

                   
                    <div class="addr_area">
                        <input type="text" id="sample6_address" placeholder="주소" name="addr" readonly onkeyup="checkaddr2(this.value)">
                    </div>

                    <input type="text" id="sample6_detailAddress" placeholder="상세주소" name="addrdetail" autocomplete="off" onkeyup="checkaddr(this.value)">
                    <div class="txt"><span id="addr_txt"></span></div>

                    <input type="text" id="sample6_extraAddress" placeholder="참고항목" name="addretc" readonly>
                    <br>
                    <button type="button" class="modify_addr_btn" id="MAB" onclick="myFunction4()">수정하기</button>

                    <div class="flexMody">
                        <button type="button" class="complete_addr_btn" id="CAB" onclick="myFunction4_1()">수정완료</button>
                        <button type="button" id="XB2" onclick="myFunction4_2()">X</button>
                    </div>
                   
             
               
                <div class="modify_pw" id="MDPW" onclick="change_pw()">비밀번호 변경 ></div>
                <div class="modify_pw2" id="MDPW2" onclick="cancel_pw()">비밀번호 변경∨</div>
                <div class="explaintitle" id="ELT">전화번호 인증을 해주세요</div>
                <div class="flexMody">
                    <input class="write_new_phone2" type="tel" name="" id="WNP2" minlength="10" maxlength="11" autocomplete="off" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                    <button type="button" class="send_code2" onclick="myFunction3_2()" id="SC2" disabled="disabled">인증번호 전송</button>
                </div>
                <div class="flexMody">
                    <input class="write_phone_code2" type="tel" name="" id="WPC2" maxlength="4" autocomplete="off">
                    <button type="button" class="phone_code_btn2" id="PCB2" disabled="disabled" onclick="prove_user_code()">인증하기</button>
                </div>
                <div class="time2" id="time2"><span id="timer2" class="timer2">3:00</span></div>

                <!-- 새 비밀번호 설정 -->
                <div class="new_pw">
                          새 비밀번호
                    <input id="new_pw" type="password" name="new_pw" placeholder="새 비밀번호를 입력해주세요." id="all_pw" class="pw_I" onkeyup="checkpw(this.value)">
                    <img src="${pageContext.request.contextPath}/img/eye.png" alt="" id="see_pw" class="see_pw">

                    <div class="txt2"><span id="new_pw_txt"></span></div>
                </div>

                <!-- 새 비밀번호 재입력 -->
                <div class="re_new_pw" >
                          비밀번호 재입력
                    <input id="re_new_pw" type="password" name="re_new_pw" placeholder="비밀번호를 재입력해주세요." id="all_pw" class="re_pw_I" onkeyup="checkrepw(this.value)">
                    <img src="${pageContext.request.contextPath}/img/eye.png" alt="" id="see_pw2" class="see_pw2">


                    <div class="txt2"><span id="re_new_pw_txt"></span></div>
                </div>

                <!-- 비밀번호 변경 완료 버튼 -->
                <button type="button" id="clear_change_pw" disabled="disabled" onclick="clear_chage_pw()">비밀번호 변경 완료</button>
                <!-- 새로운 비밀번호 저장하는 input -->
                <input type="hidden" id="user_new_pw">
                


                <div class="ask_to_user">

                    <span>Butler를 이용하고싶지 않으신가요?</span>
                    <a href="/main.logout.us">로그아웃</a>
                    <a href="/user/userResign.us">회원탈퇴</a>
                </div>
                </form>
                
            </div>
            

    </div>
</body>

<%@ include file="../../../footer/footer.jsp"%>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="${pageContext.request.contextPath}/js/myinfo.js"></script>
<script src="${pageContext.request.contextPath}/js/pc_header.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>

</html>