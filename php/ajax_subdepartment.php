<?php
//Config.php file for connecting to PHP.
include('includes/config_db.php');
//id will be posted via Ajax script.
if(isset($_POST['depId']) && !empty($_POST['depId']))
{
$sql_sub="select * from sub_department where depId='".$_POST['depId']."'";
$res_sub= mysqli_query($conn,$sql_sub) or die(mysql_error());
while($row_sub=mysqli_fetch_array($res_sub))
	{
        echo "<option value='".$row_sub['subdepId']."'>".$row_sub['subdepName']."</option>";
    }
}
else{
        echo '<option value="">Select Department First</option>';
    }


?>
