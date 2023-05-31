<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet" href="/style/style.css">
<style>
</style>
</head>
<body>
	<div id="wrap">
		<h1><%="JdbcTemplate 출력"%></h1>
		<hr>
<div id="goodsListArea">

			<div class="columnArea headerArea dFlex">
				<span>번호</span> 
				<span>상품명</span> 
				<span>상품코드</span> 
				<span>가격</span> 
				<span>재고</span>
				<span>등록시간</span>

			</div>

				<c:forEach var="goods" items="${memberList}">
			<div class="columnArea rowArea dFlex">
					<span>${goods.num}</span>
					<span>${goods.goodsName}</span>
					<span>${goods.goodsCode}</span>
	<fmt:formatNumber var="pricePrn" value="${goods.price}" pattern="0,000"/>
					<span>${pricePrn}</span>
					<span>${goods.cnt}</span>
					<fmt:formatDate var="tm" value="${goods.regTM}" 
								pattern="yyyy-MM-dd" />
						<span>${tm}</span>
					
			</div>
				</c:forEach>

		</div>

	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.6.4.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>



