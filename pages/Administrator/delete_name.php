<?php
	$con=mysqli_connect("localhost","root","","dhaka_motors");
	$mID=$_GET["ID"];
	$query="delete from motorcycle_name where ID='$mID'";
	mysqli_query($con,$query);
	header('location: name.php?deleted');
?>