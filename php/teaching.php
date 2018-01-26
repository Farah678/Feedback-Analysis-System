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
<form class="form-horizontal " method="post" action="teaching.php">
<div class="panel panel-default" >
<div class="panel-heading container-fluid">
<div class="col-lg-1 pull-right" >
<a class="btn btn-default" href="update.php?form=1" role="button" name="form1">
<span class="glyphicon glyphicon-pencil "  aria-hidden="true"></span>
</a></div>

<div class="panel-title"><h4>Teaching</h4></div>
</div>
<?php
include("../includes/config_db.php");

if(isset($_POST['teaching'])) 
{
$tctitle=$_POST['tctitle'];
$tclass=$_POST['tclass'];
$tstudents=$_POST['tstudents'];
$tlechours=$_POST['tlechours'];

$pctitle=$_POST['pctitle'];
$pclass=$_POST['pclass'];
$pstudents=$_POST['pstudents'];
$plechours=$_POST['plechours']; 

 mysqli_query($conn,"INSERT INTO teaching(tctitle,tclass,tstudents,tlechours,
											pctitle,pclass,pstudents,plechours,pers_id)
				VALUES('$tctitle','$tclass','$tstudents','$tlechours',
'$pctitle','$pclass','$pstudents','$plechours','".$_SESSION['login_user']."')") or die(mysql_error());
echo "<meta http-equiv=Refresh content=1;url=teaching.php>";
}
?>

<?php 
$sql = "SELECT * FROM teaching where pers_id ='".$_SESSION['login_user']."'";
$result = mysqli_query($conn,$sql) or die(mysql_error()); 
if ($result->num_rows > 0) {
while($row = mysqli_fetch_array($result))
  {
    
    echo"
<table class='table table-bordered text-center'>
<tr class='active'>
<th colspan='4' class='text-center'>Theory</th>
<th colspan='4' class='text-center'>Practical</th>
</tr>
<tr class='active'>
<th class='text-center'>Title</th>
<th class='text-center'>Class</th>
<th class='text-center'>No. of students</th>
<th class='text-center'>Lecture Hrs/Week</th>
<th class='text-center'>Title</th>
<th class='text-center'>Class</th>
<th class='text-center'>No. of students</th>
<th class='text-center'>Lecture Hrs/Week</th>
</tr>";


  echo "<tr class='active'>";
  echo "<td>".$row['tctitle']."</td>";
  echo "<td>".$row['tclass']."</td>";
  echo "<td>".$row['tstudents']."</td>";
  echo "<td>".$row['tlechours']."</td>";
  echo "<td>".$row['pctitle']."</td>";
  echo "<td>".$row['pclass']."</td>";
  echo "<td>".$row['pstudents']."</td>";
  echo "<td>".$row['plechours']."</td>";
  echo "</tr>";
  }echo "</table>";
 }

?> 
 <div class="panel-body"> 
	<h4>Theory</h4><hr>
  <div class="form-group">
    <label for="tctitle" class="col-lg-2 control-label">Course Title</label>
    <div class="col-lg-10">
      <input type="text" class="form-control" name="tctitle" placeholder="Course Title">
    </div>
  </div>
  <div class="form-group">
    <label for="tclass" class="col-lg-2 control-label">Class</label>
    <div class="col-lg-10">
      <input type="text" class="form-control" name="tclass" placeholder="">
    </div>
   </div>
   <div class="form-group">
   <label for="tstudents" class="col-lg-2 control-label">No. of Students</label>
    <div class="col-lg-4">
      <input type="text" class="form-control" name="tstudents" placeholder="">
    </div>
	
    <label for="tlechours" class="col-lg-3 control-label">No. of lecture hours/week:</label>
    <div class="col-lg-3">
      <input type="text" class="form-control" name="tlechours" placeholder="">
    </div>
	</div>
<br>
    <h4>Practical</h4><hr>
  <div class="form-group">
    <label for="pctitle" class="col-lg-2 control-label">Course Title</label>
    <div class="col-lg-10">
      <input type="text" class="form-control" name="pctitle" placeholder="Course Title">
    </div>
  </div>
  <div class="form-group">
    <label for="pclass" class="col-lg-2 control-label">Class</label>
    <div class="col-lg-10">
      <input type="text" class="form-control" name="pclass" placeholder="">
    </div>
   </div>
   <div class="form-group">
   <label for="pstudents" class="col-lg-2 control-label">No. of Students</label>
    <div class="col-lg-4">
      <input type="text" class="form-control" name="pstudents" placeholder="">
    </div>
	
    <label for="plechours" class="col-lg-3 control-label">No. of lecture hours/week:</label>
    <div class="col-lg-3">
      <input type="text" class="form-control" name="plechours" placeholder="">
    </div>
	</div>
	<input class="btn btn-primary col-lg-2 col-lg-offset-10" type="submit" name="teaching" value="Submit">
		</div>
</div>
</form>
 </div>

<script src="../js/jquery-2.2.4.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>