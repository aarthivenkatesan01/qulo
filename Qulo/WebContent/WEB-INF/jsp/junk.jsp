<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<c:import url="/resources/includeFiles/includeAll.jsp"></c:import>
<link href="<c:url value="/resources/css/loginPage.css" />"
	rel="stylesheet">
<link rel="shortcut icon" href="<c:url value="/resources/images/favicon.ico" />" type="image/x-icon">

<title>Login / Register</title>

</head>
<body>
<c:import url="/resources/includeFiles/topMenuLogin.jsp"></c:import>
	<!-- Page Content -->
	<div class="container">
	
		<div class="myBgImage">
		<div class="row" id="row_padding">
							<div class="col-xs-4 col-md-2 col-md-offset-3" align="left">
									<img id="Quin" class="img-thumbnail" alt="Quin" src="<c:url value="/resources/images/MaleQulo.gif" />"/>
							</div>	
								<div class="col-xs-4 col-md-2" align="center">
									<img id="Qulo" class="img-thumbnail" alt="Qulo" src="<c:url value="/resources/images/quloname.png" />"/>
							</div>
								<div class="col-xs-4 col-md-2"align="right">
									<img id="Lori" class="img-thumbnail" alt="Lorie" src="<c:url value="/resources/images/FemaleQulo.gif" />"/>
								</div>
							</div>
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					<div class="panel panel-login">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-6">
									<a href="#" class="active" id="login-form-link">Login</a>
								</div>
								<div class="col-xs-6">
									<a href="#" id="register-form-link">Register</a>
								</div>
							</div>
							<hr>
						</div>
						<div class="panel-body">
						
						
							<div class="row">
								<div class="col-lg-12">

									<form id="login-form" name='f'
										action="${pageContext.request.contextPath}/j_spring_security_check"
										method='POST' style="display: block;">
										<div class="form-group">
										<div style="margin-bottom: 3%" class="input-group" >
										
											<span class="input-group-addon"><i
												class="glyphicon glyphicon-user"></i></span> <input type="text"
												name="username" id="username" tabindex="1"
												class="form-control" placeholder="Username" value="">
												</div>
										</div>
										<div class="form-group">
											<div style="margin-bottom: 3%" class="input-group" >
											
											<span class="input-group-addon"><i
												class="glyphicon glyphicon-lock"></i></span> <input type="password"
												name="password" id="password" tabindex="2"
												class="form-control" placeholder="Password">
											
										</div>
										<div id="loginErrorDiv" style="color: red; margin: 10px 0px;">
										</div>
										<!-- /login?error=true -->
											<c:if test="${param.error == 'true'}">
												<div id="loginDatabaseError" style="color: red; margin: 10px 0px;">

													Login Failed!!!<br /> Reason :
													${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}

												</div>
											</c:if>
										</div>
										<div class="form-group">
											<div class="row">
												<div class="col-sm-6 col-sm-offset-3">
													<input type="submit" name="login-submit" id="login-submit"
														tabindex="3" class="form-control btn btn-login"
														value="Log In">
												</div>
											</div>
										</div>
										<div class="form-group">
											<div class="row">
												<div class="col-lg-12">
													<div class="text-center">
														<a href="#" id="signup-link" tabindex="4" class="sign-up">Your
															heart is not octopied yet? Sign Up</a>
													</div>
												</div>
											</div>
										</div>
									</form>

									
										<form:form id="register-form" action="registerUser" method="post" modelAttribute="user" style="display: block;">
										
										<div class="form-group col-lg-6 col-md-6 col-sm-6">
											First Name: <form:input path="firstName" name="firstName" id="register1"
												tabindex="1" class="form-control" placeholder="First Name"/>
										</div>
										<div class="form-group col-lg-6 col-md-6 col-sm-6">
											Last Name: <form:input path="lastName" name="lastName" id="register2"
												tabindex="2" class="form-control" placeholder="Last Name"/>
										</div>
										
										<div  class="form-group col-lg-12 col-md-12 col-sm-12">
											Display Name: <form:input path="displayName" name="displayName"
												id="register3" tabindex="3" class="form-control"
												placeholder="Display Name"/>
											
										</div>
										
										<div class="form-group col-lg-6 col-md-6 col-sm-6">
											Password: <form:input type="password" path="password" name="password"
												id="register4" tabindex="4" class="form-control"
												placeholder="Password"/>
										</div>
										<div class="form-group col-lg-6 col-md-6 col-sm-6">
											Confirm Password: <input type="password"
												name="confirm-password" id="register5" tabindex="5"
												class="form-control" placeholder="Confirm Password">
										</div>
										
										<div class="form-group form-group-lg col-lg-4 col-md-4 col-sm-4">
											City: <form:select path="city" name="city" id="register6" tabindex="6"
												class="form-control">
												<form:option value="">Select an option</form:option>
												<form:option value="bryan">Bryan</form:option>
												<form:option value="cs">College Station</form:option>
											</form:select>
										</div>
										<div class="form-group form-group-lg col-lg-4 col-md-4 col-sm-4">
											State: <form:select path="state" name="state" id="register7" tabindex="7"
												class="form-control">
												<form:option value="">Select an option</form:option>
												<form:option value="texas">Texas</form:option>
											</form:select>
										</div>
										<div class="form-group form-group-lg col-lg-4 col-md-4 col-sm-4">
											Country: <form:select path="country" name="country" id="register8" tabindex="8"
												class="form-control">
												<form:option value="">Select an option</form:option>
												<form:option value="usa">USA</form:option>
											</form:select>
										</div>
										<div class="form-group form-group-lg col-lg-6 col-md-6 col-sm-6">
											Gender: <form:select path="gender" name="gender" id="register9" tabindex="9"
												class="form-control">
												<form:option value="">Select an option</form:option>
												<form:option value="female">Female</form:option>
												<form:option value="male">Male</form:option>
											</form:select>
										</div>
										<div class="form-group form-group-lg col-lg-6 col-md-6 col-sm-6">
											Looking For: <form:select path="lookingFor" name="lookingFor" id="register10"
												tabindex="10" class="form-control">
												<form:option value="">Select an option</form:option>
												<form:option value="female">Female</form:option>
												<form:option value="male">Male</form:option>
											</form:select>
										</div>
										<div class="form-group form-group-lg col-lg-6 col-md-6 col-sm-6">
											Date of Birth: <form:input path="dob" type="date" name="dob" id="register11"
												tabindex="11" class="form-control" max="1999-04-07" />
										</div>
										<div class="form-group form-group-lg col-lg-6 col-md-6 col-sm-6">
											Email: <form:input path="email" type="email" name="email" id="register12"
												tabindex="12" class="form-control"
												placeholder="Email Address" />
										</div>
										
										<div class="form-group col-lg-12 col-md-12 col-sm-12">
											<p>About Yourself:</p>
											<form:textarea path="aboutMe" name="aboutMe" id="aboutMe"  
												tabindex="13" placeholder="About me"/>
											
										</div>
										<div class="form-group">
											<div class="row">
												<div class="col-sm-6 col-sm-offset-3">
													<input type="submit" name="register-submit"
														id="register-submit" tabindex="11"
														class="form-control btn btn-register" value="Register Now">
												</div>
											</div>
										</div>
									</form:form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<c:import url="/resources/includeFiles/bottomMenuLogin.jsp" ></c:import>
