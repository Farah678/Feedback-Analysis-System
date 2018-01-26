<!DOCTYPE html>
<?php
include('session_chk.php');
include("../includes/config_db.php");
include('login_header.php');
include("sidebar.php");	
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
$form=$_GET['form'];
if($form==1) 
{
	if( isset($_POST['Delete']) && isset($_POST['tid']) )
	{	
$tid=$_POST['tid']; 
mysqli_query($conn,"DELETE FROM teaching WHERE tid=$tid");
	
	}
	if( isset($_POST['Update']) && isset($_POST['tid']) )
	{	
$tid=$_POST['tid'];
$tctitle=$_POST['tctitle'];
$tclass=$_POST['tclass'];
$tstudents=$_POST['tstudents'];
$tlechours=$_POST['tlechours'];

$pctitle=$_POST['pctitle'];
$pclass=$_POST['pclass'];
$pstudents=$_POST['pstudents'];
$plechours=$_POST['plechours']; 

 mysqli_query($conn,"UPDATE teaching
				SET tctitle='$tctitle',tclass='$tclass',tstudents='$tstudents',tlechours='$tlechours',
				pctitle='$pctitle',pclass='$pclass',pstudents='$pstudents',plechours='$plechours' WHERE tid=$tid");
	
	}
}?>


<?php
if($form==2)
{
	if( isset($_POST['Update']) && isset($_POST['eid']) )
	{	
$eid=$_POST['eid'];
$ectitle=$_POST['ectitle'];
$eclass=$_POST['eclass'];
$estudents=$_POST['estudents'];
$edate=$_POST['edate'];
$esubmission=$_POST['esubmission'];	
mysqli_query($conn,"UPDATE examinations SET ectitle='$ectitle',eclass='$eclass',estudents='$estudents',edate='$edate'
			,esubmission='$esubmission' WHERE eid=$eid");
	
	}
		if( isset($_POST['Delete']) && isset($_POST['eid']))
	{	
$eid=$_POST['eid']; 
 mysqli_query($conn,"DELETE FROM examinations WHERE eid=$eid");
	
	}
}
?>
<?php
if($form==3)
{
if( isset($_POST['Update']) && isset($_POST['rid']) )
{
	$rid=$_POST['rid'];
$research1=$_POST['research1'];
$research2=$_POST['research2'];
	mysqli_query($conn,"UPDATE research SET research1='$research1',research2='$research2' WHERE rid=$rid"); 
}
if( isset($_POST['Delete']) && isset($_POST['rid']))
	{	
	$rid=$_POST['rid'];
 mysqli_query($conn,"DELETE FROM research WHERE rid=$rid");
	
	}
}
?>

<?php
if($form==4)
{
if( isset($_POST['Update']) && isset($_POST['pid']) )
{
$pid=$_POST['pid'];
$ptitle=$_POST['ptitle'];
$pjournals=$_POST['pjournals'];
$pdate=$_POST['pdate'];
$pvolume=$_POST['pvolume'];
	mysqli_query($conn,"UPDATE publications SET ptitle='$ptitle',pjournals='$pjournals',pdate='$pdate',pvolume='$pvolume'
							WHERE pid=$pid");
}
if( isset($_POST['Delete']) && isset($_POST['pid']))
	{	
	$pid=$_POST['pid'];
 mysqli_query($conn,"DELETE FROM publications WHERE pid=$pid");
	
	}
}
?>

<?php
if($form==5)
{
if( isset($_POST['Update']) && isset($_POST['aid']) )
{
$aid=$_POST['aid'];
$atitle=$_POST['atitle'];
$ajournals=$_POST['ajournals'];
$adate=$_POST['adate'];
$avolume=$_POST['avolume']; 
	mysqli_query($conn,"UPDATE administrative SET atitle='$atitle',ajournals='$ajournals',adate='$adate',avolume='$avolume' 
							WHERE aid=$aid");
}
if( isset($_POST['Delete']) && isset($_POST['aid']))
	{	
$aid=$_POST['aid'];
 mysqli_query($conn,"DELETE FROM administrative WHERE aid=$aid");
	
	}
}
?>


<?php
if($form==6)
{
if( isset($_POST['Update']) && isset($_POST['cid']) )
{
$cid=$_POST['cid'];
$cname=$_POST['cname'];
$assignments=$_POST['assignments'];	
mysqli_query($conn,"UPDATE committee SET cname='$cname',assignments='$assignments' WHERE cid=$cid ");
}
if( isset($_POST['Delete']) && isset($_POST['cid']))
	{	
$cid=$_POST['cid'];
 mysqli_query($conn,"DELETE FROM committee WHERE cid=$cid");
	
	}
}
?>

<?php
if($form==7)
{
if( isset($_POST['Update']) && isset($_POST['trid']) )
{
$trid=$_POST['trid'];
$education=$_POST['education'];
$meetings=$_POST['meetings'];
$service=$_POST['service'];	
mysqli_query($conn,"UPDATE training SET education='$education',meetings='$meetings',service='$service' WHERE trid=$trid ");
}
if( isset($_POST['Delete']) && isset($_POST['trid']))
	{	
$trid=$_POST['trid'];
 mysqli_query($conn,"DELETE FROM training WHERE trid=$trid");
	
	}
}
?>
<body>
	<div class="col-lg-10">
  <h1>Activity Report </h1>
  <br>
<div class="btn-group btn-group-justified active " role="group" aria-label="..." >
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
<br>  
<?php 
if ($form==1)
{
$sql = "SELECT * FROM teaching where pers_id ='".$_SESSION['login_user']."'";
$result = mysqli_query($conn,$sql) or die(mysql_error()); 
echo 
"<div class='panel panel-default' id='Teaching'>
<div class='panel-heading'>
<div class='panel-title'><h4> Teaching </h4>
</div></div>
<div class='panel-body'>
<table class='table table-bordered text-center'>
<tr class='active'>
<th colspan='4' class='text-center'>Theory</th>
<th colspan='4' class='text-center'>Practical</th>
<th colspan='2' rowspan='2' class='text-center'><br> Edit <br> Options </th>
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
if ($result->num_rows > 0) { 
while($row = mysqli_fetch_array($result))
  {echo"<form method='POST'> "; 
  echo"<div class='form-horizontal' method='GET' action='update.php?tid=".$row['tid']."?>'>";
  echo" <div class='form-group'>";
  echo" <input name='tid' type='hidden' name='tid' value='".$row['tid']."'>";
    echo" <input name='form' type='hidden' value='1'>";
  echo "<tr class='active'>";
  echo "<td><input type='text' class='form-control' name='tctitle' value='".$row['tctitle']."'></td>";
  echo "<td><input type='text' class='form-control' name='tclass' value='".$row['tclass']."'</td>";
  echo "<td><input type='text' class='form-control' name='tstudents' value='".$row['tstudents']."'</td>";
  echo "<td><input type='text' class='form-control' name='tlechours' value='".$row['tlechours']."'</td>";
  echo "<td><input type='text' class='form-control' name='pctitle' value='".$row['pctitle']."'</td>";
  echo "<td><input type='text' class='form-control' name='pclass' value='".$row['pclass']."'</td>";
  echo "<td><input type='text' class='form-control' name='pstudents' value='".$row['pstudents']."'</td>";
  echo "<td><input type='text' class='form-control' name='plechours' value='".$row['plechours']."'</td>";
  echo "<td><input class='btn btn-default' type='submit' value='Update' name='Update'> </td>";
  echo "<td><input class='btn btn-default' type='submit' value='Delete' name='Delete'> </td>";
  echo "</tr>
   </div>
		</div>
</form>";
  } 
 echo"
</div>
</div>";}
echo "</table>";
}
?>
<?php
if($form==2)
{
	
$sql = "SELECT * FROM examinations where pers_id ='".$_SESSION['login_user']."'";
$result = mysqli_query($conn,$sql) or die(mysql_error()); 
echo"
<div class='panel panel-default' id='Examinations'>
<div class='panel-heading'>
<div class='panel-title'><h4> Examinations </h4>
</div></div>
<div class='panel-body'>
<table class='table table-bordered text-center'>
<tr class='active'>
<th class='text-center'>Title</th>
<th class='text-center'>Class</th>
<th class='text-center'>No. of students</th>
<th class='text-center'>Date</th>
<th class='text-center'>Submission</th>
<th colspan='2' class='text-center'> Edit Options </th>
</tr>";

if ($result->num_rows > 0) { 
while($row = mysqli_fetch_array($result))
  {echo"<form method='POST'> "; 
  echo"<div class='form-horizontal' method='GET' action='update.php?eid=".$row['eid']."?>'>";
  echo" <div class='form-group'>";
  echo" <input type='hidden' name='eid' value='".$row['eid']."'>";
  echo" <input name='form' type='hidden' value='2'>";
  echo "<tr class='active'>";
  echo "<td><input type='text' class='form-control' name='ectitle' value='".$row['ectitle']."'></td>";
  echo "<td><input type='text' class='form-control' name='eclass' value='".$row['eclass']."'</td>";
  echo "<td><input type='text' class='form-control' name='estudents' value='".$row['estudents']."'</td>";
  echo "<td><input type='text' class='form-control' name='edate' value='".$row['edate']."'</td>";
  echo "<td><input type='text' class='form-control' name='esubmission' value='".$row['esubmission']."'</td>";
  echo "<td><input class='btn btn-default ' type='submit' value='Update' name='Update'> </td>";
  echo "<td><input class='btn btn-default ' type='submit' value='Delete' name='Delete'> </td>";
  echo "</tr>";
  echo "</div>
  </div>
		</div>
</form>";
  } 
 echo"
</div>
</div>";}
    echo "</table>";		
}
?>

<?php
if($form==3)
{
	
$sql = "SELECT * FROM research where pers_id ='".$_SESSION['login_user']."'";
$result = mysqli_query($conn,$sql) or die(mysql_error()); 
echo"
<div class='panel panel-default' id='Research'>
<div class='panel-heading'>
<div class='panel-title'><h4> Research </h4>
</div></div>
<div class='panel-body'>
<table class='table table-bordered text-center'>
<tr class='active'>
<th class='text-center'>Research in Conjunction with Masters / Doctoral Programmes:</th>
<th class='text-center'>Other Research Activities:</th>
<th colspan='2' class='text-center'> Edit Options </th>
</tr>";

if ($result->num_rows > 0) { 
while($row = mysqli_fetch_array($result))
  {echo"<form method='POST'> "; 
  echo"<div class='form-horizontal' method='GET' action='update.php?rid=".$row['rid']."?>'>";
  echo" <div class='form-group'>";
  echo" <input type='hidden' name='rid' value='".$row['rid']."'>";
  echo" <input name='form' type='hidden' value='3'>";
  echo "<tr class='active'>";
  echo "<td><input type='text' class='form-control' name='research1' value='".$row['research1']."'></td>";
  echo "<td><input type='text' class='form-control' name='research2' value='".$row['research2']."'</td>";
  echo "<td><input class='btn btn-default ' type='submit' value='Update' name='Update'> </td>";
  echo "<td><input class='btn btn-default ' type='submit' value='Delete' name='Delete'> </td>";
  echo "</tr>";
  echo "</div>
  </div>
		</div>
</form>";
  } 
 }echo "</table>";
echo"
</div>
</div>";}
?>

<?php
if($form==4)
{
	
$sql = "SELECT * FROM publications where pers_id ='".$_SESSION['login_user']."'";
$result = mysqli_query($conn,$sql) or die(mysql_error()); 
echo"
<div class='panel panel-default' id='publications'>
<div class='panel-heading'>
<div class='panel-title'><h4> Publications </h4>
</div></div>
<div class='panel-body'>
<table class='table table-bordered text-center'>
<tr class='active'>
<th class='text-center'>Title</th>
<th class='text-center'>Journals / Conferences</th>
<th class='text-center'>Date</th>
<th class='text-center'>Volume</th>
<th colspan='2' class='text-center'> Edit Options </th>
</tr>";

if ($result->num_rows > 0) { 
while($row = mysqli_fetch_array($result))
  {echo"<form method='POST'> "; 
  echo"<div class='form-horizontal' method='GET' action='update.php?pid=".$row['pid']."?>'>";
  echo" <div class='form-group'>";
  echo" <input type='hidden' name='pid' value='".$row['pid']."'>";
  echo" <input name='form' type='hidden' value='4'>";
  echo "<tr class='active'>";
  echo "<td><input type='text' class='form-control' name='ptitle' value='".$row['ptitle']."'></td>";
  echo "<td><input type='text' class='form-control' name='pjournals' value='".$row['pjournals']."'</td>";
  echo "<td><input type='text' class='form-control' name='pdate' value='".$row['pdate']."'</td>";
  echo "<td><input type='text' class='form-control' name='pvolume' value='".$row['pvolume']."'</td>";
  echo "<td><input class='btn btn-default ' type='submit' value='Update' name='Update'> </td>";
  echo "<td><input class='btn btn-default ' type='submit' value='Delete' name='Delete'> </td>";
  echo "</tr>";
  echo "</div>
  </div>
		</div>
</form>";
  } 
 }echo "</table>";
echo"
</div>
</div>";}
?>

<?php
if($form==5)
{
	
$sql = "SELECT * FROM administrative where pers_id ='".$_SESSION['login_user']."'";
$result = mysqli_query($conn,$sql) or die(mysql_error()); 
echo"
<div class='panel panel-default' id='administrative'>
<div class='panel-heading'>
<div class='panel-title'><h4> Administrative </h4>
</div></div>
<div class='panel-body'>
<table class='table table-bordered text-center'>
<tr class='active'>
<th class='text-center'>Title</th>
<th class='text-center'>Journals / Conferences</th>
<th class='text-center'>Date</th>
<th class='text-center'>Volume</th>
<th colspan='2' class='text-center'> Edit Options </th>
</tr>";

if ($result->num_rows > 0) { 
while($row = mysqli_fetch_array($result))
  {echo"<form method='POST'> "; 
  echo"<div class='form-horizontal' method='GET' action='update.php?aid=".$row['aid']."?>'>";
  echo" <div class='form-group'>";
  echo" <input type='hidden' name='aid' value='".$row['aid']."'>";
  echo" <input name='form' type='hidden' value='5'>";
  echo "<tr class='active'>";
  echo "<td><input type='text' class='form-control' name='atitle' value='".$row['atitle']."'></td>";
  echo "<td><input type='text' class='form-control' name='ajournals' value='".$row['ajournals']."'</td>";
  echo "<td><input type='text' class='form-control' name='adate' value='".$row['adate']."'</td>";
  echo "<td><input type='text' class='form-control' name='avolume' value='".$row['avolume']."'</td>";
  echo "<td><input class='btn btn-default ' type='submit' value='Update' name='Update'> </td>";
  echo "<td><input class='btn btn-default ' type='submit' value='Delete' name='Delete'> </td>";
  echo "</tr>";
  echo "</div>
  </div>
		</div>
</form>";
  } 
 }echo "</table>";
echo"
</div>
</div>";}
?>

<?php
if($form==7)
{
	
$sql = "SELECT * FROM training where pers_id ='".$_SESSION['login_user']."'";
$result = mysqli_query($conn,$sql) or die(mysql_error()); 
echo"
<div class='panel panel-default' id='training'>
<div class='panel-heading'>
<div class='panel-title'><h4> Training </h4>
</div></div>
<div class='panel-body'>
<table class='table table-bordered text-center'>
<tr class='active'>
<th class='text-center'>Higher Education</th>
<th class='text-center'>Professional / Scientific Meetings Attended:</th>
<th class='text-center'>Significant Community and Professional Service or Academic Distinction</th>
<th colspan='2' class='text-center'> Edit Options </th>
</tr>";

if ($result->num_rows > 0) { 
while($row = mysqli_fetch_array($result))
  {echo"<form method='POST'> "; 
  echo"<div class='form-horizontal' method='GET' action='update.php?trid=".$row['trid']."'>";
  echo" <div class='form-group'>";
  echo" <input type='hidden' name='trid' value='".$row['trid']."'>";
  echo" <input name='form' type='hidden' value='7'>";
  echo "<tr class='active'>";
  echo "<td><input type='text' class='form-control' name='education' value='".$row['education']."'></td>";
  echo "<td><input type='text' class='form-control' name='meetings' value='".$row['meetings']."'</td>";
  echo "<td><input type='text' class='form-control' name='service' value='".$row['service']."'</td>";
  echo "<td><input class='btn btn-default ' type='submit' value='Update' name='Update'> </td>";
  echo "<td><input class='btn btn-default ' type='submit' value='Delete' name='Delete'> </td>";
  echo "</tr>";
  echo "</div>
  </div>
		</div>
</form>";
  } 
 }echo "</table>";echo"
</div>
</div>";
}

?>

<?php
if($form==6)
{
	
$sql = "SELECT * FROM committee where pers_id ='".$_SESSION['login_user']."'";
$result = mysqli_query($conn,$sql) or die(mysql_error()); 
echo"
<div class='panel panel-default' id='committee'>
<div class='panel-heading'>
<div class='panel-title'><h4> Committee Work </h4>
</div></div>
<div class='panel-body'>
<table class='table table-bordered text-center'>
<tr class='active'>
<th class='text-center'>Name of Committee</th>
<th class='text-center'>Assignments</th>
<th colspan='2' class='text-center'> Edit Options </th>
</tr>";
    
if ($result->num_rows > 0) { 
while($row = mysqli_fetch_array($result))
  {echo"<form method='POST'> "; 
  echo"<div class='form-horizontal' method='GET' action='update.php?cid=".$row['cid']."'>";
  echo" <div class='form-group'>";
  echo" <input type='hidden' name='cid' value='".$row['cid']."'>";
  echo" <input name='form' type='hidden' value='6'>";
  echo "<tr class='active'>";
  echo "<td><input type='text' class='form-control' name='cname' value='".$row['cname']."'></td>";
  echo "<td><input type='text' class='form-control' name='assignments' value='".$row['assignments']."'</td>";
  echo "<td><input class='btn btn-default ' type='submit' value='Update' name='Update'> </td>";
  echo "<td><input class='btn btn-default ' type='submit' value='Delete' name='Delete'> </td>";
  echo "</tr>
   </div>
     </div>
		</div>
</form>";
} 
 }echo "</table>";
    echo"
</div>
</div>";
}
?>
    </table>
    </div>
        </div>
</div>

<script src="../js/jquery-2.2.4.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>
