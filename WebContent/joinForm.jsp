<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    
        
    a{text-decoration:none; color:black;}
    
	#joinformArea{
        padding-top:150px;
		width : 400px;
		margin : auto;
		
	}
	table{
        font-size:13px;
		width : 380px;
		margin :  auto;
		text-align: center;
	}
        .ipt {width: 250px; height:20px; }
        .lab {width:80px; text-align:left;}
        .ipt input{width:250px; border:1px solid darkgray;margin-bottom:10px; margin-top:5px;}
        #addr{margin:0; width:150px; margin-right:10px;}
        #adbtn{margin:0; width:70px; height:20px; background:white;
        margin-left:20px;}
        
        #use{width:250px; height:150px; border:1px solid darkgray;
         font-size:12px;}
        
        #birth{font-size:12px;}
        .botbtn{height:80px;}
        .botbtn a{margin-left:10px;}
        .joinbox {width:200px; height:30px; background:black; margin-left: 130px; }
        .joinbox a{color:white; font-family:arial; font-size:12px;}
        .joinbox p{padding-top:5px;}
        
</style>
</head>
<body>
<jsp:include page="top.jsp"></jsp:include>
<section id = "joinformArea">
<form name="joinform" action="./memberJoinAction.me" method="post">
<table>
	<tr>
		<td class="lab"><label for = "memberId">아이디 </label></td>
		<td class="ipt"><input type="text" name="memberId" id = "memberId"/></td>
	</tr>
	<tr>
		<td class="lab"><label for = "pass">비밀번호  </label></td>
		<td class="ipt"><input type="password" name="pass" id = "pass"/></td>
	</tr>
	<tr>
		<td class="lab"><label for = "name">이름  </label></td>
		<td class="ipt"><input type="text" name="name" id = "name"/></td>
	</tr>
	<tr>
		<td class="lab"><label for = "age">나이  </label></td>
		<td class="ipt"><input type="text" name="age" maxlength="2" id = "age"/></td>
	</tr>
	<tr>
		<td class="lab"><label for = "gender">성별 </label></td>
		<td>
			<input type="radio" name="gender" value="남" checked="checked" id = "gender" />남자
			<input type="radio" name="gender" value="여"/>여자
		</td>
	</tr>
	<tr>
		<td class="lab"><label for = "email">이메일 주소 </label></td>
		<td class="ipt"><input type="text" name="email" id = "email"/></td>
	</tr>
	<tr>
		<td class="lab"><label for = "phone">휴대전화  </label></td>
		<td class="ipt"><input type="text" name="phone" id = "phone"/></td>
	</tr>
	<tr>
		<td class="lab"><label for = "addr">주소  </label></td>
		<td class="ipt"><input type="text" name="addr" id = "addr"/><input id="adbtn" type="button" value="우편번호"></td>
	</tr>
	<tr>
		<td class="lab"><label for = "postalcode">상세주소  </label></td>
		<td class="ipt"><input type="text" name="postalcode" id = "postalcode"/></td>
	</tr>
	<tr>
		<td class="lab"><label for = "birthday">생년월일  </label></td>
		<td class="ipt"><input type="date" name="birth" id = "birth"/></td>
	</tr>
	<tr>
    <td class="lab">이용약관</td>
	    <td>
	        <textarea id="use" readonly>
1. 개인정보 수집목적 및 이용목적

가. 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 
요금정산 콘텐츠 제공 , 구매 및 요금 결제 , 
물품배송 또는 청구지 등 발송 , 
금융거래 본인 인증 및 금융 서비스, 마케팅

나. 회원 관리
회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 
불량회원의 부정 이용 방지와 비인가 사용 방지 , 
가입 의사 확인 , 연령확인 , 만14세 미만 아동의
개인정보 수집 시 법정 대리인 동의여부 확인, 
불만처리 등 민원처리 , 고지사항 전달


2. 수집하는 개인정보 항목 : 이름 , 생년월일 , 성별 , 
로그인ID , 비밀번호 , 자택 전화번호 , 휴대전화번호 , 
이메일 , 14세미만 가입자의 경우 법정대리인의 정보


3. 개인정보의 보유기간 및 이용기간
원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 
해당 정보를 지체 없이 파기합니다. 
단, 다음의 정보에 대해서는 아래의 이유로 
명시한 기간 동안 보존합니다.

가. 회사 내부 방침에 의한 정보 보유 사유
o 부정거래 방지 및 쇼핑몰 운영방침에 따른 보관 : 30년
나. 관련 법령에 의한 정보보유 사유
o 계약 또는 청약철회 등에 관한 기록
-보존이유 : 전자상거래등에서의소비자보호에관한법률
-보존기간 : 5년
o 대금 결제 및 재화 등의 공급에 관한 기록
-보존이유: 전자상거래등에서의소비자보호에관한법률
-보존기간 : 5년 
o 소비자 불만 또는 분쟁처리에 관한 기록
-보존이유 : 전자상거래등에서의소비자보호에관한법률
-보존기간 : 3년 
o 로그 기록 
-보존이유: 통신비밀보호법
-보존기간 : 3개월

※ 동의는 거부할 수 있으나 거부시 회원 가입이 불가능합니다.
		</textarea><br>
    <input type="checkbox" name="req" id="req">
    <label for="req" style="font-size:12px;">&nbsp;동의합니다</label>
	    </td>
	</tr>
	<tr>
		<td colspan="2" class="botbtn">
		    <div class="joinbox">
			    <p><a href="javascript:joinform.submit()">JOIN MEMBER</a></p>&nbsp;&nbsp;
			</div>
			
		</td>
	</tr>
</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>