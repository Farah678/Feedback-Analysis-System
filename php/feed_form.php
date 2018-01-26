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
<div class="col-md-12">
<div class="text-center">
 <h1>Feedback Form</h1>
 <?php
    $success = '';
    if(isset($_POST['Update']))
    {
        $formName=$_POST['formName'];
        $activate=$_POST['activate'];
        mysqli_query($conn,"UPDATE feedback_form SET activate='$activate' WHERE formName='$formName'");
        $success = "<div class=\"alert alert-success\" role=\"alert\">$formName is $activate</div>";
        echo "<meta http-equiv=Refresh content=2;url=feed_form.php>";

    }
    $sql = "SELECT * FROM feedback_form";
$result = mysqli_query($conn,$sql) or die(mysql_error());
    if ($result->num_rows > 0) 
    { 
while($row = mysqli_fetch_array($result))
{
 echo "<table>
 <form method='POST' action=''>
  <tr><div class='form-group'>";
    echo "<td width='30%'><label><input type='hidden' name='formName' value='".$row['formName']."'><h3>".$row['formName']."</h3></label></td>";
    echo "<td width='10%'><input type='radio' class='' required='required' name='activate' value='enabled' placeholder=''>
        <span>Enable</span></td>
      <td width='10%'><input type='radio' class='' required='required' name='activate' value='disabled' placeholder=''>
      <span class=''>Disable</span></td>
      <td width='10%'><input class='btn btn-default' type='submit' name='Update' value='Update'></td></div></tr>
   </form>
   </table>";
}  
        echo "<div class=col-md-3></div><div class=col-md-4> $success </div>";
    }
    ?>
    </div>
    </div> 
    </body>
</html>