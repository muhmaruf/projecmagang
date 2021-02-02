<?php
//including the database connection file
include("config.php");
?>

<?
//getting id of the data from url
$id = $_GET['id'];

//deleting the row from table
mysqli_query($mysqli,"DELETE FROM option WHERE option_id ='$_post[id]'")

header("Location:index.php");
?>