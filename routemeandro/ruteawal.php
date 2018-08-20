
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

<style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      .controls {
        background-color: #fff;
        border-radius: 2px;
        border: 1px solid transparent;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
        box-sizing: border-box;
        font-family: Roboto;
        font-size: 15px;
        font-weight: 300;
        height: 30px;
        margin-left: 17px;
        margin-top: 10px;
        outline: none;
        padding: 0 11px 0 13px;
        text-overflow: ellipsis;
        width: 400px;
      }

      .controls:focus {
        border-color: #4d90fe;
      }
      .title {
        font-weight: bold;
      }
      #infowindow-content {
        display: none;
      }
      #map #infowindow-content {
        display: inline;
      }
      .button {
        background-color: #4CAF50; /* Green */
        border: none;
        color: white;
        padding: 5px 5px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 10px;
      }
      .buttonred {
        background-color: #f44336; /* red */
        border: none;
        color: white;
        padding: 5px 5px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 10px;
      }
      .buttonblue {
        background-color: #4169e1; /* blue*/
        border: none;
        color: white;
        padding: 5px 5px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 10px;
      }
      .buttonputih {
        background-color: #fff; /* blue*/
        border: none;
        color: white;
        padding: 5px 5px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 10px;
      }
      input[type=text], select {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
      }

      input[type=submit] {
          width: 100%;
          background-color: #42ebf4;
          color: white;
          padding: 14px 20px;
          margin: 8px 0;
          border: none;
          border-radius: 4px;
          cursor: pointer;
      }

     
      .gm-style-mtc {
        display: none;
      }

    </style>       
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
                <div class="tab-grids">
                <div >  
                  <div class="login-form">
                    
                        <?php 
                        if(isset($_GET['start'])){
                          if($_GET['start'] != '' && $_GET['tujuan'] != ''){
                        ?>
                        <?php include 'djikstra.php'; ?>
                        <?php 
                          }
                        } 
                        ?>

                        <form action="nextrute.php" method="get" id="signup">
                          <ol>              
                            <li>
                                <input type="text" id="namastartbaru" name="namastartbaru" value= <?php echo $jartot[0]['titik']; ?> readonly="true" style="display: none"> 
                            </li>
                            <li>
                                <input type="text" id="startbaru" name="startbaru" value= <?php echo $jartot[0]['id_titik']; ?>
                                readonly="true" style="display: none"> 
                            </li>
                            <li>
                                <input type="text" id="namatujuanbaru" name="namatujuanbaru" value= <?php echo $jartot[1]['titik']; ?> readonly="true" style="display: none"> 
                            </li>
                            <li>
                                <input type="text" id="tujuanbaru" name="tujuanbaru" value= <?php echo $jartot[1]['id_titik']; ?> readonly="true" style="display: none"> 
                            </li>
                            <li>
                                <input type="text" id="namatujuan2baru" name="namatujuan2baru" value= <?php echo $jartot[2]['titik']; ?> readonly="true" style="display: none"> 
                            </li>
                            <li>
                                <input type="text" id="tujuan2baru" name="tujuan2baru" value= <?php echo $jartot[2]['id_titik']; ?>
                                readonly="true" style="display: none"> 
                            </li>
                            <li>
                              <input type="submit" class="btn" value="Next Rute" />
                            </li>
                          </ol>
                        </form>

                </div>
              </div>
              </div>
                
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
