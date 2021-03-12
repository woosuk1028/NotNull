<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "java.util.HashMap" %>
    <%@page import = "vo.Product" %>
    <%@page import = "java.util.ArrayList" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table{margin:0 auto;}
#productImage {width:350px; height:450px; top: 300px;}
#ptable {position:absolute;}
</style>
</head>
<body>
<jsp:include page="top.jsp"></jsp:include>
<section id="listForm">
<c:if test="${productList != null }">

<table>
	<tr>
		<c:forEach var = "product" items="${productList }" varStatus="status">
		<td>
			<table id="ptable">
				<tr><td>
				<a href="productView.me?pcode=${product.pcode }">
				<img src="images/${product.img }" id="productImage"/>
				</a>
				</td></tr>
				
				<tr><td><a class="ptext" href="#">${product.name }</a></td></tr>
				<tr><td><a class="ptext" href="#">${product.price }</a></td></tr>
			
			</table>
		</td>
		<c:if test="${((status.index+1) mod 4) == 0 }">
	</tr>
	<tr>
		</c:if>
		</c:forEach>
	</tr>
</table>
</c:if>
<c:if test="${productList==null }">
	<div class="div_empty">
	상품이 없습니다.
	</div>
</c:if>

</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>