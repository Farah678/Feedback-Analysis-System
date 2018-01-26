<?php
include("header.php");
include('login.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Feedback Evaluation System</title>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
    <!-- Optional Bootstrap theme -->
    <link rel="stylesheet" href="../css/bootstrap-theme.min.css">
     <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
    <div class="col-md-4"></div>
    <div class="col-md-4">
    <div><?php echo $error; ?></div>
<form class="form-horizontal" action="" method="post">
  <div class="form-group">
    <label class="col-sm-3 control-label">Login ID:</label>
    <div class="col-sm-9">
      <input type="text" class="form-control" name="pers_id" placeholder="">
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-3 control-label">Password</label>
    <div class="col-sm-9">
      <input type="password" class="form-control"  name="password" placeholder="">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-3 col-sm-10">
      <input class="btn btn-default" type="submit" name="submit" value="Login">
        <button class="btn btn-default"><a href="signup.php">SignUp</a></button>
    </div>
  </div>
</form>
        </div>
<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>
<?php 
     include("footer.php");
?>
