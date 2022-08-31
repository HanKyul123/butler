<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang= 'en'>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="under1"
	href="${pageContext.request.contextPath}/img/under1.png">
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/policy2.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/footer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/pc_header.css">
	<link rel="icon"
	href="${pageContext.request.contextPath}/img/Hotel_icon.png">
<title>Butler:policy</title>
<%@ include file="../../header/pc_header.jsp"%>
</head>
<body>
<div class="policy_wrap">
               <div class="moremore" id="content">
            <nav>
                <ul>
                    <li>
                        <a href="${pageContext.request.contextPath}/app/noticeView/noticeView.jsp" class="more_a">공지사항</a>
                    </li>
                    <li>
                    <a href="${pageContext.request.contextPath}/app/QnAView/QnAView.jsp" class="more_a">자주 묻는 질문</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/app/policyView/policy.jsp" id="click" class="more_a">약관 및 정책</a>
                    </li>
                </ul>
            </nav>
            </div>
        
        
        <div class="t_policy"> 
            <div class="policy">
                <div class="tab"> 
                    <ul>
                        <li>
                            <a href="${pageContext.request.contextPath}/app/policyView/policy.jsp" class="tab_1">이용약관</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/app/policyView/policy2.jsp" class="tab_on">위치기반 서비스 이용약관</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/app/policyView/policy3.jsp" class="tab_2">개인정보 처리방침</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/app/policyView/policy4.jsp" class="tab_3">소비자 분쟁해결 기준</a>
                        </li>
                    </ul>
                </div>
                <div class="t_more">
                    <div class="p_more">
                        <div class="title">
                            <h2>위치기반 서비스 이용약관</h2>
                        </div>
                        <div class="p_wrap">
                            <div class="policy_list">
                                <a href="javascript:GetShow()"  class="list_title">
                                    <span>01.</span>
                                    <strong>제 1조 (목적)</strong>
                                    <img src="${pageContext.request.contextPath}/img/under1.png" width="15px" class="under">
                                    <div class="list_text" id="list_text" style="display: none;">
                                        <ul>
                                            <li>
                                                본 약관은 주식회사 여기어때컴퍼니(이하 "회사"라 함)이 제공하는 위치기반서비스(이하 "서비스"라 함)를 이용함에 있어 "회사"와 서비스를 이용하고자 하는 자(이하 "이용자"라 함)의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다.
                                            </li>
                                        </ul>
                                            
                                        </p>
                                </div>
                            </a>
                        </div>
                        <div class="policy_list">
                            <a href="javascript:GetShow2()"  class="list_title">
                                <span>02.</span>
                                <strong>제 2조 (이용약관의 효력 및 변경)</strong>
                                <img src="${pageContext.request.contextPath}/img/under1.png" width="15px"  class="under">
                                <div class="list_text" id="list_text_2" style="display: none;">
                                    <ul>
                                        <li>① 본 약관은 이용자가  본 약관에 동의하고 회사가 정한 소정의 절차에 따라 서비스의 이용자로 인정함으로써 효력이 발생합니다.</li>
                                        <li>② 이용자가 서비스를 이용하는 과정에서 약관 동의에 체크한 경우, 본 약관의 내용을 모두 읽고 이를 충분히 이해하였으며, 그 적용에 동의한 것으로 간주합니다.</li>
                                        <li>③ 회사는 위치정보의 보호 및 이용 등에 관한 법률, 콘텐츠산업 진흥법, 전자상거래 등에서의 소비자보호에 관한 법률, 소비자기본법 약관의 규제에 관한 법률 등 관련법령을 위배하지 않는 범위에서 본 약관을 개정할 수 있습니다.</li>
                                        <li>④ 회사가 약관을 개정할 경우에는 기존약관과 개정약관 및 개정약관의 적용일자와 개정사유를 명시하여 현행약관과 함께 그 적용일자 10일 전부터 적용일 이후 상당한 기간 동안 공지만을 하고, 개정 내용이 이용자에게 불리한 경우에는 그 적용일자 30일 전부터 적용일 이후 상당한 기간 동안 각각 이를 서비스 홈페이지에 게시하거나 이용자에게 전자적 형태(E-mail, SMS, App 메시지 등)로 약관 개정 사실을 발송하여 고지합니다.</li>
                                        <li>⑤ 회사가 전항에 따라 이용자에게 통지하면서 공지 또는 공지∙고지일로부터 개정약관 시행일 7일 후까지 거부의사를 표시하지 아니하면 이용약관에 승인한 것으로 봅니다. 이용자가 개정약관에 동의하지 않을 경우 이용자는 이용계약을 해지할 수 있습니다.</li>
                                    </ul>
                            </div>
                        </a>
                    </div>
                    <div class="policy_list">
                        <a href="javascript:GetShow3()"  class="list_title">
                            <span>03.</span>
                            <strong>제 3조 (관계법령의 적용)</strong>
                            <img src="${pageContext.request.contextPath}/img/under1.png" width="15px" class="under">
                            <div class="list_text" id="list_text_3" style="display: none;">
                               
                                <p>본 약관은 신의성실의 원칙에 따라 공정하게 적용하며, 본 약관에 명시되지 아니한 사항에 대하여는 관계법령 또는 상관례에 따릅니다.</p>
                        </div>
                    </a>
                </div>
                <div class="policy_list">
                    <a href="javascript:GetShow4()"  class="list_title">
                        <span>04.</span>
                        <strong>제 4조 (서비스의 내용)</strong>
                        <img src="${pageContext.request.contextPath}/img/under1.png" width="15px" class="under">
                        <div class="list_text" id="list_text_4" style="display: none;">
                            <p>회사가 제공하는 서비스는 아래와 같습니다.</p> <br>
                            <table>
                                <colgroup>
                                    <col width="40%">
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th>서비스 명</th>
                                        <th>서비스 내용</th>
                                    </tr>
                                    <tr>
                                        <td>여기어때 서비스</td>
                                        <td>
                                            - 위치정보수집 대상의 실시간 위치확인 <br>
					                        - 이용자의 위치에서 근접한 업소정보제공
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>QR코드 현장혜택 서비스</td>
                                        <td>
                                            - 정상 이용 판단을 위한 단말기 위치정보수집 <br>
                                            - 이용자에게 서비스 이용 혜택 제공
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                    </div>
                </a>
            </div>
            <div class="policy_list">
                <a href="javascript:GetShow5()"  class="list_title">
                    <span>05.</span>
                    <strong>제 5조 (서비스 이용 요금)</strong>
                    <img src="${pageContext.request.contextPath}/img/under1.png" width="15px" class="under">
                    <div class="list_text" id="list_text_5" style="display: none;">
                        <ul>
                            <li>① 회사가 제공하는 서비스는 기본적으로 무료입니다. 단, 별도의 유료 서비스의 경우 해당 서비스에 명시된 요금을 지불하여야 사용 가능합니다.</li>
                            <li>② 회사는 유료 서비스 이용요금을 회사와 계약한 전자지불업체에서 정한 방법에 의하거나 회사가 정한 청구서에 합산하여 청구할 수 있습니다.</li>
                            </li>
                            <li>③ 유료서비스 이용을 통하여 결제된 대금에 대한 취소 및 환불은 회사의 결제 이용약관 등 관계법에 따릅니다.</li>
                            <li>④ 이용자의 개인정보도용 및 결제사기로 인한 환불요청 또는 결제자의 개인정보 요구는 법률이 정한 경우 외에는 거절될 수 있습니다.</li>
                            <li>⑤ 무선 서비스 이용 시 발생하는 데이터 통신료는 별도이며 가입한 각 이동통신사의 정책에 따릅니다.</li>
                            </li>
                        </ul>
                </div>
            </a>
        </div>
        <div class="policy_list">
            <a href="javascript:GetShow6()"  class="list_title">
                <span>06.</span>
                <strong>제 6조 (서비스내용변경 통지 등)</strong>
                <img src="${pageContext.request.contextPath}/img/under1.png" width="15px" class="under">
                <div class="list_text" id="list_text_6" style="display: none;">
                    <ul>
                        <li>① 회사가 서비스 내용을 변경하거나 종료하는 경우, 회사는 이용자가 회원가입 시 제공한 E-mail, SMS 또는 App 메시지 등을 통하여 서비스 내용의 변경 사항 또는 종료를 통지할 수 있습니다.</li>
                        <li>② ①항의 경우 불특정 다수인을 상대로 통지를 함에 있어서는 웹사이트 등 기타 회사의 공지사항을 통하여 이용자들에게 통지할 수 있습니다.</li>
                    </ul>
            </div>
        </a>
    </div>
    <div class="policy_list">
        <a href="javascript:GetShow7()"  class="list_title">
            <span>07.</span>
            <strong>제 7조 (서비스이용의 제한 및 중지)</strong>
            <img src="${pageContext.request.contextPath}/img/under1.png" width="15px" class="under">
            <div class="list_text" id="list_text_7" style="display: none;">
                <ul>
                    <li>① 회사는 아래 각 호의 1에 해당하는 사유가 발생한 경우에는 이용자의 서비스 이용을 제한하거나 중지시킬 수 있습니다.
				
                        <ul>
                            <li>1. 이용자가 회사 서비스의 운영을 고의 또는 중과실로 방해하는 경우</li>
                            <li>2. 서비스용 설비 점검, 보수 또는 공사로 인하여 부득이한 경우</li>
                            <li>3. 전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지했을 경우</li>
                            <li>4. 국가비상사태, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 서비스 이용에 지장이 있는 때</li>
                            <li>5. 기타 중대한 사유로 인하여 회사가 서비스 제공을 지속하는 것이 부적당하다고 인정하는 경우</li>
                        </ul>
                    </li>
                    <li>② 회사는 전항의 규정에 의하여 서비스의 이용을 제한하거나 중지한 때에는 그 사유 및 제한기간 등을 이용자에게 알려야 합니다.</li>
                   
                </ul>
        </div>
    </a>
