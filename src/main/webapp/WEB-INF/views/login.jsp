<%@ include file="/WEB-INF/taglib.jsp" %>

<div class="container body logReg">
	<h1>Login in</h1>
	<hr>
	<div class="row justify-content-center">
		<div class="col-md-6">
			
			<c:if test="${param.fail}">
				<div class="alert alert-danger error" role="alert">
					Fail to authorize
				</div>
			</c:if>
		
			<form:form action="/login" modelAttribute="loginModel">
				<fieldset >
					<input name="email" type="email" class="form-control" title="E-mail address" placeholder="Email Address"/>
					
					<input name="password" type="password" class="form-control" title="Password" placeholder="Password" />
					<label><input type="checkbox" name="rememberMe"/> Remember me</label>

					<div class="row">
						<div class="col-sm-6"><input type="submit" class="btn btn-success btn-block" value="Login"></div>
						<div class="col-sm-6"><a href="/register" class="btn btn-primary btn-block">Register</a></div>
					</div>
					<a href="#" class="forget">Forgot your password?</a>
				</fieldset>
			</form:form>
		</div>
	</div>
</div>