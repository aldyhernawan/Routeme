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
        height: 29px;
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
          background-color: #4CAF50;
          color: white;
          padding: 14px 20px;
          margin: 8px 0;
          border: none;
          border-radius: 4px;
          cursor: pointer;
      }

      input[type=submit]:hover {
          background-color: #45a049;
      }
  </style>

<?php include 'djikstra.php'; ?>

<div class="tab-grids">
                  <div id="tab1" class="tab-grid">  
                    <div class="login-form">
                      <div>
                        <h2>RUTE PERJALANAN</h2>
                        <br>
                        
                      </div>
                      <div>
                       <input id="pac-input" class="controls" type="text" placeholder="Enter a location">
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
                          function initialise() {

                              

                              // create object literal to store map properties
                              var myOptions = {
                                  zoom: 15// set zoom level
                                  , mapTypeId: google.maps.MapTypeId.ROADMAP,
                                   // apply tile (options include ROADMAP, SATELLITE, HYBRID and TERRAIN)
                              };
                              
                              // create map object and apply properties
                              var map = new google.maps.Map( document.getElementById( "map" ), myOptions );
                              
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
                              // create array containing locations
                              var locations = [];
                              for (var i = 0; i < id_titik.length; i++) {
                                  locations.push([ nama_titik[i], lat[i], lon[i], id_titik[i]  ])
                              }

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

                                      animation: google.maps.Animation.DROP
                                      , map: map
                                      , position: position
                                      , id_t :location[3]
                                      , title: location[ 0 ]
                                   
                                  });
                                  
                                  // create info window and add to marker (https://developers.google.com/maps/documentation/javascript/reference#InfoWindowOptions)
                                  google.maps.event.addListener( marker, 'click', ( 
                                      function( marker, i ) {

                                          return function() {

                                              var infowindow = new google.maps.InfoWindow();
                                              infowindow.setContent('<button id="btn1" name="btn1" class="button" onclick="myFunctionstart('+ locations[ i ][ 3 ]+')">A '+ locations[ i ][ 0 ]+' ?</button>'+'<br>'+'<button id="btn2" name="btn2" class="buttonred" onclick="myFunctiontujuan('+ locations[ i ][ 3 ]+')">B '+ locations[ i ][ 0 ]+' ?</button>' );
                                              infowindow.open( map, marker );

                                          }
                                      }
                                  )( marker, i ) );
                              };
                              // Create the search box and link it to the UI element.
                              
                              // fit map to bounds
                              map.fitBounds( bounds );

                              

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
                          <script src="google-map.js" ></script>
                          <script>
                          function myFunctionstart(a) {
                            document.getElementById('tujuan').style.visibility = 'visible';
                            alert('Titik Awal pada Titik ' + a);
                            return document.getElementById("start").value = a;

                          }
                          </script>

                          <script>
                          function myFunctiontujuan(b) {
                            alert('Titik Tiket pada Titik ' + b);
                            return document.getElementById("tujuan").value = b;
                          }
                          </script>
                    </div>
                  </div>
                </div>