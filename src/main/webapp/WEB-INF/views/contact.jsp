<%@ page language="java" contentType="text/html; charset=utf8"
		 pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf8">
	<title><spring:message code="label.title" /></title>
	<!-- Bootstrap core CSS -->
	<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
	<!-- Custom styles for this template -->
	<link href="<c:url value="/resources/css/style-50.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/style-273.css" />" rel="stylesheet">
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->
</head>

<body>
<div class="parent">
	<div class="blockmanager">

		<a href="<c:url value="/logout" />">
			<spring:message code="label.logout" />
		</a>
		<div class="ui-content">
			<h3 class="text-center"><spring:message code="label.title" /></h3>

			<form:form method="post" action="add" commandName="contact" class="text-center">

			<div class="form-group">
				<form:input class="form-control" path="firstname" required="required" placeholder="Name *"/>
			</div>
			<div class="form-group">
				<form:input class="form-control" path="lastname" placeholder="Last Name"/>
			</div>
			<div class="form-group">
				<form:input class="form-control" path="email" placeholder="Email"/>
			</div>
		</div>
		<div class="form-group">
			<form:input class="form-control" path="phone" required="required" placeholder="Phone Number *"/>
		</div>
		<div class="form-group">
		<input class="btn btn-lg btn-success" type="submit"
			   value="<spring:message code="label.addcontact"/>"/>
	</div>

		</form:form>

		<h3 class="text-center"><spring:message code="label.contacts" /></h3>
		<c:if test="${!empty contactList}">

			<!-- Table Responsive -->
			<div class="table-responsive">
			<table class="table table-bordered" style="background-color: #fff">
				<tr>
					<th style="text-align: center"><spring:message code="label.firstname" /></th>
					<th style="text-align: center"><spring:message code="label.email" /></th>
					<th style="text-align: center"><spring:message code="label.phone" /></th>
					<th>&nbsp;</th>
				</tr>
				<c:forEach items="${contactList}" var="contact">
					<tr>
						<td>${contact.lastname} ${contact.firstname}</td>
						<td>${contact.email}</td>
						<td>${contact.phone}</td>
						<td><a href="delete/${contact.id}"><spring:message code="label.delete" /></a></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>

			</div>
	</div>
</div>
</div>

</body>
</html>