</div>
<div class="policy_list">
    <a href="javascript:GetShow8()"  class="list_title">
        <span>08.</span>
        <strong>제 8조 (개인위치정보의 이용 또는 제공)</strong>
        <img src="${pageContext.request.contextPath}/img/under1.png" width="15px" class="under">
        <div class="list_text" id="list_text_8" style="display: none;">
            <ul>
                <li>① 회사는 개인위치정보를 이용하여 서비스를 제공하고자 하는 경우에는 미리 이용약관에 명시한 후 개인위치정보주체의 동의를 얻어야 합니다.</li>
                <li>② 이용자 및 법정대리인의 권리와 그 행사방법은 제소 당시의 이용자의 주소에 의하며, 주소가 없는 경우에는 거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 주소 또는 거소가 분명하지 않거나 외국 거주자의 경우에는 민사소송법상의 관할법원에 제기합니다.</li>
                <li>③ 회사는 타사업자 또는 이용자와의 요금정산 및 민원처리를 위해 위치정보 이용•제공․사실 확인자료를 자동 기록•보존하며, 해당 자료는 1년간 보관합니다.
                </li>
                <li>④ 회사는 개인위치정보를 이용자가 지정하는 제3자에게 제공하는 경우에는 개인위치정보를 수집한 당해 통신 단말장치로 매회 이용자에게 제공받는 자, 제공일시 및 제공목적을 즉시 통보합니다. 단, 아래 각 호의 1에 해당하는 경우에는 이용자가 미리 특정하여 지정한 통신 단말장치 또는 전자우편주소로 통보합니다.
                    <ul>
                        <li>1. 개인위치정보를 수집한 당해 통신단말장치가 문자, 음성 또는 영상의 수신기능을 갖추지 아니한 경우</li>
                        <li>2. 이용자가 온라인 게시 등의 방법으로 통보할 것을 미리 요청한 경우</li>
                    </ul>
				</li>
            </ul>
    </div>
