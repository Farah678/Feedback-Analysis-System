<!DOCTYPE html>
<?php
include('session_chk.php');
include("../includes/config_db.php");
include('login_header.php');
include("admin_sidebar.php");	
?>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Feedback Evaluation System</title>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
    <!-- Optional Bootstrap theme -->
    <link rel="stylesheet" href="../css/bootstrap-theme.min.css">
</head>	
	<?php
	
	if( isset($_POST['Add']))
	{	
		mysqli_query($conn,"INSERT INTO login(pers_id,category) VALUES('".$_POST['pers_id']."','".$_POST['category']."') ");
	} 
?>
<?php
	if( isset($_POST['Remove']))
	{	
		mysqli_query($conn,"DELETE FROM login WHERE pers_id ='".$_POST['pers_id']."' ");
	} 
?>

<body>
	<div class="col-lg-10">
 
<?php 
echo 
"<div class='panel panel-default'>
<div class='panel-heading'>
<div class='panel-title'><h4> Faculty </h4>
</div></div>
<div class='panel-body'>
";?>
<form  class='form-inline' method="POST" action = '<?php $_PHP_SELF ?>' >
  <p class="lead ">Add New Employee</p>
<?php
echo'
  <div class="form-group">
 
    <label class="">  Pers.Id  </label>
    <input type="text" class="form-control" name="pers_id" required>
    <label class=" "> Category (admin/chairman/employee) </label>

    <input type="text" class="form-control" name="category" required>

	<input class="btn btn-default " type="submit" name="Add" value="Add"> </div>
    </form>
	<hr>
  <p class="lead">Employee List</p>';
$serial=1;
$sql = "SELECT * FROM login WHERE 1";
$result = mysqli_query($conn,$sql) or die(mysql_error()); 

echo"
<table class='table table-bordered text-center'>
<tr class='active'>
<th class='text-center'>Serial No.</th>
<th class='text-center'>Pers. Id</th>
<th class='text-center'>Category</th>
<th class='text-center'> Edit Options </th>
</tr>";
if ($result->num_rows > 0) { 
while($row = mysqli_fetch_array($result))
  {?>
 <form  class='form-horizontal' method='POST' action = '<?php $_PHP_SELF ?>'  > 
  <?php
  echo" <div class='form-group'>";
  echo" <input type='hidden' name='pers_id'  value='".$row['pers_id']."'>";
  echo "<tr class='active'>";
  echo "<td> $serial </td>";
  echo "<td>".$row['pers_id']."</td>";
  echo "<td>".$row['category']."</td>";
  echo "<td><input class='btn btn-default' type='submit' value='Remove' name='Remove'> </td>";
  echo "</tr>
   </div>
</form>";
$serial=$serial+1;
  } }
?>

    </table>
</div>
</div>

    </div>
</div>

<script src="../js/jquery-2.2.4.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>
