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
    <!-- Optional Bootstrap theme -->
    <link rel="stylesheet" href="../css/bootstrap-theme.min.css">
    <link rel="stylesheet" type="text/css" href="../css/style.css">
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
<form class="form-horizontal " method="post" action="training.php">
<div class="panel panel-default" >
<div class="panel-heading container-fluid">
<div class="col-lg-1 pull-right" >
<a class="btn btn-default" href="update.php?form=7" role="button" name="form7">
<span class="glyphicon glyphicon-pencil "  aria-hidden="true"></span>
</a></div>
    <h2 class="panel-title">Training</h2>	
  </div>
 <?php
include("includes/config_db.php");
if(isset($_POST['training']))
{
$education=$_POST['education'];
$meetings=$_POST['meetings'];
$service=$_POST['service'];	
mysqli_query($conn,"INSERT INTO training(education,meetings,service,pers_id)					
				VALUES(	'$education','$meetings','$service','".$_SESSION['login_user']."')") or die(mysql_error());
echo "<meta http-equiv=Refresh content=1;url=training.php>";
}
?> 
   <?php 
$sql = "SELECT * FROM training where pers_id ='".$_SESSION['login_user']."'";
$result = mysqli_query($conn,$sql) or die(mysql_error()); 

if ($result->num_rows > 0) { 

echo "<table class='table table-bordered text-center'>
<tr class='active'>
<th class='text-center'>Higher Education</th>
<th class='text-center'>Professional / Scientific Meetings Attended:</th>
<th class='text-center'>Significant Community and Professional Service or Academic Distinction</th>
</tr>";
while($row = mysqli_fetch_array($result))
  {
  echo "<tr class='active'>";
  echo "<td>".$row['education']."</td>";
  echo "<td>".$row['meetings']."</td>";
  echo "<td>".$row['service']."</td>";
  echo "</tr>";
  }echo "</table>";
 }

?> 
  
  <div class="panel-body"> 
  <div class="form-group">
    <label for="education" class="col-lg-3 control-label">Higher Education</label>
    <div class="col-lg-9">
      <input type="text" class="form-control" name="education" placeholder="(Please give duration and type of training).">
    </div>
  </div>
  <div class="form-group">
    <label for="meetings" class="col-lg-3 control-label">Professional / Scientific Meetings Attended:</label>
    <div class="col-lg-9">
      <input type="text" class="form-control" name="meetings" placeholder="(Seminars, Workshops, Symposia and others)">
    </div>
   </div>
  <div class="form-group">
   <label for="service" class="col-lg-3 control-label">Significant Community and Professional Service or Academic Distinction</label>
    <div class="col-lg-9">
      <input type="text" class="form-control" name="service" placeholder="(e.g. Board Member, Journal Editor, Officer in Professional Society etc.)">
    </div>
        </div>
	<input class="btn btn-primary col-lg-2 col-lg-offset-10" type="submit" name="training" value="Submit">

		</div>
</div>
</form>
 </div>
<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>