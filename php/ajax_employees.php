<?php
//Config.php file for connecting to PHP.
include('../includes/config_db.php');
//id will be posted via Ajax script.
if(isset($_POST['desId']) && !empty($_POST['desId']))
{
$sql_emp="SELECT empId,emp_name FROM employees WHERE desId='".$_POST['desId']."' AND depId='".$_POST['depId']."'";
$res_emp= mysqli_query($conn,$sql_emp) or die(mysql_error());
echo "<option value=''>--Select Employee Name--</option>";
while($row_emp=mysqli_fetch_array($res_emp))
	{
        echo "<option value='".$row_emp['empId']."'>".$row_emp['emp_name']."</option>";
    } 
}
else{
        echo '<option value="">--Select Employee Name--</option>';
    }

?>