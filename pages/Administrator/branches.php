<?php 
 include 'layout/head.php';
 
?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Branches
        <small>Name</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li class="active">Branches</li>
      </ol>
    </section>

    <!-- Main content -->
	
	<section class="content">
      <div class="row">
        <div class="col-xs-8">
          

          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Branches</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-striped">
                <thead>
                <tr>
                  <tr>
										<!-- <th>Edit</th> -->
										<th>Delete</th>
										
										
										<th>Branch Name</th>
										<!-- <th>Discount To</th>
										<th>Parcentage(%) </th>
										<th>Status</th> -->
									</tr>
                </tr>
                </thead>
                <tbody>
				<script>
					function confirmationDelete(anchor)
					{
					   var conf = confirm('Are you sure want to delete this record?');
					   if(conf)
						  window.location=anchor.attr("href");
					}
				</script>	
					<?php
					 $con=mysqli_connect('localhost','root','','dhaka_motors');


						$query="select * 
								from dealers
								where ID != 1 
								";
						$result=mysqli_query($con,$query);
						if(mysqli_num_rows($result)>0){
							while($row=mysqli_fetch_array($result, MYSQLI_ASSOC)){
								echo "<tr>";
								// echo "<td><a href='b_edit.php?ID=".$row['ID']."'><span class='fa fa-edit'></span></a></td>";
								//echo "<td><a href=dDelete.php?discount_id=".$row['discount_id']."'><span class='fa fa-minus-circle'></span></a></td>";
								
								echo "<td><a onclick='javascript:confirmationDelete($(this));return false;' href='b_delete.php?ID=".$row['ID']."'>x</a></td>";
								
								echo "<td>".$row['dealerName']."</td>";
							
								
								echo "</tr>";
							}
						}else{
							echo "No Branches Available";
							echo "<br></br>";
						}
					?>
				</tbody>
				
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
		<div class="col-md-4">
		<div class="box box-warning">
            <div class="box-header with-border">
              <h3 class="box-title">Dealers</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <form role="form" action="add_branch.php" method="POST">
                <script>
										$( function() {
											$( "#datepicker" ).datepicker({ minDate: 1, maxDate: "+1M +10D",dateFormat:"yy-mm-dd"});
											} );
										</script>
										
										<script>
										$( function() {
											$( "#datepick" ).datepicker({ minDate: 1, maxDate: "+1M +10D",dateFormat:"yy-mm-dd"});
											} );
										</script>
                <!-- select -->
                <div class="form-group">
					<label>Branch Name</label>
  
					  <input type="text" class="form-control " name="branch" required>
					
					<!-- /.input group -->
				  </div>
				  
				  
				<div class="form-group">
                  <input type="submit" class="btn btn-flat btn-block btn-success" onclick="return confirm('Are you sure want to add?')" name="add" value="Add Branch" >
                </div>
   
                
              </form>
            </div>
            <!-- /.box-body -->
          </div>
        </div>
        
      </div>
      <!-- /.row -->
    </section>
	
	<!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 
<?php 
 include 'layout/foot.php';
?>