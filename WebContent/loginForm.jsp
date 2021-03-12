<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>

<style>
	a{text-decoration:none; color:black;}
	
	#loginformArea{
	    margin : auto;
		width : 400px;
		
	}
	table{
		width : 380px;
		margin : auto;
		text-align: center;
        padding-top:200px;
	}
    
    td{
        padding-bottom:10px;    
        }
        #ic{float:left; padding-left:100px;}
    .icon{width:50px; float:left; margin-left:12px;}
        .icon img{width:100%;}
        
   #logos {width:10%;}
   #logos img{width:50%;}
</style>
</head> 
<body>
  <jsp:include page="top.jsp"></jsp:include>
   <section id = "loginformArea">
<form name="loginform" action="./memberLoginAction.me" method="post">
<table>

	<tr><td><input type="text" name="memberId" id = "memberId" placeholder="ID"/></td></tr>
	<tr><td><input type="password" name="pass" id = "pass" placeholder="PASSWORD"/></td></tr>
	<tr>
		<td colspan="2">
			<a href="javascript:loginform.submit()">Sign In</a>&nbsp;&nbsp;
			<a href="memberJoin.me">Create Account</a>
		</td>
	</tr>
</table>
</form>
<div id="ic">
<div class="icon"><a href="https://www.facebook.com/" target="_blank"><img src="images/fcb.png"></a></div>
<div class="icon"><a href="https://www.instagram.com/accounts/login/?next=%2Fyerin_the_genuine%2F&source=desktop_nav" target="_blank"><img src="images/insta.png"></a></div>
<div class="icon"><a href="https://accounts.kakao.com/login?continue=https://sharer.kakao.com/talk/friends/picker/shortlink/Ljw4%255Bs6C%252FDROpjOHxBfLaHc_yPbQA%2560i%252FbTXzQHE%253BMmW0ccW7nE%253FNJ%253B_TxO%2540c%255Eb3L" target="_blank"><img src="images/kakao.png"></a></div>
</div>
</section>
	<center>
	<div id="logos">
	<img src="images/logo.png">
	</div>
	</center>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>