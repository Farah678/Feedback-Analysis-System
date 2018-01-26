<!DOCTYPE html>
<?php
include('session_chk.php');
include('login_header.php');
include("sidebar.php");
?>
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
<form class="form-horizontal " method="post" action="examinations.php">
<div class="panel panel-default" >
<div class="panel-heading container-fluid">
<div class="col-lg-1 pull-right" >
<a class="btn btn-default" href="update.php?form=2" role="button" name="form2">
<span class="glyphicon glyphicon-pencil "  aria-hidden="true"></span>
</a></div>
<div class="panel-title"><h4>Examinations</h4></div>
  </div>
  <?php
include("../includes/config_db.php");
if(isset($_POST['examinations']))
{
/*$ectitle=$_POST['ectitle'];
$eclass=$_POST['eclass'];
$estudents=$_POST['estudents'];
$edate=$_POST['edate'];
$esubmission=$_POST['esubmission'];	*/
$ins="INSERT INTO examinations(ectitle,eclass,estudents,edate,esubmission,pers_id)								
				VALUES(	'".$_POST['ectitle']."','".$_POST['eclass']."','".$_POST['estudents']."','".$_POST['edate']."','".$_POST['esubmission']."','".$_SESSION['login_user']."')";    
mysqli_query($conn,$ins) or die(mysql_error());
echo "<meta http-equiv=Refresh content=1;url=examinations.php>";
}
?>
    <?php 
$sql = "SELECT * FROM examinations where pers_id ='".$_SESSION['login_user']."'";
$result = mysqli_query($conn,$sql) or die(mysql_error()); 

if ($result->num_rows > 0) { 

echo "<table class='table table-bordered text-center'>
<tr class='active'>
<th class='text-center'>Title</th>
<th class='text-center'>Class</th>
<th class='text-center'>No. of students</th>
<th class='text-center'>Date of Examination</th>
<th class='text-center'>Date of Award Submission</th>

</tr>";
if ($result->num_rows > 0) {
while($row = mysqli_fetch_array($result))
  {
  echo "<tr class='active'>";
  echo "<td>".$row['ectitle']."</td>";
  echo "<td>".$row['eclass']."</td>";
  echo "<td>".$row['estudents']."</td>";
  echo "<td>".$row['edate']."</td>";
  echo "<td>".$row['esubmission']."</td>";
  echo "</tr>";
  }echo "</table>";
 }
}
?> 

  <div class="panel-body"> 
  <div class="form-group">
    <label for="ectitle" class="col-lg-2 control-label">Course Title</label>
    <div class="col-lg-10">
      <input type="text" class="form-control" name="ectitle" placeholder="Course Title">
    </div>
  </div>
  <div class="form-group">
    <label for="eclass" class="col-lg-2 control-label">Class</label>
    <div class="col-lg-6">
      <input type="text" class="form-control" name="eclass" placeholder="Class">
    </div>
	<label for="estudents" class="col-lg-2 control-label">No. of Students</label>
    <div class="col-lg-2">
      <input type="text" class="form-control" name="estudents">
    </div>
   </div>
   <div class="form-group">
    <label for="edate" class="col-lg-3 control-label">Date of Examination</label>
    <div class="col-lg-3">
      <input type="text" class="form-control" name="edate" >
    </div>
	
	<label for="esubmission" class="col-lg-3 control-label">Date of Award Submission</label>
    <div class="col-lg-3">
      <input type="text" class="form-control" name="esubmission" >
    </div>
	</div>
	<input class="btn btn-primary col-lg-2 col-lg-offset-10" type="submit" name="examinations" value="Submit">
  </div>
</div>
</form>

 </div>
<script src="../js/jquery-2.2.4.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>