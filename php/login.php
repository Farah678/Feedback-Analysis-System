<?php
session_start(); // Starting Session
$error=''; // Variable To Store Error Message
if (isset($_POST['submit'])) {
if (empty($_POST['pers_id']) || empty($_POST['password'])) {
$error = "<div class=\"alert alert-warning\" role=\"alert\">Please fill the empty field.</div>";
}
else
{
include("..\includes\config_db.php");
// SQL query to fetch information of registerd users and finds user match.
$query = "select * from login where pers_id='".$_POST['pers_id']."'
                    and password='".$_POST['password']."'";
$result = mysqli_query($conn,$query);
$count_rows = mysqli_num_rows($result);
if ($count_rows == 1) {
$loginId=$_POST['pers_id'];
$_SESSION['login_user']=$loginId; // Initializing Session
while($rows=mysqli_fetch_array($result)) 
{
if($rows['category']=='employee')
{
header("location: activityreport.php");
}// Redirecting To Other Page
if($rows['category']=='admin')
{
header("location: feed_form.php");
}// Redirecting To Other Page
if($rows['category']=='chairman')
{
header("location: acr.php");
}// Redirecting To Other Page
}
}
else {
$error = "<div class=\"alert alert-warning\" role=\"alert\">Login ID or Password is invalid</div>";
}
}
}
?>