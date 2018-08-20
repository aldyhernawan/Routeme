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
<div class="tab-grids">
                  <div >  
                    <div class="login-form">
                      <div>
                        <h2>Masukkan Titik Tiket Gangguan</h2>
                        <br>
                      </div>
                      <div>
                       <input id="pac-input" style="width: 200px; " class="controls" type="text" placeholder="Enter a location">
                      </div>
                        
                      <div id="map_wrapper">
                          <div id="map" class="mapping"></div>
                      </div>

                      <style type="text/css">
                          #map_wrapper {
                              height: 400px;
                          }

                          #map {
                              width: 100%;
                          height: 100%;
                          }
                      </style>
                      <script type="text/javascript" async defer>
                          var lastOpenedInfoWindow;
                          function initialise() {
                              // create object literal to store map properties
                              
                              
                              // create map object and apply properties
                              var map = new google.maps.Map( document.getElementById( "map" ),  {
                                  zoom: 5, 
                                  center: new google.maps.LatLng(-7.06462, 110.4123),
                                  mapTypeId: google.maps.MapTypeId.ROADMAP
                                   // apply tile (options include ROADMAP, SATELLITE, HYBRID and TERRAIN)
                              });
                              
                              var input = document.getElementById('pac-input');
                              var autocomplete = new google.maps.places.Autocomplete(input);
                              autocomplete.bindTo('bounds', map);

                              map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

                              autocomplete.addListener('place_changed', function() {
                              
                              var place = autocomplete.getPlace();
                              if (!place.geometry) {
                                return;
                              }

                              if (place.geometry.viewport) {
                                map.fitBounds(place.geometry.viewport);
                              } else {
                                map.setCenter(place.geometry.location);
                                map.setZoom(20);
                              }


                              // Set the position of the marker using the place ID and location.
                              
                            });

                              // create map bounds object
                              var bounds = new google.maps.LatLngBounds();

                              var id_titik = <?php
                              include('koneksi.php');
                              $d = mysql_query( "SELECT id_titik FROM table_titik" ) or die( mysql_error() );
                              $titik = array();
                              while( $r = mysql_fetch_assoc($d) ) {
                               $idtitik[] = $r['id_titik'];
                              }
                              echo json_encode( $idtitik );
                              ?>;

                              var nama_titik = <?php
                              include('koneksi.php');
                              $d = mysql_query( "SELECT nama_titik FROM table_titik" ) or die( mysql_error() );
                              $titik = array();
                              while( $r = mysql_fetch_assoc($d) ) {
                               $titik[] = $r['nama_titik'];
                              }
                              echo json_encode( $titik );
                              ?>;

                              var lat = <?php
                              include('koneksi.php');
                              $d = mysql_query( "SELECT lat FROM table_titik" ) or die( mysql_error() );
                              $titik = array();
                              while( $r = mysql_fetch_assoc($d) ) {
                               $lat[] = $r['lat'];
                              }
                              echo json_encode( $lat );
                              ?>;

                              var lon = <?php
                              include('koneksi.php');
                              $d = mysql_query( "SELECT lon FROM table_titik" ) or die( mysql_error() );
                              $lon = array();
                              while( $r = mysql_fetch_assoc($d) ) {
                               $lon[] = $r['lon'];
                              }
                              echo json_encode( $lon );
                              ?>;
                              var locations = [];
                              for (var i = 0; i < id_titik.length; i++) {
                                  locations.push([ nama_titik[i], lat[i], lon[i], id_titik[i]  ])
                              }

                              // var locations = [
                              //     [ 'titik 1', '-7.0732534','110.4111171'], 
                              //     [ 'titik 2','-7.0737645','110.4130483' ], 

                              // ];

                              // loop through locations and add to map
                              for ( var i = 0; i < locations.length; i++ )
                              {
                                  // get current location
                                  var location = locations[ i ];
                                  
                                  // create map position
                                  var position = new google.maps.LatLng( location[ 1 ], location[ 2 ] );
                                  
                                  // add position to bounds
                                  bounds.extend( position );
                                  
                               
                                  // create marker (https://developers.google.com/maps/documentation/javascript/reference#MarkerOptions)
                                  var marker = new google.maps.Marker({

                                      map: map
                                      , position: position
                                      , id_t :location[3]
                                      , title: location[ 0 ]
                                   
                                  });
                                  
                                  // create info window and add to marker (https://developers.google.com/maps/documentation/javascript/reference#InfoWindowOptions)
                                  
                                  google.maps.event.addListener( marker, 'click', ( function( marker, i ) {

                                          return function() {

                                              var infowindow = new google.maps.InfoWindow();
                                              closeLastOpenedInfoWindow();
                                              infowindow.setContent('<button id="btn2" name="btn2" class="buttonred" onclick="myFunctiontujuan('+ locations[ i ][ 3 ]+'); closeLastOpenedInfoWindow();">A '+ locations[ i ][ 0 ]+' ?</button>'+'<button id="btn3" name="btn3" class="button" onclick="myFunctiontujuan2('+ locations[ i ][ 3 ]+'); closeLastOpenedInfoWindow();">B '+ locations[ i ][ 0 ]+' ?</button>'+'<button id="btn4" name="btn4" class="buttonblue" onclick="myFunctiontujuan3('+ locations[ i ][ 3 ]+'); closeLastOpenedInfoWindow(); ">C '+ locations[ i ][ 0 ]+' ?</button>' );
                                              infowindow.open( map, marker );
                                              lastOpenedInfoWindow = infowindow;


                                          }

                                      }

                                  )( marker, i ) );
                                  

                              };

                              // Create the search box and link it to the UI element.
                              
                              // fit map to bounds
                              map.fitBounds( bounds );
                              

                          }
                          function closeLastOpenedInfoWindow() {
                              if (lastOpenedInfoWindow) {
                                  lastOpenedInfoWindow.close();
                              }
                          }
                          // load map after page has finished loading
                          function loadScript() {

                              var script = document.createElement( "script" );
                              script.type = "text/javascript";
                              script.src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyBQyCUJ93pD6_SL-1WVkZxuDqiqu4_8bHI&sensor=false&libraries=places&callback=initialise"; // initialize method called using callback parameter
                              
                              document.body.appendChild( script );
                              
                          }
                          window.onload = loadScript;     
                          </script>
                          <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
                          <script src="google-map.js" ></script>
                          <!-- <script>
                          function myFunctionstart(a) {
                            // alert('Titik Awal pada Titik ' + a);
                            return document.getElementById("start").value = a;

                          }
                          </script> -->

                          <script>
                          function myFunctiontujuan(b) {
                            // alert('Titik Tiket pada Titik ' + b);
                            document.getElementById("btn2").style.display = "none";
                            return document.getElementById("tujuan").value = b;


                          }
                          </script>
                          <script>
                          function myFunctiontujuan2(c) {
                            // alert('Titik Tiket pada Titik ' + b);
                            document.getElementById("btn3").style.display = "none";
                            return document.getElementById("tujuan2").value = c;
                          }
                          </script>
                          <script>
                          function myFunctiontujuan3(d) {
                            // alert('Titik Tiket pada Titik ' + b);
                            document.getElementById("btn4").style.display = "none";
                            return document.getElementById("tujuan3").value = d;
                          }
                          </script>
                          <hr>
                          <div class="well">
                          <form action="ruteawal.php" method="get" id="signup">
                          <ol>              
                            <li>
                              <h3>Titik Awal (0)</h3>
                            </li>
                            <li>
                                <input type="text" id="start" name="start" placeholder="Starting Point" readonly="true" value="233" style="display: none"> 
                            </li>
                            <li>
                                <input type="text" id="a" name="a" placeholder="Starting Point" readonly="true" value="STO Banyumanik" > 
                            </li>
                            <li>
                              <h3 >Titik Tiket (A)</h3>
                            </li>
                            <li>
                                <input type="text" id="tujuan" name="tujuan" placeholder="End Point" readonly="true" > 
                            </li>
                            <li>
                              <h3 >Titik Tiket (B)</h3>
                            </li>
                            <li>
                                <input type="text" id="tujuan2" name="tujuan2" placeholder="End Point" 
                                readonly="true"> 
                            </li>
                            <li>
                              <h3 >Titik Tiket (C)</h3>
                            </li>
                            <li>
                                <input type="text" id="tujuan3" name="tujuan3" placeholder="End Point" 
                                readonly="true"> 
                            </li>
                            <li>
                              <input type="submit" class="btn" value="Cari Rute" />
                            </li>
                          </ol>
                        </form>
                        </div>
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
                                <input type="text" id="startbaru" name="startbaru" value= <?php echo $jartot[0]['id_titik']; ?>
                                readonly="true" style="display: none"> 
                            </li>
                            <li>
                                <input type="text" id="tujuanbaru" name="tujuanbaru" value= <?php echo $jartot[1]['id_titik']; ?> readonly="true" style="display: none"> 
                            </li>
                            <li>
                                <input type="text" id="tujuan2baru" name="tujuan2baru" value= <?php echo $jartot[2]['id_titik']; ?>
                                readonly="true" style="display: none"> 
                            </li>
                            
                          </ol>
                        </form>
                    </div>
                  </div>
                </div>