<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<!-- html -->
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
       
</head>
<!-- //head -->
<!-- body -->
<body >
<!--header-->
<header>
	<div class="container">
		<!--logo-->
			<div class="logo">
				<h1><a href="index.php">ROUTE ME</a></h1>
			</div>
      <div class="w3layouts-login">
        <a data-toggle="modal" data-target="#myModal" href="#"> <h5 class="glyphicon glyphicon-info-sign"> </h5></a>
      </div>
      <!--Login modal-->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" 
            aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            &times;</button>
                        <h4 class="modal-title" id="myModalLabel">
                            ABOUT ROUTE ME</h4>
                    </div>
                    <div class="modal-body">
                       <div class="well">
                        <h5>
                          Aplikasi ini dirancang guna mengoptimalkan rute perjalanan teknisi dari STO Banyumanik ke lokasi area tiket gangguan layanan Indihome
                        </h5>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    <!--//Login modal-->  
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
                <?php
                error_reporting(0);
                $content=$_GET['content'];
                if($content=='')
                {
                  include('cari.php');
                  
                }
                else
                {
                  include($content.'.php');
                }
                ?>
                
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
	<!-- //Categories -->


   
<!--footer-->
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
<!--//footer-->
    
<!-- for bootstrap working -->
		<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working --><!-- Responsive-slider -->
    <!-- Banner-slider -->

    <!-- //Banner-slider -->
<!-- //Responsive-slider -->   
<!-- Bootstrap select option script -->
<script src="js/bootstrap-select.js"></script>

<!-- //Bootstrap select option script -->
    
<!-- easy-responsive-tabs -->    

			<!-- start-smoth-scrolling -->
		<!-- //here ends scrolling icon -->
</body>
<!-- //body -->
</html>
<!-- //html -->