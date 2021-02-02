<?php
//including the database connection file
include_once("config.php");

//fetching data in descending order (lastest entry first)
//$result = mysql_query("SELECT * FROM users ORDER BY id DESC"); // mysql_query is deprecated
$result = mysqli_query($mysqli, "SELECT * FROM option ORDER BY option_id DESC"); // using mysqli_query instead
?>

<html>
<head>	
	<title>Home page</title>
</head>

<body>
<a href="add.html">Add New Data</a><br/><br/>

	<table width='80%' border=0>

	<tr bgcolor='#CCCCCC'>
		<td>option_id</td>
		<td>option_name</td>
	</tr>

	<?php 
	//while($res = mysql_fetch_array($result)) { // mysql_fetch_array is deprecated, we need to use mysqli_fetch_array 
	while($res = mysqli_fetch_array($result)) { 		
		echo "<tr>";
		echo "<td>".$res['option_id']."</td>";
		echo "<td>".$res['option_name']."</td>";
		echo "<td><a href=\"edit.php?id=$res[option_id]\">Edit</a> | <a href=\"delete.php?id=$res[option_id]\" onClick=\"return confirm('Are you sure you want to delete?')\">Delete</a></td>";		
	}
	?>
	</table>
</body>
</html>
