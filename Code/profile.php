<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['vpmsaid']==0)) {
  header('location:logout.php');
  } else{ 
    $uid=$_SESSION['vpmsaid'];
    if(isset($_POST['submit']))
    {
      $IncidenceFloods=$_POST['IncidenceFloods1'];
      $IncidenceLandslides=$_POST['IncidenceLandslides1'];
      $query=mysqli_query($con, "update tracking_climate_risk set incidence_floods='$IncidenceFloods', incidence_landslides='$IncidenceLandslides' where country_id='$uid'");
      if ($query) {
      echo '<script>alert("Profile updated successully.")</script>';
      echo '<script>window.location.href=Tracking.php</script>';
        }
        else
          {
            echo '<script>alert("Something Went Wrong. Please try again.")</script>';
          }
    }
    ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="images/logo.png" type="image/png">
    <title>AfMAR</title>
    <!-- base:css -->
    <link rel="stylesheet" href="vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="vendors/base/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="css/style.css">
    <!-- endinject -->
  </head>
  <body>
    <div class="container-scroller">
		<!-- partial:partials/_horizontal-navbar.html -->
    <div class="horizontal-menu">
    <?php include_once('includes/header.php');?>
    
    </div>
    <!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<div class="main-panel">
      <div class="content-wrapper">
          <div class="row">
            <div class="col-12 grid-margin">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Personnal information</h4>
                  <form class="forms-sample" action="" method="post" enctype="multipart/form-data">
                        <?php
                        $ret = mysqli_query($con, "select * from country where ID='$uid'");
                        $cnt = 1;
                            while ($row = mysqli_fetch_array($ret)) {
                        ?>
                                <div class="form-group">
                                    <label for="country_name">Country name </label>
                                    <input type="text" class="form-control" id="country_name" name="country_name" value="<?php echo $row['country_name']; ?>" readonly>
                                </div>
                                <div class="form-group">
                                    <label for="email">Email address</label>
                                    <input type="text" class="form-control" id="email" name="email" value="<?php echo $row['email']; ?>" required>
                                </div>
                                <div class="form-group">
                                    <label for="CultivatedAreaShare1">Password</label>
                                    <input type="password" class="form-control" id="CultivatedAreaShare1" name="CultivatedAreaShare1" value="<?php echo $row['Cultivated_area_share']; ?>" required>
                                </div>
                        <?php } ?>
                        <button type="submit" class="btn btn-primary me-2" name="submit">Submit</button>
                        <button class="btn btn-light">Cancel</button>
                    </form>
                </div>
              </div>
            </div>
          </div>
        </div>
			</div>
		</div>
				<!-- content-wrapper ends -->
				<!-- partial:partials/_footer.html -->
				
                <?php include_once('includes/footer.php');?>
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
    </div>
		<!-- container-scroller -->
    <!-- base:js -->
    <script src="vendors/base/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page-->
    <!-- End plugin js for this page-->
    <!-- inject:js -->
    <script src="js/template.js"></script>
    <!-- endinject -->
    <!-- plugin js for this page -->
    <!-- End plugin js for this page -->
    <script src="vendors/chart.js/Chart.min.js"></script>
    <script src="vendors/progressbar.js/progressbar.min.js"></script>
		<script src="vendors/chartjs-plugin-datalabels/chartjs-plugin-datalabels.js"></script>
		<script src="vendors/justgage/raphael-2.1.4.min.js"></script>
		<script src="vendors/justgage/justgage.js"></script>
    <script src="js/jquery.cookie.js" type="text/javascript"></script>
    <!-- Custom js for this page-->
    <script src="js/dashboard.js"></script>
    <!-- End custom js for this page-->
  </body>
</html>
<?php } ?>