</a>
</div>
<div class="policy_list">
    <a href="javascript:GetShow9()"  class="list_title">
        <span>09.</span>
        <strong>제 9조 (개인위치정보주체의 권리)</strong>
        <img src="${pageContext.request.contextPath}/img/under1.png" width="15px" class="under">
        <div class="list_text" id="list_text_9" style="display: none;">
            <ul>
                <li>① 이용자는 회사에 대하여 언제든지 개인위치정보를 이용한 위치기반서비스 제공 및 개인위치정보의 제3자 제공에 대한 동의의 전부 또는 일부를 철회할 수 있습니다. 이 경우 회사는 수집한 개인위치정보 및 위치정보 이용, 제공사실 확인자료를 파기합니다.</li>
                <li>② 이용자는 회사에 대하여 언제든지 개인위치정보의 수집, 이용 또는 제공의 일시적인 중지를 요구할 수 있으며, 회사는 이를 거절할 수 없고 이를 위한 기술적 수단을 갖추고 있습니다.</li>
                <li>③ 이용자는 회사에 대하여 아래 각 호의 자료에 대한 열람 또는 고지를 요구할 수 있고, 당해 자료에 오류가 있는 경우에는 그 정정을 요구할 수 있습니다. 이 경우 회사는 정당한 사유 없이 회원의 요구를 거절할 수 없습니다.
                </li>
                <ul>
                    <li>1. 본인에 대한 위치정보 수집, 이용, 제공사실 확인자료</li>
                    <li>2. 본인의 개인위치정보가 위치정보의 보호 및 이용 등에 관한 법률 또는 다른 법률 규정에 의하여 제3자에게 제공된 이유 및 내용</li>
                </ul>
                <li>④ 이용자는 제1항 내지 제3항의 권리행사를 위해 회사의 소정의 절차를 통해 요구할 수 있습니다.</li>
            </ul>
    </div>
