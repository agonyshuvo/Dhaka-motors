<?php 
 include 'layout/head.php';
 
?>
<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Customer
            <small>Information</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="index.php"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li class="active">Customer</li>
        </ol>
    </section>

    <section class="content">

        <?php if(isset($_GET['updated']) == true){?>
            <div class="alert alert-success alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h4><i class="icon fa fa-check"></i> Alert!</h4>
                Successfully Updated Information.
            </div>
        <?php }?>

        <div class="row">
            <div class="col-xs-3"></div>
            <div class="col-xs-6">


                <div class="box">

                    <div class="box-body">
                        <table id="example1" class="table table-striped">
                            <thead>
                                <tr>
                                <tr>
                                    <th>Customer Name</th>
                                    <th>Customer Phone</th>

                                </tr>
                                </tr>
                            </thead>
                            <tbody>
                                <script>
                                function confirmationDelete(anchor) {
                                    var conf = confirm('Are you sure want to delete this record?');
                                    if (conf)
                                        window.location = anchor.attr("href");
                                }
                                </script>
                                <?php
                  $con=mysqli_connect('localhost','root','','dhaka_motors');


                    $query="select * 
                        from customer
                        
                        ";
                    $result=mysqli_query($con,$query);
                    if(mysqli_num_rows($result)>0){
                      while($row=mysqli_fetch_array($result, MYSQLI_ASSOC)){
                        echo "<tr>";
                        
                        echo "<td>".$row['name']."</td>";
                        echo "<td>".$row['phone']."</td>";
                        echo "<td><a href='details_customer.php?cID=".$row['cID']."'></a></td>";
                        echo "<td><a href='update_customer.php?cID=".$row['cID']."'><span class='fa fa-edit'></span></a></td>";
                        
                        echo "</tr>";

                      }
                      $query="select * 
                      from customer where cID =33
                      ";
                      $result=mysqli_query($con,$query);
                        if($result){
                          $row=mysqli_fetch_array($result,MYSQLI_ASSOC);
                          $name = $row['name'] ?? '';
                          $phone = $row['phone'] ?? '';
                          $email = $row['email'] ?? '';
                          $nid = $row['nid'] ?? '';
                        }
                  ?>
                                <div class="modal modal-warning fade" id="modal-warning">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal"
                                                    aria-label="Close">
                                                    <span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title">Customer</h4>
                                            </div>
                                            <div class="modal-body">
                                                <p> Name: <?php echo  $name?><br />
                                                    Phone: <?php echo  $phone?><br />
                                                    Email: <?php echo  $email?><br />
                                                    NID: <?php echo  $nid?><br />
                                                </p>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-outline pull-left"
                                                    data-dismiss="modal">Close</button>
                                                <button type="button" class="btn btn-outline">Save changes</button>
                                            </div>
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                </div>
                                <!-- /.modal -->
                                <?php
                    }else{
                      echo "No Customer Available";
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

        </div>
        <!-- /.row -->
    </section>


    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<?php 
 include 'layout/foot.php';
?>