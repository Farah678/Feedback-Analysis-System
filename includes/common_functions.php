<?php
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';//password

$conn = mysqli_connect($dbhost, $dbuser, $dbpass) or die ('Error connecting to mysql');

$dbname = 'feedback';
mysqli_select_db($conn,$dbname) or die("database not available");


function que_one_word($id, $full_question=false)
{
	$sel_s="select * from  feedback_ques_master where q_id=".$id;
	$res=mysqli_query($GLOBALS['conn'],$sel_s) or die(mysql_error());
	$s_name=mysqli_fetch_array($res);
	if ($full_question)
	{
		return $s_name['ques'];
	}
	else{
		return $s_name['one_word'];
	}
}


?>