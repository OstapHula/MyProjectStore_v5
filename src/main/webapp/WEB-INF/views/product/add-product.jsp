<%@ include file="/WEB-INF/taglib.jsp" %>

<div class="container body add-product">
    <div class="row">

	<%@ include file="/WEB-INF/fragments/_leftnav.jsp" %>

      <div class="col-lg-9">
      	<h2>Create new product</h2>
      	<hr>
      	<form:form 
	      		action="/product/add-product" 
	      		modelAttribute="productModel"  
	      		method="POST" 
	      		enctype="multipart/form-data">
			<div class="form-group">
				<form:errors path="*" cssClass="error"/>
				
				<c:if test="${error != null}">
					<span class="error">${error}</span>
				</c:if>
			</div>
			<div class="form-group">
			
              <div class="form-group row">
	          	 <label class="col-sm-3 control-label"><span style="color:red;">* </span> Title: </label>
		         <div class="col-sm-9">
		           <form:input path="name" cssClass="form-control" title="name" placeholder="Name"/>
		         </div>
		      </div>
		      
		      <div class="form-group row">
		        <label class="col-sm-3 control-label"><span style="color:red;">* </span> Price: </label>
		        <div class="col-sm-9">
		          <form:input path="price" cssClass="form-control" title="price" placeholder="$000.00"/>
		      	</div>
		      </div>
		        
		      <div class="form-group row">
		         <label class="col-sm-3 control-label"><span style="color:red;">* </span> Description: </label>
		         <div class="col-sm-9">
		           <form:textarea path="description" cssClass="form-control" title="description" placeholder="Description"/>
		         </div>
		      </div>
		      
		      <div class="form-group row">
		         <label class="col-sm-3 control-label">Watch style: </label>
		         <div class="col-sm-9 justify-content-around">
					<form:radiobuttons path="style" items="${styleModel}"/>
		         </div>
		      </div>
		      
		      <div class="form-group row">
		         <label class="col-sm-3 control-label">Strap material: </label>
		         <div class="col-sm-9">
		           	<form:select path="materialStrap">
						<form:options items="${materialStrapModel}"/>
					</form:select>
		         </div>
		      </div>
		      
		      <div class="form-group row">
		         <label class="col-sm-3 control-label">Body material: </label>
		         <div class="col-sm-9">
		           	<form:select path="materialBody">
						<form:options items="${materialBodyModel}"/>
					</form:select>
		         </div>
		      </div>
		      
		      <div class="form-group row">
		         <label class="col-sm-3 control-label">Fase type: </label>
		         <div class="col-sm-9">
		           	<form:select path="faseType">
						<form:options items="${faseTypeModel}"/>
					</form:select>
		         </div>
		      </div>
		      
		      <div class="form-group row">
		         <label class="col-sm-3 control-label">Fase color: </label>
		         <div class="col-sm-9">
		           	<form:select path="faseColor">
						<form:options items="${faseColorModel}"/>
					</form:select>
		         </div>
		      </div>
		      
		      <div class="form-group row">
		        <label class="col-sm-3 control-label">Weight: </label>
		        <div class="col-sm-9">
		          <form:input path="weight" cssClass="form-control" title="weight" placeholder="000g"/>
		      	</div>
		      </div>
		      
		      <div class="form-group row">
		        <label class="col-sm-3 control-label">Waterproof: </label>
		        <div class="col-sm-9">
		          <form:input path="waterproof" cssClass="form-control" title="waterproof" placeholder="00m"/>
		      	</div>
		      </div>
		      
		      <div class="form-group row">
		        <label class="col-sm-3 control-label">Glass material: </label>
		        <div class="col-sm-9">
		          <form:input path="glass" cssClass="form-control" title="glass" placeholder="glass"/>
		      	</div>
		      </div>
		      
		      <div class="form-group row">
		        <label class="col-sm-3 control-label">Width strap: </label>
		        <div class="col-sm-9">
		          <form:input path="widthStrap" cssClass="form-control" title="widthStrap" placeholder="000mm"/>
		      	</div>
		      </div>
		      
		      <div class="form-group row">
		        <label class="col-sm-3 control-label">Diametr body: </label>
		        <div class="col-sm-9">
		          <form:input path="diametrBody" cssClass="form-control" title="diametrBody" placeholder="00mm"/>
		      	</div>
		      </div>
		      
		      <div class="form-group row">
		        <label class="col-sm-3 control-label">Thickness body: </label>
		        <div class="col-sm-9">
		          <form:input path="thicknessBody" cssClass="form-control" title="thicknessBody" placeholder="00mm"/>
		      	</div>
		      </div>
		      
		      <div class="form-group row">
		         <label class="col-sm-3 control-label">Upload image: </label>
		         <div class="col-sm-9">
		           <form:input path="productImage" type="file"/>
		         </div>
		      </div> 
		      
			  <div class="row">
				 <div class="col-sm-9 offset-3">
				 	<input type="submit" class="btn btn-success btn-block" value="Create product">
				 </div>
			  </div>
			</div>
		</form:form>
     </div>
   </div>
 </div>
