<%@ include file="/WEB-INF/taglib.jsp" %>

<div class="container body userList">
   <div class="row">
   
     <%@ include file="/WEB-INF/fragments/_leftnav.jsp" %>
     
     <div class="col-lg-9">			
		<h2>List Users</h2>
		<hr>
		<div style="overflow-x: auto">
			<table class="table table-sm table-bordered ">
			  <thead class="thead-light">
			    <tr>
			      	<th>Id</th>
			      	<th>Image</th>
					<th>FullName</th>
					<th>Email</th>
					<th>Address</th>
					<th>Telephone</th>
					<th>Birthday</th>
					<th>CreatedAt</th>
					<!-- <th>shops</th> -->
					<!-- <th>Delete</th> -->
			    </tr>
			  </thead>
			  <tbody>
			  	<c:forEach items="${userListModel}" var="user">
				    <tr>
				      <td scope="row">${user.id}</td>
				      <td>
				      	<c:if test="${user.isActivated.equals('0')}"><div class="is-activated-false"></div></c:if>
				      	<c:if test="${user.isActivated == '1'}"><div class="is-activated-true"></div></c:if>
				      	<img src="data:image/png; base64, ${user.imagePath}" alt="image profile"/ class="profile-img">
						${user.role.role}
				      </td>
					  <td>${user.firstName} ${user.lastName}</td>
					  <td>${user.email}</td>
					  <td>${user.address}</td>
					  <td>${user.telephone}</td>
					  <td>${user.birthday}</td>
					  <td>${user.createdAt}</td>
					  <%-- <td>${user.shops}</td> --%>
					  <%-- <td>
					  	<form:form modelAttribute="DeleteModel" method="POST" action="/user/users">
					  		<button type="submit" class="btn btn-danger">
					  			<i class="fas fa-trash-alt"></i> Delete
					  		</button>
					  	</form:form>
					  </td> --%>
				    </tr>
				</c:forEach>
			  </tbody>
			</table>
		</div>
	</div>
  </div>
</div>