<?php
include('session_chk.php');
include("../includes/config_db.php");

if(isset($_POST['submit']))
{
	$sql="select * from acr_master where pers_id ='".$_SESSION['login_user']."' and empId='".$_POST['empId']."'";
	$res=mysqli_query($conn,$sql) or die(mysql_error());
	if(mysqli_num_rows($res)>=1)
	{
		echo "<p align=\"center\">Feedback is already submited by this '".$_POST['empId']."' employee ID for this subject.<br>You'll be redirected to Home Page after (3) Seconds</p>";
		echo "<meta http-equiv=Refresh content=3;url=acr.php>";
		exit;
	}
	else
	{
        if($_POST['ans_26']=="No" || $_POST['ans_26']=="Not Required")
        {
        $_POST['ans_27'] = "null";
        $_POST['ans_28'] = "null";
    }
$sql_insert="INSERT INTO acr_master(ans_1, ans_2, ans_3, ans_4, ans_5, ans_6, ans_7, ans_8, ans_9, ans_10, ans_11, ans_12, ans_13, ans_14, ans_15, ans_16, ans_17, ans_18, ans_19, ans_20, ans_21, ans_22, ans_23, ans_24, ans_25, ans_26, ans_27, ans_28, remark, feed_date, pers_id, depId, desId, empId) VALUES('".$_POST['ans_1']."','".$_POST['ans_2']."','".$_POST['ans_3']."','".$_POST['ans_4']."','".$_POST['ans_5']."','".$_POST['ans_6']."','".$_POST['ans_7']."','".$_POST['ans_8']."','".$_POST['ans_9']."','".$_POST['ans_10']."','".$_POST['ans_11']."','".$_POST['ans_12']."','".$_POST['ans_13']."','".$_POST['ans_14']."','".$_POST['ans_15']."','".$_POST['ans_16']."','".$_POST['ans_17']."','".$_POST['ans_18']."','".$_POST['ans_19']."','".$_POST['ans_20']."','".$_POST['ans_21']."','".$_POST['ans_22']."','".$_POST['ans_23']."','".$_POST['ans_24']."','".$_POST['ans_25']."','".$_POST['ans_26']."','".$_POST['ans_27']."','".$_POST['ans_28']."','".$_POST['remark']."','".date('Y-m-d')."', '".$_SESSION['login_user']."','".$_POST['depId']."','".$_POST['desId']."','".$_POST['empId']."')";
		mysqli_query($conn,$sql_insert) or die(mysql_error());
		echo "<p align=\"center\">Feedback is submited successfully!<br>You'll be redirected to Home Page after (3) Seconds</p>";
        echo "<meta http-equiv=Refresh content=3;url=acr.php>";
		exit;
	}
}


?>