</a>
</div>
<div class="policy_list">
    <a href="javascript:GetShow10()"  class="list_title">
        <span>10.</span>
        <strong>제 10조 (법정대리인의 권리)</strong>
        <img src="${pageContext.request.contextPath}/img/under1.png" width="15px" class="under">
        <div class="list_text" id="list_text_10" style="display: none;">
            <ul>
                <li>① 만 14세 미만 이용자로서 개인위치정보를 활용한 위치기반 서비스를 이용하는 경우 회사는 이용자의 개인위치정보를 이용 및 제3자에게 제공하게 되며, 법정대리인의 동의를 받아야 합니다.(서면, 고객행복센터 등을 통해)</li>
                <li>② 1항의 경우 법정대리인은 제9조에 의한 이용자의 권리를 모두 가집니다.</li>
                <li>③ 만 14세 미만 이용자가 법정대리인의 동의 없이 위치기반 서비스를 이용한 것으로 판명된 때에는 회사는 즉시 해당 개인위치정보를 삭제하거나, 위치기반 서비스 이용을 중단하는 등 적절한 제한을 할 수 있습니다.</li>
                
            </ul>
    </div>
</a>
</div>
<div class="policy_list">
    <a href="javascript:GetShow11()"  class="list_title">
        <span>11.</span>
        <strong>제 11조 (위치정보관리책임자의 지정)</strong>
        <img src="${pageContext.request.contextPath}/img/under1.png" width="15px" class="under">
        <div class="list_text" id="list_text_11" style="display: none;">
            <ul>
                <li>① 회사는 위치정보를 적절히 관리․보호하고 개인위치정보주체의 불만을 원활히 처리할 수 있도록 실질적인 책임을 질 수 있는 지위에 있는 자를 위치정보관리책임자로 지정해 운영합니다.  </li>
                <li>② 위치정보관리책임자는 위치기반서비스를 제공하는 부서의 부서장으로서 구체적인 사항은 본 약관의 부칙에 따릅니다.</li>
                
            </ul>
    </div>
</a>
</div>
<div class="policy_list">
    <a href="javascript:GetShow12()"  class="list_title">
        <span>12.</span>
        <strong>제 12조 (손해배상)</strong>
        <img src="${pageContext.request.contextPath}/img/under1.png" width="15px" class="under">
        <div class="list_text" id="list_text_12" style="display: none;">
            
            <ul>
               <li>① 회사가 위치정보의 보호 및 이용 등에 관한 법률 제15조 내지 제26조의 규정을 위반한 행위로 이용자에게 손해가 발생한 경우 이용자는 회사에 대하여 손해배상 청구를 할 수 있습니다. 이 경우 회사는 고의, 과실이 없음을 입증하지 못하는 경우 책임을 면할 수 없습니다. <br>
                이용자가 서비스 및 혜택받기를 이용하면서 불법행위 또는 고의나 과실로 이 약관을 위반하여 회사가 해당 고객 이외의 제 3자로부터 손해배상청구 또는 소송을 비롯한 각종 이의제기를 받는다면 해당 이용자는 그 때문에 회사에 발생한 손해를 배상해야 합니다.
            </li>
            <li>② 이용자가 본 약관의 규정을 위반하여 회사에 손해가 발생한 경우 회사는 이용자에 대하여 손해배상을 청구할 수 있습니다. 이 경우 이용자는 고의, 과실이 없음을 입증하지 못하는 경우 책임을 면할 수 없습니다.</li>
            </ul>
    </div>
