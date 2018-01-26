<?php 
	  include('session_chk.php');
	  include("../includes/config_db.php");
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Feedback Access</title>
<link rel="stylesheet" type="text/css" href="../css/style.css" />
</head>

<body>
<?php
include('login_header.php');
include('admin_sidebar.php');?>
<h1>Feedback Form Access<small> Allow form access to deparments individually.</small></h1>
<hr>

 <?php

    $success = '';
    if(isset($_POST['Update']))
    {
        $department=$_POST['department'];
        $depId=$_POST['depId'];
        $value=$_POST['value'];
		mysqli_query($conn,"DELETE FROM permissions WHERE depId='$depId' ");
		foreach ($value as $per )
		{
        mysqli_query($conn,"INSERT INTO permissions ( permId , depId) VALUES('$per', '$depId')");
        }
        $success = "<div class=\"alert alert-success\" role=\"alert\">Feedback access is given to $department department.</div>";
       echo "<meta http-equiv=Refresh content=2;url=feedback_access.php>";

    }	
	$result = $conn->query("SELECT * FROM department WHERE 1");
	echo " $success ";
 if($result != false)
 {
	while  ($row = $result->fetch_assoc())
	{
 echo "
 <form method='POST' action=''>
 <div class='form-group '>
 <div class='row'><div class='col-md-12'>
	<input type='hidden' name='depId' value='".$row['depId']."'>
	<label><input type='hidden' name='department' value='".$row['depName']."'><h4>".$row['depName']."'s employees can 
	give feedback to the employees of:</h4></label>\n
	</div></div>";
	echo" 
	<div class='row'>";
   echo "<div class='col-md-1'></div>	
	   <div  class='col-md-3'>
	   <input type='checkbox' class=''  name='value[]' value='1' placeholder=''>
      <span>Research & Development</span></div> 
      <div  class='col-md-2'>
	  <input type='checkbox' class=''  name='value[]' value='2' placeholder=''>
      <span >Cinetic</span></div>
	  <div class='col-md-2'>
	  <input type='checkbox' class=''  name='value[]' value='3' placeholder=''>
      <span >Industrial Liaison</span></div>
	  <div  class='col-md-2'>
	  <input type='checkbox' class=''  name='value[]' value='4' placeholder=''>
      <span >NES</span></div>
      <div class='col-md-2'><input class='btn btn-default' type='submit' name='Update' value='Update'></div>
	  </div>
</div>

   </form>";
 
        
 } }
    ?>
    </body>
</html>