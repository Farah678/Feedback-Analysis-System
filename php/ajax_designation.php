<?php
//Config.php file for connecting to PHP.
include('../includes/config_db.php');
//id will be posted via Ajax script.
if(isset($_POST['depId']) && !empty($_POST['depId']))
{
$sql_des="SELECT designation.desId,designation.desName FROM designation,faculty WHERE designation.desId=faculty.desId AND faculty.depId='".$_POST['depId']."'";
$res_des= mysqli_query($conn,$sql_des) or die(mysql_error());
echo '<option value="">--Select Designation--</option>';
while($row_des=mysqli_fetch_array($res_des))
	{
        echo "<option value='".$row_des['desId']."'>".$row_des['desName']."</option>";
    }
} 
else{
        echo '<option value="">--Select Designation--</option>';
    }

?>