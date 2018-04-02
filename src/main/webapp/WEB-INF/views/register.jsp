<%@ include file="/WEB-INF/taglib.jsp" %>

<div class="container body logReg">
		<h1>Register</h1>
		<hr>
		<div class="row justify-content-center">
			<div class="col-md-6">
				<form:form action="/register" modelAttribute="registerModel" method="POST">
					<div class="form-group">
						<form:errors path="*" cssClass="error"/>
						
						<c:if test="${error != null}">
							<div class="alert alert-danger" role="alert">
								<span class="error">${error}</span>
							</div>
						</c:if>
					</div>
					<div class="form-group">
			            <form:input path="firstName" cssClass="form-control" title="User name" placeholder="Username"></form:input>
						<form:input path="email" cssClass="form-control" title="E-mail address" placeholder="Email Address"></form:input>
						<form:password path="password" cssClass="form-control" title="Password" placeholder="Password"></form:password>
			            <form:password path="passwordConfirmation" cssClass="form-control" title="Password" placeholder="Confirm password"></form:password>
						
						<div class="row">
							<div class="col-sm-6"><input type="submit" class="btn btn-success btn-block" value="Register"></div>
							<div class="col-sm-6"><a href="/login" class="btn btn-primary btn-block">Login</a></div>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>