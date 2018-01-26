<?php
include('session_chk.php');
include("login_header.php");
include("sidebar.php");
include("../includes/config_db.php");
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
<br><?php 
$sql = "SELECT * FROM teaching where pers_id ='".$_SESSION['login_user']."'";
$result = mysqli_query($conn,$sql) or die(mysql_error()); 
if ($result->num_rows > 0) {
	?>
<div class="panel panel-default" >
<div class="panel-heading container-fluid">
<div class="col-lg-1 pull-right" >
<a class="btn btn-default" href="update.php?form=1" role="button" name="form1">
<span class="glyphicon glyphicon-pencil "  aria-hidden="true"></span>
</a></div>
<div class="panel-title"><h4>Teaching</h4></div>
</div>

<?php
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


while($row = mysqli_fetch_array($result))
  {
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
  }echo "</table>
</div>";
 }
?> 



    <?php 
$sql = "SELECT * FROM examinations where pers_id ='".$_SESSION['login_user']."'";
$result = mysqli_query($conn,$sql) or die(mysql_error()); 

if ($result->num_rows > 0) { 
?>
<div class="panel panel-default" >
<div class="panel-heading container-fluid">
<div class="col-lg-1 pull-right" >
<a class="btn btn-default" href="update.php?form=2" role="button" name="form2">
<span class="glyphicon glyphicon-pencil "  aria-hidden="true"></span>
</a></div>
<div class="panel-title"><h4>Examinations</h4></div>
  </div>
<?php
echo "<table class='table table-bordered text-center'>
<tr class='active'>
<th class='text-center'>Title</th>
<th class='text-center'>Class</th>
<th class='text-center'>No. of students</th>
<th class='text-center'>Date of Examination</th>
<th class='text-center'>Date of Award Submission</th>

</tr>";
while($row = mysqli_fetch_array($result))
  {
  echo "<tr class='active'>";
  echo "<td>".$row['ectitle']."</td>";
  echo "<td>".$row['eclass']."</td>";
  echo "<td>".$row['estudents']."</td>";
  echo "<td>".$row['edate']."</td>";
  echo "<td>".$row['esubmission']."</td>";
  echo "</tr>";
  }echo "</table> 
</div>";
}
?>
   <?php 
$sql = "SELECT * FROM research where pers_id ='".$_SESSION['login_user']."'";
$result = mysqli_query($conn,$sql) or die(mysql_error()); 

if ($result->num_rows > 0) { 
?>

<div class="panel panel-default" name="Research">
<div class="panel-heading container-fluid">
    <h2 class="panel-title">Research</h2>	
  </div> 
<?php
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
  }echo "</table>

</div>";
 }
}
?> 

 <?php 
$sql = "SELECT * FROM publications where pers_id ='".$_SESSION['login_user']."'";
$result = mysqli_query($conn,$sql) or die(mysql_error()); 

if ($result->num_rows > 0) { 
?>
<div class="panel panel-default" id="Publications">
<div class="panel-heading container-fluid">
<div class="col-lg-1 pull-right" >
<a class="btn btn-default" href="update.php?form=4" role="button" name="form4">
<span class="glyphicon glyphicon-pencil "  aria-hidden="true"></span>
</a></div>

    <h2 class="panel-title">Publications</h2>	
  </div>
<?php
echo "<table class='table table-bordered text-center'>

<tr class='active'>
<th class='text-center'>Title</th>
<th class='text-center'>Journals / Conferences</th>
<th class='text-center'>Date</th>
<th class='text-center'>Volume</th>

</tr>";
if ($result->num_rows > 0) {
while($row = mysqli_fetch_array($result))
  {
  echo "<tr class='active'>";
  echo "<td>".$row['ptitle']."</td>";
  echo "<td>".$row['pjournals']."</td>";
  echo "<td>".$row['pdate']."</td>";
  echo "<td>".$row['pvolume']."</td>";

  echo "</tr>";
  }echo "</table>
</div>";
 }
}
?>

   <?php 
$sql = "SELECT * FROM administrative where pers_id ='".$_SESSION['login_user']."'";
$result = mysqli_query($conn,$sql) or die(mysql_error()); 

if ($result->num_rows > 0) { 
?>

<div class="panel panel-default" id="Administrative">
<div class="panel-heading container-fluid">
<div class="col-lg-1 pull-right" >
<a class="btn btn-default" href="update.php?form=5" role="button" name="form5">
<span class="glyphicon glyphicon-pencil "  aria-hidden="true"></span>
</a></div>
    <h2 class="panel-title">Administrative Duties</h2>	
  </div>
<?php
echo "<table class='table table-bordered text-center'>

<tr class='active'>
<th class='text-center'>Title</th>
<th class='text-center'>Journals / Conferences</th>
<th class='text-center'>Date</th>
<th class='text-center'>Volume</th>
</tr>";
if ($result->num_rows > 0) {
while($row = mysqli_fetch_array($result))
  {
  echo "<tr class='active'>";
  echo "<td>".$row['atitle']."</td>";
  echo "<td>".$row['ajournals']."</td>";
  echo "<td>".$row['adate']."</td>";
  echo "<td>".$row['avolume']."</td>";

  echo "</tr>";
  }echo "</table>
</div>";
}
}?>
   <?php 
$sql = "SELECT * FROM training where pers_id ='".$_SESSION['login_user']."'";
$result = mysqli_query($conn,$sql) or die(mysql_error()); 

if ($result->num_rows > 0) { ?>
<div class="panel panel-default" >
<div class="panel-heading container-fluid">
<div class="col-lg-1 pull-right" >
<a class="btn btn-default" href="update.php?form=7" role="button" name="form7">
<span class="glyphicon glyphicon-pencil "  aria-hidden="true"></span>
</a></div>
    <h2 class="panel-title">Training</h2>	
  </div>

<?php
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
  }echo "</table>
</div>";
 }?> 

 </div>
</div>
</div>
    </div>
    </div>
    </div>
    </div>
<script src="../js/jquery-2.2.4.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>