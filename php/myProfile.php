<?php
include('session_chk.php');
include('login_header.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Feedback Evaluation System</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
     <link rel="stylesheet" type="text/css" href="css/style.css">
    <!-- Optional Bootstrap theme -->
    <!-- Optional Bootstrap theme -->
    <link rel="stylesheet" href="css/bootstrap-theme.min.css">
</head>
<body>
    <?php
    include("..\includes\config_db.php");
if(isset($_POST['Update']))
  {//begin of if($submit).
      // Set global variables to easier names
	  $pass= $_POST['pass'];
	$sql= "UPDATE login SET password='$pass' WHERE pers_id='".$_SESSION['login_user']."'";	
    $result = mysqli_query($conn,$sql) or die(mysql_error()); 
	echo "<div class=\"col-md-10\"> 
	<div class=\"alert alert-success text-center\" role=\"alert\">
	<b>Password has been updated Successfully!</b></div></div>";
  }//end of if($submit).

    $result = mysqli_query($conn,"SELECT * FROM login WHERE pers_id ='".$_SESSION['login_user']."'");
        while($myrow = mysqli_fetch_assoc($result))
             {
                $id = $myrow["pers_id"];
      ?>
<div class="col-md-4">
<form class="form-horizontal" action = "<?php $_PHP_SELF ?>" method="post">
  <div class="form-group">
    <label class="col-sm-3 control-label">Login ID:</label>
    <div class="col-sm-7">
      <input type="text" class="form-control" name="id"  value="<?php echo $id?>">
      </div>
      
  </div>
  <div class="form-group">
    <label class="col-sm-3 control-label">Password</label>
    <div class="col-sm-7">
      <input type="text" class="form-control"  name="pass" placeholder="" >
      </div>
      <div class="col-sm-2">
      <input class='btn btn-default ' type='submit' value='Update' name='Update'>
    </div>
     <hr>
      <div class="col-sm-2 col-sm-offset-10"><input type="button" name="Back" value="Back"  onclick="javascript: history.go(-1)" class="btn btn-default " /></div>
  </div>
</form>
    <?php
 	}//end of while loop

?>
        </div>
 <script src="../js/jquery-3.2.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>