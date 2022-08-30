<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NonReservation</title>
    <link rel="icon" href="${pageContext.request.contextPath}/img/Hotel_icon.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/myinfo_writereview.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/pc_header.css">
	
</head>

<%@ include file="../../header/pc_header.jsp" %>

<body class="myinfo_writereview_wrap">
    <div class="my_reservation_title">
        내 정보
    </div> 

    <div class="my_writereview_BigBox">

            <div class="my_writereview_box1">
                <a class="my_info_magage" href="${pageContext.request.contextPath}/app/myinfo/myinfoView.jsp"><div id="all_choice">내 정보 관리</div></a>
                <br>
                <a class="my_reservation_info" href="${pageContext.request.contextPath}/app/myinfo/myinfo_reservationView.jsp"><div id="all_choice">예약 내역</div></a>
                <br>
                <a class="my_review_info" href="${pageContext.request.contextPath}/app/myinfo/myinfo_reviewView.jsp"><div id="all_choice">내가 쓴 리뷰</div></a>
            </div>



            <div class="my_writereview_box2">

                <div class="reviewtitle">
                    	리뷰 쓰기
                </div>

                <!-- 이용 완료한 호텔 정보 -->
                <!-- 클릭하면 그 호텔 상세페이지 ㄱ -->
                <a href="">
                    <div class="bringHotel">

                        <!-- 호텔 대표 사진 -->
                        <div class="Hotelpic">
                            <img src="${pageContext.request.contextPath}/img/business_place_img/${book.BUSINESS_PLACE_NUM_FK}/${book.BUSINESS_PLACE_NUM_FK}_1.png" alt="" id="Hotelimg">
                        </div>

                        <!-- 호텔 이름 / 동물 종류 / 기간 -->
                        <div class="textHotelinfo">
                            <!-- 호텔 이름 -->
                            <div id="hotelname" class="H_info">
                                <span class="H_name">${book.business_name}</span>
                            </div>
                            <!-- 동물 맡긴 기간 -->
                            <div id="reserveDate" class="H_info">
                             	   기간 : 
                                <span id="petdate">${book.book_checkin_date } ~ ${book.book_checkout_date }</span>
                            </div>
                        </div>
                    </div>
                </a>

				<form action="/review/reviewWriteOK.review" method="post" enctype="multipart/form-data">
				<input type="hidden" name="business_place_num_fk" value ="${book.BUSINESS_PLACE_NUM_FK}">
                <textarea name="review_contents" id="write_review" ></textarea>
                
                <a href="javascript:upload('file${1}')"><input type="file" name="file${i+1}" id="file${i+1}" class="file"></a>
                <a href="javascript:cancelFile('file${1}')"><input type="button" id="deletethumb" value="이미지 삭제" onclick="deletepick()"></a>
                
                <div class="getpic">
                    <!-- 받아오는 이미지들  id를 전부 getpic으로 설정 -->
                    <div id="imgbox" class="file${i+1}_cont">
                     	<c:forEach var="i" begin="0" end="1">
                              <div class="file${i+1}_cont">

                                 <div style="float: left;">
                                   
                                    <input type="hidden" name="filename" value="${i<files.size() ? files[i].orgname : ''}">
                                 </div>
                                 
                                 <c:forTokens items="${files[i].orgname}" delims="." var="token" varStatus="status">
                                    <c:if test="${status.last}">
                                       <c:if
                                          test="${token eq 'jpg' or token eq 'jpeg' or token eq 'png' or token eq 'gif' or token eq 'webp'}">
                                          <img src="${cp}/reviewfile/${files[i].systemname}" class="thumbnail">
                                       </c:if>
                                    </c:if>
                                 </c:forTokens>
                              </div>
                         </c:forEach>  
                    </div>
                </div>
                <div class="upload">
                    <input class="SC" id="UP" type="submit" value="리뷰 업로드">
                    <input class="SC" id="DE" type="button" value="취소">
                </div>
                </form>
            </div>
        </div>
</body>

<%@ include file="../../footer/footer.jsp" %>
<script src="${pageContext.request.contextPath}/js/pc_header.js"></script>
<script src="${pageContext.request.contextPath}/js/writereview.js"></script>
<script src="https://code.jquery.com/jquery-migrate-1.2.1.js"></script>
<script>

   function upload(name){
      $("#"+name).click();
   }
   //$(제이쿼리선택자).change(함수) : 해당 선택자의 요소에 변화가 일어난다면 넘겨주는 함수 호출
   $("[type='file']").change(function(e){
      //e : 파일이 업로드된 상황 자체를 담고있는 객체
      //e.target : 파일이 업로드가 된 input[type=file] 객체(태그객체)
      //e.target.files : 파일태그에 업로드를 한 파일 객체들의 배열
      let file = e.target.files[0];
      
      if(file == undefined){
         //$("#file1name")
         $("#"+e.target.id+"name").text("선택된 파일 없음");
         $("."+e.target.id+"_cont .thumbnail").remove();
      }
      else{
         $("#"+e.target.id+"name").text(file.name);
         
         //["QR","png"]
         let ext = file.name.split(".").pop();
         if(ext == 'jpeg' || ext == 'jpg' || ext == 'png' || ext == 'gif' || ext == 'webp'){
            $("."+e.target.id+"_cont .thumbnail").remove();
            const reader = new FileReader();
            
            reader.onload = function(ie){
               const img = document.createElement("img"); 
               img.setAttribute("src",ie.target.result)
               img.setAttribute("class",'thumbnail');//<img src="???/QR.png" class="thumbnail">
               document.querySelector("."+e.target.id+"_cont").appendChild(img);
            }
            
            reader.readAsDataURL(file);
         }
         
      }
   });
   
   function cancelFile(name){
      if($.browser.msie){
         $("input[name="+name+"]").replaceWith( $("input[name="+name+"]").clone(true) );
      }
      else{
         $("input[name="+name+"]").val("");
      }
      $("#"+name+"name").text("선택된 파일 없음");
      $("."+name+"_cont .thumbnail").remove();
      $("#"+name+"name").next().val("");
   };
   
</script>
</html>