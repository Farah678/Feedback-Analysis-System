<?php
include('session_chk.php');
include("../includes/config_db.php");

if(isset($_POST['submit']))
{   $emp_info="select pers_id, empId from feedback_master where pers_id='".$_SESSION['login_user']."' and                        empId='".$_POST['empId']."'";
	$res_emp_info=mysqli_query($conn,$emp_info) or die(mysql_error());
	if(mysqli_num_rows($res_emp_info) == 1)
	{
		echo "<p align=\"center\">Feedback is already submited by this '".$_POST['pers_id']."' employee for this '".$_POST['empId']."' employee.<br>You'll be redirected to Home Page after (3) Seconds</p>";
		echo "<meta http-equiv=Refresh content=3;url=peerEv.php>";
		exit;
	}
	else
	{
		
		$sql_insert="insert into feedback_master (ans_1, ans_2, ans_3, ans_4, ans_5, ans_6, ans_7, ans_8, ans_9, ans_10, ans_11, ans_12, remark, feed_date, pers_id, depId, desId, empId) values ('".$_POST['ans_1']."','".$_POST['ans_2']."','".$_POST['ans_3']."','".$_POST['ans_4']."','".$_POST['ans_5']."','".$_POST['ans_6']."','".$_POST['ans_7']."','".$_POST['ans_8']."','".$_POST['ans_9']."','".$_POST['ans_10']."','".$_POST['ans_11']."','".$_POST['ans_12']."','".$_POST['remark']."','".date('Y-m-d')."', '".$_SESSION['login_user']."','".$_POST['depId']."','".$_POST['desId']."','".$_POST['empId']."')";//,strtotime($_POST['date'])
		mysqli_query($conn,$sql_insert) or die(mysql_error());
		echo "<p align=\"center\">Feedback is submited successfully!<br>You'll be redirected to Home Page after (3) Seconds</p>";
        echo "<meta http-equiv=Refresh content=3;url=peerEva.php>";
		exit;
	}
}


?>