<?php
include('session_chk.php');
include('login_header.php');
include("sidebar.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Feedback Evaluation System</title>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/style.css">
    <!-- Optional Bootstrap theme -->
    <link rel="stylesheet" href="../css/bootstrap-theme.min.css">
</head>

<body>
<div class="col-lg-10">
  <h1>Activity Report </h1>
  <br>
<div class="btn-group btn-group-justified " role="group" aria-label="..." >
   <div class="btn-group" role="group">
	<a role="button" class="btn btn-default" href="teaching.php">Teaching</a>
	</div>
   <div class="btn-group" role="group">
  <a role="button" class="btn btn-default" href="examinations.php">Examinations</a>
  </div>
   <div class="btn-group" role="group">
  <a type="button" class="btn btn-default" href="research.php">Research</a>
    </div>
	 <div class="btn-group" role="group">
	<a type="button" class="btn btn-default" href="publications.php">Publications</a>
</div>
 <div class="btn-group" role="group">
	<a type="button" class="btn btn-default" href="administrative.php">Administrative Duties</a>
	</div>
 <div class="btn-group" role="group">    
	<a type="button" class="btn btn-default" href="committee.php">Committee Work</a>
</div>
<div class="btn-group" role="group">    
	<a type="button" class="btn btn-default" href="training.php">Training</a>
</div>
</div>
<br>
<form class="form-horizontal " method="post" action="research.php">
<div class="panel panel-default">
<div class="panel-heading container-fluid">
<div class="col-lg-1 pull-right" >
<a class="btn btn-default" href="update.php?form=3" role="button" name="form3">
<span class="glyphicon glyphicon-pencil "  aria-hidden="true"></span>
</a></div>
    <h2 class="panel-title">Research</h2>	
  </div>
  <?php
include("../includes/config_db.php");
if(isset($_POST['research']))
{
$research1=$_POST['research1'];
$research2=$_POST['research2'];
    $ins ="INSERT INTO research(research1, research2,pers_id) VALUES('$research1','$research2','".$_SESSION['login_user']."')";
    mysqli_query($conn,$ins) or die(mysql_error());
    echo "<meta http-equiv=Refresh content=1;url=research.php>";
} ?> 
   <?php 
$sql = "SELECT * FROM research where pers_id ='".$_SESSION['login_user']."'";
$result = mysqli_query($conn,$sql) or die(mysql_error()); 

if ($result->num_rows > 0) { 

echo "<table class='table table-bordered text-center'>

<tr class='active'>
<th class='text-center'>Research in Conjunction with Masters / Doctoral Programmes:</th>
<th class='text-center'>Other Research Activities:</th>

</tr>";
if ($result->num_rows > 0) {
while($row = mysqli_fetch_array($result))
  {
  echo "<tr class='active'>";
  echo "<td>".$row['research1']."</td>";
  echo "<td>".$row['research2']."</td>";
  echo "</tr>";
  }echo "</table>";
 }
}
?> 
 
  <div class="panel-body"> 
  <div class="form-group ">
		<label for="research1" class="col-lg-3 control-label ">Research in Conjunction with Masters / Doctoral Programmes:</label>
		<div class="col-lg-9">
		  <input type="text" class="form-control" name="research1" placeholder="">
		</div>
  </div>
  <br><br><br>
  <div class="form-group">
		<label for="research2" class="col-lg-3 control-label">Other Research Activities:</label>
		<div class="col-lg-9">
		  <input type="text" class="form-control" name="research2" placeholder="">
		</div>
   </div>
	<input class="btn btn-primary col-lg-2 col-lg-offset-10" type="submit" name="research" value="Submit">
	</div>

</div>
</form>
</div>
<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>