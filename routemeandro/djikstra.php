<style type="text/css">
  .wella {
    background: blue;
    padding-top: 10px;
}
</style>

<?php
//baca database
include 'koneksi.php';
//ambil semua data lokasi
$wis = "SELECT * FROM table_titik"; 
$resultwis = mysqli_query($conn, $wis);
$xw=1;
while($rowwis = mysqli_fetch_assoc($resultwis)) {
  $idw = $rowwis['id_titik'];
  //baca data relasi lokasi
  $sql = "SELECT * FROM route where id_titik_a='$idw'"; 
  $result = mysqli_query($conn, $sql);
  $names[$xw] = array();
  //$x='0';
  while ($row = mysqli_fetch_array($result)) { 
    $a1 = $row['id_titik_b'];
    $a1 = $a1 - 1;
    $names[$xw][$a1] = $row['jarak'];
  }   
  $xw++;
}

$jml = count($names);
$graph = [];
for ($i = 1; $i < $jml + 1; $i++){
   array_push($graph,$names[$i]);
}


// print_r($graph);
//$graph = array($names[1],$names[2],$names[3],$names[4],$names[5]);

function dijkstra($graph, $start, $goal, $data) {
  $distance = array($start => 0);
  $visit = array($start);
  $predecessor = array();
  foreach( $graph as $node => $edge ) {
    $distance[$node] = pow(10, 10);
    $predecessor[$node] = $start;
  }
  foreach( $graph[$start] as $next => $cost ) {
    $distance[$next] = $cost;
  }
  while( !in_array($goal, $visit) ) {
    $current = null;
    foreach( array_diff(array_keys($graph), $visit) as $unvisited ) {
      if(!$current || $distance[$current] > $distance[$unvisited])
        $current = $unvisited;
    }
    $visit[] = $current;
    foreach( $graph[$current] as $next => $cost ) {
      if( $distance[$current] + $cost < $distance[$next] ) {
        $distance[$next] = $distance[$current] + $cost;
        $predecessor[$next] = $current;
      }
    }
  }
  $route = array($goal);
  while( !($start == $route[count($route) - 1]) ) {
    $route[] = $predecessor[$route[count($route) - 1]];
  }
  $routeasli = array();
  foreach($route as $key => $value) {
    $routeasli[$key] = $value + 1;
  }

  echo'<center>';
  echo '<div class="well" style="display:block;">';
  echo'<h3>Route STO ke TIket A<hr></h3>';
  echo implode(' -> ', array_reverse($routeasli)) . "<br>";
  $data =$distance[$goal];
  
  if($data > 1000000){
    $data=0;
  }else{
  
  echo 'Jarak Tiket A : ' . $data;
  echo ' m<br/><hr/>';
  
  if($data == 0) {echo '<h1 style="color:red"> Maaf Jalur Belum Berelasi</h1>';}else{
    echo "<a class='btn btn-danger btn-block' href='multi.php?jalur=";   
    echo implode(',', array_reverse($route)) . "\n";
    echo "' >Lihat Jalur pada Map</a>";
  }
  echo '</div>';
  echo'</center>';
  return $data;

  }
  
  }

