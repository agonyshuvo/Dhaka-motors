<?php
session_start();	
include '../functions.php';

if(logged_in()==TRUE){
	if(isset($_POST['add'])){
		
		$model=$_POST['branch'];
		
		$connection=mysqli_connect("localhost","root","","dhaka_motors");
		
		
			$query="insert into dealers values('','$model')";
			
			// $query1="insert into motorcycle_info values('','$mType','$mName','$model','$engineNo','$chassisNo','$cc','$color','$price', LAST_INSERT_ID(), '','','','')";
			
			//$new = 'LAST_INSERT_ID()';			
			$result=mysqli_query($connection,$query);
			// $result1=mysqli_query($connection,$query1);
			if( $result ){
				header("location: branches.php?addded");
			}else{
				echo mysqli_error($connection);
			}
		
	}
	
	
}			
?>