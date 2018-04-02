<%@ include file="/WEB-INF/taglib.jsp" %>

<header>
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
    <a class="navbar-brand logo" href="/">
      <img src="${rootUrl}/resources/img/favicon.ico">
      N<div class="logo-a">V</div>VIFORCE
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav mr-auto ">
        <li class="nav-item active"><a class="nav-link" href="${rootUrl}/">home</a></li>
        <li class="nav-item"><a class="nav-link" href="#catalog">catalog</a></li>
        <li class="nav-item"><a class="nav-link" href="#SandP">shipping</a></li>
        <li class="nav-item"><a class="nav-link" href="#contact">contact</a></li>
      </ul>
      <ul class="navbar-nav align-items-center right-navbar">
      
      	<sec:authorize access="!isAuthenticated()">
		  <li class="nav-item">
             <a class="nav-link btn btn-outline-secondary btn-sm" href="${rootUrl}/login" role="button">
               <i class="fas fa-user"></i>Login or Register
             </a>
           </li>
           <li class="nav-item">
             <a class="nav-link btn btn-outline-secondary btn-sm" href="${rootUrl}/cart" role="button">
               <i class="fas fa-shopping-cart"></i>Cart
             </a>
           </li>
		</sec:authorize>
		
		<sec:authorize access="isAuthenticated()">
     		<sec:authentication property="principal.username" var="username"/>
	     			<li><a href="/user">${username}</a></li>
			<c:url var="logoutUrl" value="/logout" />
			<form:form action="${logoutUrl}" method="post">
				<li>
					<button type="submit" class="nav-link btn btn-outline-danger btn-sm text-uppercase" value="logout">
						<i class="fas fa-sign-out-alt"></i> Logout
					</button>
				</li>
			</form:form>
			<li class="nav-item">
              <a class="nav-link btn btn-outline-secondary btn-sm" href="${rootUrl}/views/cart.jsp" role="button">
                <i class="fas fa-shopping-cart"></i>Cart
              </a>
            </li>
		</sec:authorize>
        
      </ul>
    </div>
  </nav>
</header>