function dijkstra2($graph, $start, $goal, $data) {
  $distance = array($start => 0);
  $visit = array($start);
  $predecessor = array();
  foreach( $graph as $node => $edge ) {
    $distance[$node] = pow(10, 10);
    $predecessor[$node] = $start;
  }
  foreach( $graph[$start] as $next => $cost ) {
    $distance[$next] = $cost;
  }
  while( !in_array($goal, $visit) ) {
    $current = null;
    foreach( array_diff(array_keys($graph), $visit) as $unvisited ) {
      if(!$current || $distance[$current] > $distance[$unvisited])
        $current = $unvisited;
    }
    $visit[] = $current;
    foreach( $graph[$current] as $next => $cost ) {
      if( $distance[$current] + $cost < $distance[$next] ) {
        $distance[$next] = $distance[$current] + $cost;
        $predecessor[$next] = $current;
      }
    }
  }
  $route = array($goal);
  while( !($start == $route[count($route) - 1]) ) {
    $route[] = $predecessor[$route[count($route) - 1]];
  }
  $routeasli = array();
  foreach($route as $key => $value) {
    $routeasli[$key] = $value + 1;
  }

  echo'<center>';
  echo '<div class="well" style="display:block;">';
  echo'<h3>Route STO ke Tiket B<hr></h3>';
  echo implode(' -> ', array_reverse($routeasli)) . "<br>";
  $data =$distance[$goal];
  
  if($data > 1000000){
    $data=0;
  }else{
  
  echo 'Jarak Tiket B : ' . $data;
  echo ' m<br/><hr/>';
  
  if($data == 0) {echo '<h1 style="color:red"> Maaf Jalur Belum Berelasi</h1>';}else{
    echo "<a class='btn btn-success btn-block' href='multi.php?jalur=";   
    echo implode(',', array_reverse($route)) . "\n";
    echo "' >Lihat Jalur pada Map</a>";
  }
  echo '</div>';
  echo'</center>';
  return $data;

  }
  
  }

  function dijkstra3($graph, $start, $goal, $data) {
  $distance = array($start => 0);
  $visit = array($start);
  $predecessor = array();
  foreach( $graph as $node => $edge ) {
    $distance[$node] = pow(10, 10);
    $predecessor[$node] = $start;
  }
  foreach( $graph[$start] as $next => $cost ) {
    $distance[$next] = $cost;
  }
  while( !in_array($goal, $visit) ) {
    $current = null;
    foreach( array_diff(array_keys($graph), $visit) as $unvisited ) {
      if(!$current || $distance[$current] > $distance[$unvisited])
        $current = $unvisited;
    }
    $visit[] = $current;
    foreach( $graph[$current] as $next => $cost ) {
      if( $distance[$current] + $cost < $distance[$next] ) {
        $distance[$next] = $distance[$current] + $cost;
        $predecessor[$next] = $current;
      }
    }
  }
  $route = array($goal);
  while( !($start == $route[count($route) - 1]) ) {
    $route[] = $predecessor[$route[count($route) - 1]];
  }
  $routeasli = array();
  foreach($route as $key => $value) {
    $routeasli[$key] = $value + 1;
  }

  echo'<center>';
  echo '<div class="well" style="display:block;">';
  echo'<h3>Route STO ke Tiket C<hr></h3>';
  echo implode(' -> ', array_reverse($routeasli)) . "<br>";
  $data =$distance[$goal];
  
  if($data > 1000000){
    $data=0;
  }else{
  
  echo 'Jarak Tiket C : ' . $data;
  echo ' m<br/><hr/>';
  
  if($data == 0) {echo '<h1 style="color:red"> Maaf Jalur Belum Berelasi</h1>';}else{
    echo "<a class='btn btn-primary btn-block' href='multi.php?jalur=";   
    echo implode(',', array_reverse($route)) . "\n";
    echo "' >Lihat Jalur pada Map</a>";
  }
  echo '</div>';

  echo'</center>';
  return $data;
  }
  
  }

$awal = $_GET['start'];
$dr = $awal-1;
$akhir = $_GET['tujuan'];
$sm = $akhir-1;
$akhir2 = $_GET['tujuan2'];
$sm2 = $akhir2-1;
$akhir3 = $_GET['tujuan3'];
$sm3 = $akhir3-1;


// dijkstra($graph, $dr, $sm);
// dijkstra2($graph, $dr, $sm2);
// dijkstra3($graph, $dr, $sm3);

$jartot=array(
 array("titik"=>A,"id_titik"=>$sm+1,"jarak"=>dijkstra($graph, $dr, $sm)),
 array("titik"=>B,"id_titik"=>$sm2+1,"jarak"=>dijkstra2($graph, $dr, $sm2)),
 array("titik"=>C,"id_titik"=>$sm3+1,"jarak"=>dijkstra3($graph, $dr, $sm3)),
 
);
usort($jartot, function($a, $b){
    return $a['jarak'] > $b['jarak'];
});
echo '<center>';
echo '<div class="well">';
echo '<h3>Rute Keberangkatan pertama anda dari STO menuju Tiket '.$jartot[0]['titik'].'</h3>';
echo "</div>";
echo '</center>';
// echo '<br>'.$jartot[0]['titik'];
// echo '<br>'.$jartot[0]['id_titik']; // 3
// echo '<br>'.$jartot[0]['jarak']; // 130
 // titik C


// ;
// echo min(array_column($jartot, 'jarak'));
// function getMax( $array )
// {
//     $max = 0;
//     foreach( $array as $k => $v )
//     {
//         $max = max( array( $max, $v['jarak'] ) );
//     }
//     return $max;
// }
// $titikawalbaru= getMax($jartot);
// echo' terakhir '.$titikawalbaru;
// echo '<br/>';
// echo '<center>Data Array:</center>';
//echo '<pre>'; print_r(dijkstra($graph[]); echo '</pre>';

?>