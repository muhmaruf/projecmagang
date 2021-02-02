<?php
//including the database connection file
include_once("config.php");

if(isset($_POST['update']))
{	

	$id = mysqli_real_escape_string($mysqli, $_POST['id']);
	
	$name = mysqli_real_escape_string($mysqli, $_POST['name']);;
	
	 //checking empty fields
	if(empty($name) || empty($age) || empty($email)) {	
			
		if(empty($name)) {
			echo "<font color='red'>Name field is empty.</font><br/>";
		}
		
		if(empty($id)) {
			echo "<font color='red'>Age field is empty.</font><br/>";
		}		
	}
	else {	
		//updating the table
		$result = mysqli_query($mysqli, "UPDATE option_id SET name='$name',id='$id  WHERE id=$id");
		
		//redirectig to the display page. In our case, it is index.php
		header("Location: index.php");
	}
}
?>
<?php
//getting id from url
$id = $_GET['id'];
$name = $_GET['name'];

//selecting data associated with this particular id
$retrun =mysqli_query ($mysqli, "SELECT * FROM option WHERE id='$id' ");

while($res = mysqli_fetch_array($retrun))
{
	$name = $res['name'];
	$id= $res['id'];
}