<script src="<c:url value="/resources/js/loginPage.js" />"></script>
</body>
</html>


compatibility question

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@page session="true"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<link href="<c:url value="/resources/includeFiles/includeAll.html" />"
	rel="import">
<link href="<c:url value="/resources/css/compatibility.css" />"
	rel="stylesheet">
	<link rel="shortcut icon" href="<c:url value="/resources/images/favicon.ico" />" type="image/x-icon">
	


<title>Compatibility Questions</title>
</head>
<body>
	<div
		w3-include-html="<c:url value="/resources/includeFiles/topMenu.jsp" />"></div>
	

	<div class="container-fluid" id="mainContainer">
		<div class="row compRow" >
			<div class="col-sm-4 col-xs-12 vcenter imgPadding">
				<img id="random1"
				src="<c:url value="/resources/images/MaleQulo.gif" />"
				alt="Image for guy/girl" align="left">
			</div>
			<div class="col-sm-8 col-xs-12 vcenter">
					<div id='filler'>
					<h1 class="filler1">Pffft! I know forms are difficult and
						tedious, but I'm here to help you through the process.</h1>
				
					<h1 class="filler2">
						Let us help you in getting your heart get Octupied!<a><i
							class="icomoon icon-smiley">
					</h1>
					</i></a> <br />
					<p class="landingTopText">Click Next to get started!</p>
					</h1>
				</div>
				<form:form modelAttribute="compQueList"
				action="userCompatibilitySave" method="post">
				<c:forEach var="compatibilityQuestion"
					items="${compQueList.compatibilityQuestion}" varStatus="status">
					
					<div class="qset" style="display: none;" id='question${status.index+1}'>
						<h1 >
							<input type="hidden" name="compatibilityQuestion[${status.index}].questionID"
									value="${compatibilityQuestion.questionID}" />
							<input type = "hidden" name="compatibilityQuestion[${status.index}].question"
							value="${compatibilityQuestion.question}" />
							<label class="filler2" for="q${status.index}">${compatibilityQuestion.question}</label>
						</h1>
						<br />
						
						
						<div class="dropdown" id="dMenu1">
							<form:select
							path="compatibilityQuestion[${status.index}].selection"
							name="options" id="options${status.index+2}" class="form-control selectpicker">
							<form:option value="">
									Select one of the following
								</form:option>
							<c:forTokens items="${compatibilityQuestion.options}" delims="|"
								var="optionSplit">
								<form:option value="${optionSplit}">
									<c:out value="${optionSplit}" />
								</form:option>
							</c:forTokens>
						</form:select>
							<p class="errorMsg" style="display: none padding-top:10%;">Oops,
								please select a valid response!</p>
						</div>
					</div>
					
				</c:forEach>
				<div class="col-sm-6 col-xs-12 button">
					<button class="btn btn-primary1" type="button"
								id='previous' style="display: none" align="center">Previous</button>
				</div>
				<div class="col-sm-6 col-xs-12">
					<button class="btn btn-primary1 col-sm-5" type="button" id='next'>Next</button>
					<input class="btn btn-primary1 col-sm-7" type="submit"
								id='submit' style="display: none"/>
				</div>
			</form:form>
			</div>
			
			
		</div>
	</div>


	<div
		w3-include-html="<c:url value="/resources/includeFiles/bottomMenu.jsp" />"></div>
	<script src="<c:url value="/resources/js/compatibility.js" />"></script>
</body>
</html>