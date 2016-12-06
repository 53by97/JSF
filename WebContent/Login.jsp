<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	<f:view>
		<h:form id="loginform">
			<h:outputText value="LoginId" />
			<h:inputText id="username" value="#{loginBean.loginId}" maxlength="4" />
			<br>
			<h:outputText value="Password" />
			<h:inputSecret id="password" value="#{loginBean.password}" ></h:inputSecret> 
			<br>
			<h:commandButton id="login" value="Login" action="#{loginBean.authenticate}"></h:commandButton>
		</h:form>
		
		<c:if test="${not empty loginBean.message}">
			<h:outputText value="#{loginBean.message}" />
		</c:if>
	</f:view>
</body>
</html>