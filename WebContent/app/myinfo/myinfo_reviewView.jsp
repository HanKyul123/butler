
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Butler:my Review</title>
<link rel="icon" href="${pageContext.request.contextPath}/img/Hotel_icon.png">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/myinfo_review.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/pc_header.css">


</head>

<%@ include file="../../../header/pc_header.jsp"%>


<body class="myinfo_review_wrap">

	<div class="my_review_title">내 정보</div>

	<div class="my_review_BigBox">

		<div class="my_review_box1">
			<a class="my_info_magage" href="${pageContext.request.contextPath}/app/myinfo/myinfoView.jsp">
			<div id="all_choice">내 정보 관리</div>
			</a> <br> 
			<a class="my_reservation_info" href="/book/findMyReservation.book"><div>예약 내역</div></a> <br> 
			<a class="my_review_info" href="/user/myinfoRevieViewAction.us">
			<div id="all_choice">내가 쓴 리뷰</div></a>

		</div>


		<!-- -------------------내용 공간------------------- -->
		<div class="my_review_box2">

			<div id="flex">
				<div class="myinfo_title">내가 쓴 리뷰</div>
			</div>
			
			<div class="myreview_cnt">
				<!-- 만약에 0건이면 nonreview 창 띄어주기 -->
				작성한 리뷰 <span id="MRC_n"></span>건
			</div>
 


			<!-- --------------- 리뷰들이 있는 박스 --------------- -->
			<div class="my_review_box2_1" id="my_review_box2_1">

				<!-- ---------------한 개의 리뷰 박스------------- -->
				
				
				<c:choose>
					<c:when test="${reviewResult != null and reviewResult.size()>0 }">
						<c:forEach items="${reviewResult}" var="reviewResult">
							<div class="review_box">
								<div class="img_name_pet">
									<!-- 호텔 이미지 -->
									<div>
										<img src="${pageContext.request.contextPath}/img/business_place_img/${reviewResult.business_place_num_pk}/${reviewResult.business_place_num_pk}_1.png" alt="" class="Hotel_img">
										
									</div>
									<!-- 호텔이름/동물종류/무게,가격 -->
									<div class="name_pet">
										<div class="Hname">${reviewResult.business_name}</div>
										<div class="Pname">일시 : ${reviewResult.book_checkin_date} ~ ${reviewResult.book_checkout_date}</div>
										<div class="Pprice">리뷰 작성일시 : ${reviewResult.review_regdate}</div>
									</div>
								</div>


								<!-- 리뷰 내용과 수정/삭제 버튼 -->
								<!--  리뷰 수정 누르면 display:none;  -->
								<div class="content_btn">
									<div class="review_content">
										${reviewResult.review_contents}

										<!-- ----------------------- 썸네일 보이는 곳 ----------------------- -->
										<!-- img id는 Thumbnail로 하기 -->
										<!-- 만약 img가 하나도 없으면 Thumbnail_Box display: none으로 설정하기 -->
										<div id="Thumbnail_Box">
											<c:choose>
												<c:when test="${reviewResult.review_file_systemname != null}">
													<img src="${cp}/file/${reviewResult.review_file_systemname}" class="thumbnail" id="thumbnail2">
												</c:when>
												<c:otherwise>

												</c:otherwise>
											</c:choose>
										</div> 

									</div>
									<div class="btn">
										<!-- 수정 버튼 -->
										<button type="button" class="MDbtn" id="Mbtn" onclick="modify(this)">
											<img class="MD" id="modify_btn" src="${pageContext.request.contextPath}/img/modify_icon_bright.png" alt="" title="수정하기">
										</button>

										<!-- 삭제 버튼 -->
										<!-- 삭제를 누르면 삭제 요청이 넘어가고 리뷰수 - 1 이 된다. -->
										<form method="post" action="/user/review_delete.us">
											<button type="submit" class="MDbtn" id="Dbtn">
												<img src="${pageContext.request.contextPath}/img/delete_focus_bright.png" alt="" class="MD" id="delete_btn" title="삭제하기">
											</button>
											<input type="hidden" name="reviewNumPk" value="${reviewResult.review_num_pk}">
											<input type="hidden" name="replyNumPk" value="${reviewResult.reply_num_pk}">
										</form>
									</div>
								</div>

								<!--  리뷰 수정 완료 또는 취소하면 display:none;  -->
								 <form id="review_modify_Form" method="post" action="/user/review_modifyAction.us" enctype="multipart/form-data">
									
									<div class="newreview_btn">
										<textarea name="modify_contents" id="modify_contents" cols="30" rows="10">${reviewResult.review_contents}</textarea>
										<input type="hidden" id="review_num_pk" name="review_num_pk" value="${reviewResult.review_num_pk}"> 
                           				<input type="hidden" id="bpnum_pk" name="bpnum_pk"value="${reviewResult.business_place_num_pk}">
                           				<input type="hidden" id="book_num_pk" name="book_num_pk"value="${reviewResult.BOOK_NUM_PK}">
	
									
						

										<div class="imgBox">
											<div class="file${i+1}_cont">
												<div class="modypic" id="ele">
												<img src="${cp}/file/${reviewResult.review_file_orgname}" class="thumbnail">
													<c:forTokens items="${files[i].orgname}" delims="."
														var="token" varStatus="status">
														<c:if test="${status.last}">
															<c:if
																test="${token eq 'jpg' or token eq 'jpeg' or token eq 'png' or token eq 'gif' or token eq 'webp'}">
																<img src="${cp}/file/${files[i].systemname}"
																	class="thumbnail">
																	
															</c:if>
														</c:if>
													</c:forTokens>
												</div>
											</div>
										</div>
												
											<div id="flex_box">
											
												<a href="javascript:upload('file${i+1}')">
													<div id="Choosebtn">파일 선택</div>
												</a> 
												<label><input type="file" name="file${i+1}" id="file${i+1}" style="display: none;"> 
												
													<div class="upup">
														<span id="file${i+1}name">${i<files.size() ? files[i].orgname : "선택된 파일 없음"} </span> 
													</div>
												</label>	
													<input type="hidden" name="filename" value="${i<files.size() ? files[i].orgname : ''}">
												
												<a href="javascript:cancelFile('file${i+1}')">
													<div id="addpic_btn">첨부 삭제</div>
												</a>
												<button type="button" class = "cancel_btn" id="cancel_btn" onclick="canceling(this)">수정 취소</button>
												<input id="complete_modify" type="submit" value="수정 완료">
											</div>
										
										</div>
									</form>
								</div>
							</c:forEach>
						</c:when>
						<c:otherwise>
					
						</c:otherwise>
				</c:choose>
				
				<!-- -------------------------------------------- -->
				
				


			</div>


		</div>

	</div>

 
</body>
<!-- 문서수정할때는주석처리를 하고 진행하세요 -->
<c:choose>
    	<c:when test="${sessionScope.LoginUser eq null}">
			<script>
				alert("login후에 이용하세요.");
				window.location.href="/index.jsp"
			</script>
    	</c:when>
	</c:choose>

<%@ include file="../../../footer/footer.jsp"%>
<script src="${pageContext.request.contextPath}/js/pc_header.js"></script>
<script src="${pageContext.request.contextPath}/js/myinfo_review.js"></script>
<script>
		
		function count() {
			if(parent_review.childElementCount < 0){
				counttxt.innerHTML = 0;
			}else{
				counttxt.innerHTML = parent_review.childElementCount;
			}
		}
		
		count();
console.log(parent_review.childElementCount);
</script>
<script src="https://code.jquery.com/jquery-migrate-1.2.1.js"></script>
<script>
	function upload(name){
		$("#"+name).click();
	}
	//$(제이쿼리선택자).change(함수) : 해당 선택자의 요소에 변화가 일어난다면 넘겨주는 함수 호출
	$("[type='file']").change(function(e){
		console.log("왜????");
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
			$(this).next().next().val(file.name)
			
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
		
	}

</script>

</html>