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
<form class="form-horizontal " method="post" action="committee.php">
<div class="panel panel-default" name="committee">
<div class="panel-heading container-fluid">
<div class="col-lg-1 pull-right" >
<a class="btn btn-default" href="update.php?form=6" role="button" name="form3">
<span class="glyphicon glyphicon-pencil "  aria-hidden="true"></span>
</a></div>
<div class="panel-title"><h4>Committee Work</h4></div>	
  </div>
<?php
include("../includes/config_db.php");
if(isset($_POST['committee']))
{
/*$cname=$_POST['cname'];
$assignments=$_POST['assignments'];*/
	mysqli_query($conn,"INSERT INTO committee(cname,assignments,pers_id)								
				VALUES('".$_POST['cname']."','".$_POST['assignments']."','".$_SESSION['login_user']."')") or die(mysql_error());
    echo "<meta http-equiv=Refresh content=1;url=committee.php>";
}
?>
   <?php 
$sql = "SELECT cname,assignments FROM committee where pers_id ='".$_SESSION['login_user']."'";
$result = mysqli_query($conn,$sql) or die(mysql_error()); 

if ($result->num_rows > 0) { 

echo "<table class='table table-bordered text-center'>

<tr class='active'>
<th class='text-center'>Name of Committee</th>
<th class='text-center'>Assignments</th>

</tr>";

while($row = mysqli_fetch_array($result))
  {
  echo "<tr class='active'>";
  echo "<td class='col-lg-4'>".$row['cname']."</td>";
  echo "<td class='col-lg-8'>".$row['assignments']."</td>";
  echo "</tr>";
  }echo "</table>";
 
}
?> 
  <br><br>
  <div class="panel-body"> 
  <div class="form-group">
		<label for="research1" class="col-lg-2 control-label ">Name of Committee:</label>
		<div class="col-lg-10">
		  <input type="text" class="form-control" name="cname" placeholder="">
		</div>
  </div>
  <div class="form-group">
		<label for="research2" class="col-lg-2 control-label">Assignments:</label>
		<div class="col-lg-10">
		  <input type="text" class="form-control" name="assignments" placeholder="">
		</div>
   </div>
	<input class="btn btn-primary col-lg-2 col-lg-offset-10" type="submit" name="committee" value="Submit">
	</div>

</div>
</form>
 </div>
<script src="../js/jquery-2.2.4.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>