<%@ include file="/WEB-INF/taglib.jsp" %>

<div class="col-lg-3 left-naw">
  <ul class="nav flex-column nav-pills btn-group" id="v-pills-tab" role="tablist" aria-orientation="vertical">
    <li class="nav-item">
      <a href="/user" role="button" class="btn btn-block active nav-link">
        <i class="fas fa-user"></i> Profile
      </a>
    </li>
    <li class="nav-item">
      <a href="/user/edit" role="button" class="btn btn-block nav-link">
        <i class="fas fa-edit"></i> Edit
      </a>
    </li>
    <li class="nav-item">
      <a href="/user/favorite" role="button" class="btn btn-block nav-link">
        <i class="fas fa-heart"></i> Favorite
      </a>
    </li>
    <li class="nav-item">
      <a href="/user/cart" role="button" class="btn btn-block nav-link">
        <i class="fas fa-shopping-cart"></i> Cart
      </a>
    </li>
    <li class="nav-item">
      <a href="/user/history" role="button" class="btn btn-block nav-link">
        <i class="fas fa-history"></i> Shopping history
      </a>
    </li>
    <c:url var="logoutUrl" value="/logout" />
    <form:form action="${logoutUrl}" method="post">
	<li>
	<button type="submit" class="btn btn-block nav-link" value="logout">
		<i class="fas fa-sign-out-alt"></i> Logout
	</button>
	</li>
 	</form:form>

     <!-- admin -->
    <sec:authorize url="/admin">
		 <hr>
	     <li>
	       <a href="/product/add-product" class="btn btn-block nav-link"><i class="fas fa-plus"></i> New product</a>
	     </li>
	     <li>
	       <a href="/user/orders" class="btn btn-block nav-link"><i class="fas fa-clipboard-list"></i> Orders</a>
	     </li>
	     <li>
	       <a href="/user/users" class="btn btn-block nav-link"><i class="fas fa-users"></i> Users</a>
	     </li>			
 	</sec:authorize>
  </ul>
</div>