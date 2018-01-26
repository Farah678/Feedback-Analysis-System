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
<title>Feedbak Questions</title>
<link rel="stylesheet" type="text/css" href="../css/style.css" />
</head>

<body>
<?php include('login_header.php'); ?>

<?php include('admin_sidebar.php'); ?>
<div class="col-md-11">
<div class="container-fluid">
<div><h1 class="text-center">Peer Evaluation Form Questions</h1></div>

<table width="100%" class="table">
<thead>
<tr>
	<th width="8%" scope="col" class="rounded-company" align="center">Que Id</th>
	<th width="65%" scope="col" class="rounded-q1" align="center">Question</th>
	<th width="20%" scope="col" class="rounded-q2" align="center">One_word</th>
	<th width="10%" scope="col" class="rounded-q4" align="center">&nbsp;</th>
</tr>
</thead>

<?php
// load the configuration file.

        //load all ques from the database and then OREDER them by quesid
        //you will notice that newlly added ques will appeare first.
        $result = mysqli_query($conn,"SELECT * FROM feedback_ques_master ORDER BY q_id");
        //lets make a loop and get all news from the database
		$i=1;
        while($myrow = mysqli_fetch_array($result))
             {//begin of loop
               //now print the results:
			   echo '<tr>';
               echo "<td align=center>".$i."</td>";$i++;
			   echo "<td align=left>".$myrow['ques']."</td>";
			   echo "<td align=left>".$myrow['one_word']."</td>";
               echo "<td align=center>"."<a href=\"edit_feed_ques.php?q_id=$myrow[q_id]\" class=\"btn btn-default \">edit</a> "."</td>";
               echo '</tr>';  
             }//end of loop
?>
</table>
   </div>
    </div>
</body>
</html>