</a>
</div>
<div class="policy_list">
    <a href="javascript:GetShow13()"  class="list_title">
        <span>13.</span>
        <strong>제 13조 (면책)</strong>
        <img src="${pageContext.request.contextPath}/img/under1.png" width="15px" class="under">
        <div class="list_text" id="list_text_13" style="display: none;">
            <ul>
                <li>① 회사는 다음 각 호의 경우로 서비스를 제공할 수 없는 경우 이로 인하여 이용자에게 발생한 손해에 대해서는 책임을 부담하지 않습니다.
                    <ul>
                        <li>1. 천재지변 또는 이에 준하는 불가항력의 상태가 있는 경우</li>
                        <li>2. 서비스 제공을 위하여 회사와 서비스 제휴계약을 체결한 제3자의 고의적인 서비스 방해가 있는 경우</li>
                        <li>3. 이용자의 귀책사유로 서비스 이용에 장애가 있는 경우</li>
                        <li>4. 제1호 내지 제3호를 제외한 기타 회사의 고의∙과실이 없는 사유로 인한 경우</li>
                    </ul>
				</li>
                <li>② 회사는 서비스 및 서비스에 게재된 정보, 자료, 사실의 신뢰도, 정확성 등에 대해서는 보증을 하지 않으며 이로 인해 발생한 이용자의 손해에 대하여는 책임을 부담하지 아니합니다.</li>
            </ul>
    </div>
</a>
</div>
<div class="policy_list">
    <a href="javascript:GetShow14()"  class="list_title">
        <span>14.</span>
        <strong>제 14조 (규정의 준용)</strong>
        <img src="${pageContext.request.contextPath}/img/under1.png" width="15px" class="under">
        <div class="list_text" id="list_text_14" style="display: none;">
            <ul>
                <li>① 본 약관은 대한민국법령에 의하여 규정되고 이행됩니다.</li>
                <li>② 본 약관에 규정되지 않은 사항에 대해서는 관련법령 및 상관습에 의합니다.</li>
            </ul>
    </div>
</a>
</div>
<div class="policy_list">
    <a href="javascript:GetShow15()"  class="list_title">
        <span>15.</span>
        <strong>제 15조 (분쟁의 조정 및 기타)</strong>
        <img src="${pageContext.request.contextPath}/img/under1.png" width="15px" class="under">
        <div class="list_text" id="list_text_15" style="display: none;">
            <ul>
                <li>① 회사는 위치정보와 관련된 분쟁에 대해 당사자간 협의가 이루어지지 아니하거나 협의를 할 수 없는 경우에는 위치정보의 보호 및 이용 등에 관한 법률 제28조의 규정에 의한 방송통신위원회에 재정을 신청할 수 있습니다.</li>
                <li>② 회사 또는 이용자는 위치정보와 관련된 분쟁에 대해 당사자간 협의가 이루어지지 아니하거나 협의를 할 수 없는 경우에는 개인정보보호법 제43조의 규정에 의한 개인정보분쟁조정위원회에 조정을 신청할 수 있습니다.</li>
            </ul>
    </div>
</a>
</div>
<div class="policy_list">
    <a href="javascript:GetShow16()"  class="list_title">
        <span>16.</span>
        <strong>제 16조 (회사의 연락처)</strong>
        <img src="${pageContext.request.contextPath}/img/under1.png" width="15px" class="under">
        <div class="list_text" id="list_text_16" style="display: none;">
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 회사의 상호 및 주소 등은 다음과 같습니다.
                <ul>
                    <li>1. 상 호 : 주식회사 Butler</li>
                    <li>2. 대 표 자 : zl존 정다솔</li>
                    <li>3. 주 소 : 서울특별시 강남구 테헤란로 146 현익빌딩 3층, 4층</li>
                    <li>4. 대표 문의 : 02-583-0021</li>
                </ul>
            </p>
            
    </div>
</a>
</div>
<div class="policy_list">
    <a href="javascript:GetShow17()"  class="list_title">
        <span>27.</span>
        <strong>제 17조 (시행일 및 관리책임자)</strong>
        <img src="${pageContext.request.contextPath}/img/under1.png" width="15px" class="under">
        <div class="list_text" id="list_text_17" style="display: none;">
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이 약관은 2022년 08월 19일부터 시행한다.</p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;위치정보관리책임자는 2019년 03월을 기준으로 다음과 같이 지정합니다.
                <ul>
                    <li>1. 소 속 : Butler 서비스</li>
                    <li>2. 성 명 : 김병준</li>
                    <li>3. 연락처 : 010-2819-5192</li>
                </ul>
            </p>
    </div>
</a>
</div>
</div>
</div>
</div>
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
<script src="${pageContext.request.contextPath}/js/policy2.js"></script>
<script src="${pageContext.request.contextPath}/js/pc_header.js"></script>
</html>