<%@ include file="/WEB-INF/taglib.jsp" %>

<div class="container body product">
	<div class="row">
		<div class="col-md-7 product-img">
			<img src="data:image/png; base64, ${productModel.imagePath}" alt="image profile"/>
		</div>
		<div class="col-md-5">
			<h1>${productModel.name}</h1>
			<hr>
			<div class="row justify-content-between">
				<div class="col-11"><p style="max-hight: 200px">${productModel.description}</p></div>
				<div class="col-1"><a href="#"><i class="fas fa-heart heart"></i></a></div>
			</div>
			<h3 class="price">${productModel.price} <i class="fas fa-dollar-sign"></i></h3>
			<div class="row buy-btn">
				<button type="button" class="btn btn-success ">Add to cart <i class="fas fa-shopping-cart"></i></button>
				<button type="button" class="btn btn-secondary ">Buy now <i class="fas fa-shopping-basket"></i></button>
			</div>
		    <a data-toggle="collapse" href="#collapseExample">
		      <u>Product details</u> <i class="fas fa-sort-down"></i>
		    </a>
			<div class="collapse" id="collapseExample">
			  <div class="card card-body">
			    <ul>
					<li>Style: ${productModel.parameters.style}</li>
					<li>MaterialStrap: ${productModel.parameters.materialStrap}</li>
					<li>MaterialBody: ${productModel.parameters.materialBody}</li>
					<li>FaseType: ${productModel.parameters.faseType}</li> 
					<li>FaseColor: ${productModel.parameters.faseColor}</li> 
					<li>Weight: ${productModel.parameters.weight}</li> 
					<li>Waterproof: ${productModel.parameters.waterproof}</li> 
					<li>Glass: ${productModel.parameters.glass}</li> 
					<li>WidthStrap: ${productModel.parameters.widthStrap}</li> 
					<li>DiametrBody: ${productModel.parameters.diametrBody}</li> 
					<li>ThicknessBody: ${productModel.parameters.thicknessBody}</li> 
				</ul>
			  </div>
			</div>
		</div>
	</div>
</div>