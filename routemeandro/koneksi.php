<?php
error_reporting(0);
mysql_connect("localhost","root","");
mysql_select_db("routeme");
?>

<?php
$db_host = "localhost";
$db_user = "root";
$db_pass = "";
$db_name = "routeme";

$conn = mysqli_connect($db_host, $db_user, $db_pass, $db_name);

?>