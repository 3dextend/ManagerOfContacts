<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf8">
	<title><spring:message code="label.title" /> Login Page</title>
	<!-- Bootstrap core CSS -->
	<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">

	<!-- Custom styles for this template -->
	<link href="<c:url value="/resources/css/style-50.css" />" rel="stylesheet">

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->
</head>
<body>
<div class="parent">
	<div class="block">
<c:if test="${not empty param.error}">
	<font color="red"> <spring:message code="label.loginerror" />
	: ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message} </font>
</c:if>
<div class="ui-content">
	<h3 class="text-center">Login to your Account</h3>
<form class="text-center" method="POST" action="<c:url value="/j_spring_security_check" />">
<div class="form-group">
		<input class="form-control" type="text" name="j_username" required="required" placeholder="Login * admin"/>
</div>
	<div class="form-group">
		<input class="form-control" type="password" name="j_password" required="required" placeholder="Password * 123456"/>
	</div>
	<div class="checkbox">
		<label>
		<input type="checkbox" name="_spring_security_remember_me" />
		<spring:message code="label.remember" />
		</label>
	</div>

	<div class="form-group">
		<input class="btn btn-red" type="submit" value="Login" />

		<input class="btn btn-white" type="reset" value="Reset" />
	</div>
</form>
	<br/><div style="text-align: center"><a href="<c:url value="/index" />">
		<h4><spring:message code="label.contacts" /></h4>
</a></div>

</div>
	</div>
</div>

</body>
</html>