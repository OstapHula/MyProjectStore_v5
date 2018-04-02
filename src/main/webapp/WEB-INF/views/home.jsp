<%@ include file="/WEB-INF/taglib.jsp" %>

<main role="main" class="main">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <div class="slider first-slide"></div>
        <div class="container">
          <div class="carousel-caption">
            <h1>Example headline.</h1>
            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
            <a class="btn btn-lg btn-danger" href="#" role="button" style="background-color: #D90A1A";>Sign up today</a>
          </div>
        </div>
      </div>
      <div class="carousel-item">
        <div class="slider second-slide"></div>
        <div class="container">
          <div class="carousel-caption">
            <h1>Another example headline.</h1>
            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
            <a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a>
          </div>
        </div>
      </div>
      <div class="carousel-item">
        <div class="slider third-slide"></div>
        <div class="container">
          <div class="carousel-caption">
            <h1>One more for good measure.</h1>
            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
            <a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a>
          </div>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

  <div class="container">
    <div class="brand">
      <div class="row">
        <div class="col"></div>
        <div class="col-lg-8 text-center">
          <h2>ABOUT THE BRAND</h2>
          <p>
            NAVIFORCE was officially established in 2012. It combines the two words "NAVY" and "FORCE", and it seeks to become one of the leading brands in the watch industry.
          </p><p>
            Mr. Jan is a young businessman who was born in the 1980s. His act to challenge the old traditional rules is very brave. He thinks that the younger generation needs a personalized and durable watch in the era of individualism. Elegant appearance, high quality parts for the price is ten times lower than competitors.
          </p><p>
            The phrase "for a dream" is engraved on the back of each NAVIFORCE watch. It symbolizes the original intention to build a dream brand. It is this dream that prompts every NAVIFORCE employee to do exquisite work to bring the best product to you!
          </p><p>
            NAVIFORCE leads the individual in this era, we fly freely to our dreams!
          </p>
        </div>
        <div class="col"></div>
      </div>
    </div>

    <div class="team">
      <h2>OUR TEAM</h2>
      <div class="row">
        <div class="col-lg-4 text-center">
          <img class="rounded-circle" src="${rootUrl}/resources/img/team_1.jpg" alt="Generic placeholder image" width="140" height="140">
          <h3>Mark</h3>
          <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
        </div>
        <div class="col-lg-4 text-center">
          <img class="rounded-circle" src="${rootUrl}/resources/img/team_2.jpg" alt="Generic placeholder image" width="140" height="140">
          <h3>Alex</h3>
          <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
        </div>
        <div class="col-lg-4 text-center">
          <img class="rounded-circle" src="${rootUrl}/resources/img/team_3.jpg" alt="Generic placeholder image" width="140" height="140">
          <h3>Sasha</h3>
          <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
        </div>
      </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading">Fast delivery</h2>
        <p class="lead">We are always ready to help you! Can not choose?Contact us, we will help you choose exactly what you want.</p>
      </div>
      <div class="col-md-5">
        <img class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
      </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7 order-md-2">
        <h2 class="featurette-heading">Warranty from the manufacturer</h2>
        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
      </div>
      <div class="col-md-5 order-md-1">
        <img class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
      </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading">Reliable service</h2>
        <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
      </div>
      <div class="col-md-5">
        <img class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
      </div>
    </div>
  </div>

  <hr class="featurette-divider">

  <div id="googleMap"></div>

  <a href="#" class="btn btn-light btn-block btn-lg backtt up-arrow" data-toggle="tooltip" title="TO TOP">
    <i class="fas fa-angle-double-up"></i> Back to top
  </a>
</main>

<script>
    function myMap() {
    var myCenter = new google.maps.LatLng(49.8415395, 24.0268736);
    var mapProp = {center:myCenter, zoom:15, scrollwheel:false, draggable:false, mapTypeId:google.maps.MapTypeId.ROADMAP};
    var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
    var marker = new google.maps.Marker({position:myCenter});
    marker.setMap(map);
    }
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBbx4HZXZqHotKXXxW1dXJ4cNH9Gwv0DlU&callback=myMap"></script>
  
  
  
  
  