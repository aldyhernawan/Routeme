<html>
<!-- head -->
<head>
<title>ROUTE ME MOBILE</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" /><!-- bootstrap-CSS -->
<link rel="stylesheet" href="css/bootstrap-select.css"><!-- bootstrap-select-CSS -->
<link href="css/font-awesome.css" rel="stylesheet" type="text/css" media="all" /><!-- Fontawesome-CSS -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script type='text/javascript' src='js/jquery-2.2.3.min.js'></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />  
<!--//theme-style-->
<!--meta data-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Online Recharge Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--//meta data-->
<!-- online fonts -->
<link href="//fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext,vietnamese" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Oxygen:300,400,700&amp;subset=latin-ext" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<!-- /online fonts -->
<script type="text/javascript">
    jQuery(document).ready(function($) {
      $(".scroll").click(function(event){   
        event.preventDefault();
        $('html,body').animate({scrollTop:$(this.hash).offset().top},900);
      });
    });
  </script>
  <!-- swipe box js -->
  <script src="js/jquery.swipebox.min.js"></script> 
  <script type="text/javascript">
    jQuery(function($) {
      $(".swipebox").swipebox();
    });
  </script>
  <script type="text/javascript" 
   src="http://maps.google.com/maps/api/js?sensor=false&key=AIzaSyDvnP6-IQADuP461VqlXqYjdm6sWlkhVWs">
     
  </script>
  <style>
    html, body {
      height: 100%;
      margin: 0;
      padding: 0;
    }
    #map {
      height: 70%;
      width: 100%;
    }
  </style>
</head>
<!-- //head -->
<!-- body -->
<body>
<!--header-->
<header>
  <div class="container">
    <!--logo-->
      <div class="logo">
        <h1><a href="index.php">ROUTE ME</a></h1>
      </div>

    </div>
</header>

<!--//--> 
  <div class=" header-right">
    <div class="banner">
      <div class="slider" style="margin-top: 20px">
          <div class="callbacks_container">

        </div>
      </div>
    </div>
  </div>
   

    <!--Vertical Tab-->
  <div class="categories-section main-grid-border" id="mobilew3layouts">
    <div class="container">
      <div class="category-list">
        <div id="parentVerticalTab">
          <div class="agileits-tab_nav">
          
          </div>
          <div class="resp-tabs-container hor_1">
            <div>
              <div class="tabs-box">             
                <div class="clearfix"> </div>
                <!--isi content-->
                
                <center> 
    <h3 style="color:black" class="tittle">Jalur Map Djikstra</h3>
    <hr>
  </center>
  <div id="map"></div>
  <script>
    var geocoder;
    var map;
    var directionsDisplay;
    var directionsService = new google.maps.DirectionsService();
    var locations = [
      <?php $jalur = $_GET['jalur']; 
      $wordChunks = explode(",", $jalur);
      for($i = 0; $i < count($wordChunks); $i++){
        $a = $wordChunks[$i];
        $a = $a+1;
      ?>
        <?php 
        include "koneksi.php";
        $sql = "SELECT * FROM table_titik where id_titik='$a'"; 
        $result = mysqli_query($conn, $sql);
        while($row = mysqli_fetch_assoc($result)) {
          $id = $row["id_titik"];
          $nama = $row["nama_titik"];
          $lat = $row["lat"];
          $long = $row["lon"];
          $deskripsi = $row["keterangan"];
        ?>
        ['<?php echo $nama; ?>', '<?php echo $lat; ?>', '<?php echo $long; ?>', '<?php echo $id; ?>'],
        <?php 
        } 
        ?>
      <?php 
      } 
      ?>
    ];
    function initialize() {
      directionsDisplay = new google.maps.DirectionsRenderer();
      var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 15,
        center: new google.maps.LatLng(-7.0662731,110.4119103),
        mapTypeId: google.maps.MapTypeId.ROADMAP
      });
      directionsDisplay.setMap(map);
      var infowindow = new google.maps.InfoWindow();
      var marker, i;
      var request = {
        travelMode: google.maps.TravelMode.WALKING
      };
      for (i = 0; i < locations.length; i++) {
        marker = new google.maps.Marker({
          position: new google.maps.LatLng(locations[i][1], locations[i][2]),
          map: map
        });
        google.maps.event.addListener(marker, 'click', (function(marker, i) {
          return function() {
            infowindow.setContent(locations[i][0]);
            infowindow.open(map, marker);
          }
        })(marker, i));
        if (i == 0) request.origin = marker.getPosition();
        else if (i == locations.length - 1) request.destination = marker.getPosition();
        else {
          if (!request.waypoints) request.waypoints = [];
          request.waypoints.push({
            location: marker.getPosition(),
            stopover: true
          });
        }
      }
      directionsService.route(request, function(result, status) {
        if (status == google.maps.DirectionsStatus.OK) {
          directionsDisplay.setDirections(result);
        }
      });
    }
    google.maps.event.addDomListener(window, "load", initialize);
  </script>
                <!--isi content-->
                <div class="clearfix"> </div>
              </div>

              <script>
                $(document).ready(function() {
                  $("#tab2").hide();
                  $("#tab3").hide();
                  $("#tab4").hide();
                  $(".tabs-menu a").click(function(event){
                    event.preventDefault();
                    var tab=$(this).attr("href");
                    $(".tab-grid").not(tab).css("display","none");
                    $(tab).fadeIn("slow");
                  });
                });
              </script>
            </div>
          </div>
          <div class="clearfix"></div>
        </div>
      </div>
    </div>
  </div>
  <!--Plug-in Initialisation-->
  <script type="text/javascript">
    $(document).ready(function() {

        //Vertical Tab
        $('#parentVerticalTab').easyResponsiveTabs({
            type: 'vertical', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true, // 100% fit in a container
            closed: 'accordion', // Start closed if in accordion view
            tabidentify: 'hor_1', // The tab groups identifier
            activate: function(event) { // Callback function if tab is switched
                var $tab = $(this);
                var $info = $('#nested-tabInfo2');
                var $name = $('span', $info);
                $name.text($tab.text());
                $info.show();
            }
        });
    });
</script>

<footer>
  <div class="container-fluid">
    
  <div class="w3l-footer-bottom">
    <div class="container-fluid">
      
      <div class="col-md-8 agileits-footer-class">
        <p >© 2018 Aldy Hernawan. All Rights Reserved | Design by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
      </div>
    <div class="clearfix"> </div>
    </div>
  </div>
</footer>
<script src="js/bootstrap.js"></script>
<script src="js/bootstrap-select.js"></script>
</body>
</html>