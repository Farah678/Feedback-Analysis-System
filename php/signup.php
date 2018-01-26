<?php   
include('..\includes\config_db.php');
include('header.php');
?>
<?php
$error = '';
If(isset($_REQUEST['submit']))
{
    if($_POST['adminCategory'] == "admin")
    {
      $check_admin="select pers_id from admin where pers_id='".$_POST['pers_id']."' and depId='".$_POST['depId']."' ";
     $check_result = mysqli_query($conn,$check_admin);
        $check_rows = mysqli_num_rows($check_result);
        if ($check_rows == 1)  
        {
           $admin_query ="select pers_id from login where pers_id='".$_POST['pers_id']."' and password is null";
 $admin_result = mysqli_query($conn,$admin_query);
 $admin_rows = mysqli_num_rows($admin_result);
 if ($admin_rows == 1)
{
$admin_sql=mysqli_query($conn,"update login set password='".$_POST['password']."' where pers_id='".$_POST['pers_id']."' ");
$admin_query2 = "select pers_id from employees where pers_id='".$_POST['pers_id']."'";
$admin_result2 = mysqli_query($conn,$admin_query2);
$admin_rows2 = mysqli_num_rows($admin_result2);
if ($admin_rows2 == 1)
    { $error = "<div class=\"alert alert-warning\" role=\"alert\">This employee record already exists</div>";
        }
    else
         {
        $admin_sql2=mysqli_query($conn,"insert into employees(pers_id, emp_name, depId, desId, empStaff, empCategory) values('".$_POST['pers_id']."','".$_POST['emp_name']."', '".$_POST['depId']."', null,
         '".$_POST['empStaff']."','".$_POST['empCategory']."')");
        $admin_sql3=mysqli_query($conn,"UPDATE employees SET desId = (SELECT admin.desId FROM admin WHERE depId='".$_POST['depId']."' AND pers_id='".$_POST['pers_id']."')");
          header('location:successlogin.php');
        }
     
 }
 else  {
     $error = "<div class=\"alert alert-warning\" role=\"alert\">There is some problem in inserting Login ID.</div>";	
    }
        }
         else  {
     $error = "<div class=\"alert alert-warning\" role=\"alert\">There is some problem in inserting admin record.</div>";	
    }
    }
else If($_POST['adminCategory'] == "non-admin")
{
    $query ="select pers_id from login where pers_id='".$_POST['pers_id']."' and password is null";
 $result = mysqli_query($conn,$query);
 $rows = mysqli_num_rows($result);
 if ($rows == 1)
{
$sql=mysqli_query($conn,"update login set password='".$_POST['password']."' where pers_id='".$_POST['pers_id']."' ");
$query2 = "select pers_id from employees where pers_id='".$_POST['pers_id']."'";
$result2 = mysqli_query($conn,$query2);
$rows2 = mysqli_num_rows($result2);
if ($rows2 == 1)
    { $error = "<div class=\"alert alert-warning\" role=\"alert\">This employee record already exists</div>";
        }
    Else
         {$sql2=mysqli_query($conn,"insert into employees(pers_id, emp_name, depId, desId, empStaff, empCategory) values('".$_POST['pers_id']."','".$_POST['emp_name']."','".$_POST['depId']."','".$_POST['desId']."',
         '".$_POST['empStaff']."','".$_POST['empCategory']."')");
          header('location:successlogin.php');
        }
     
 }
 else  {
     $error = "<div class=\"alert alert-warning\" role=\"alert\">There is some problem in inserting Login ID.</div>";	
    }
}
}

?>          
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Feedback Evaluation System</title>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
     <link rel="stylesheet" type="text/css" href="../css/style.css">
    <!-- Optional Bootstrap theme -->
    <link rel="stylesheet" href="../css/bootstrap-theme.min.css">
</head>
<body>
    <div class="row">
    <div class="col-sm-2">
       </div> 
       <div class="col-sm-8">
           <div><?php echo $error; ?></div>
<form class="form-horizontal" action="" method="POST" id="signup"  autocomplete="off">
 <div class="form-group">
    <label  class="col-sm-3 control-label">Login ID:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" required="required" name="pers_id" placeholder="Pers_ID">
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-3 control-label">Name:</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" required="required" name="emp_name" placeholder="Employee name">
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-3 control-label">Password</label>
    <div class="col-sm-6">
      <input type="password" class="form-control" required="required" name="password" placeholder="">
    </div>
    </div>
    <div class="form-group">
    <label class="col-sm-3 control-label"></label>
    <div class="col-sm-9">
      <input type="radio" id="showform" required="required" name="adminCategory" value="admin" onchange="showhideForm(this.value);" />
      Admin (manager/director/president of a department)  &nbsp;
      <input type="radio" id="showform" required="required" name="adminCategory" value="non-admin" onchange="showhideForm(this.value);" />
      Non-Admin</div>
    </div>
   
    <div class="form-group" id="dep" style="display:none">
    <label class="col-sm-3 control-label">Department</label>
      <div class="col-sm-3">
       <?php
            echo "<select name='depId' id='department'>";
          echo "<option value=''>--Select Department--</option>"; 
          $sql_dep = "SELECT depId,depName FROM department";
            $res_dep = mysqli_query($conn,$sql_dep) or die(mysql_error());
            while ($row_dep = mysqli_fetch_array($res_dep)) 
                {    
                    echo "<option value='".$row_dep['depId']."'>".$row_dep['depName']."</option>";
                }
                echo "</select>"; ?> 
                </div>               
 </div>
 <div class="form-group" id="des" style="display:none">
    <label class="col-sm-3 control-label">Designation</label>
     <div class="col-sm-3">  
       <select name='desId' id="designation">
            <option value="">--Select Designation--</option>
                        </select>
                </div>
    </div>
  
  <div class="form-group" id="staff" style="display:none">
    <label class="col-sm-3 control-label">Staff</label>
    <div class="col-sm-9">
      <input type="radio" class="" required="required" name="empStaff" value="Teaching" placeholder="">
        Teaching
      <input type="radio" class="" required="required" name="empStaff" value="Non-Teaching" placeholder="">
      Non-Teaching</div>
    </div>
     <div class="form-group" id="category" style="display:none">
      <label class="col-sm-3 control-label">Working as </label>
    <div class="col-sm-9">
      <input type="radio" class="" required="required" name="empCategory" value="Regular" placeholder="">
      Regular &nbsp;
      <input type="radio" class="" required="required" name="empCategory" value="Contractual" placeholder="">
       Contractual
       </div>  
  </div>
  <div class="form-group">
    <div class="col-sm-offset-3 col-sm-6">
      <input class="btn btn-default" type="submit" name="submit" value="Create Account">
      <input class="btn btn-default" type="reset" name="" value="Reset">
    </div>
  </div>
</form>
    </div>
        </div>
<script src="../js/jquery-3.2.1.min.js"></script>
          
       <script type="text/javascript">      
function showhideForm(showform) {
    if (showform == "admin") {
        document.getElementById("dep").style.display = 'block';
        document.getElementById("staff").style.display = 'block';
        document.getElementById("category").style.display = 'block';
        document.getElementById("des").style.display = 'none';
    } 
    if (showform == "non-admin") {
        document.getElementById("des").style.display = 'block';
        document.getElementById("dep").style.display = 'block';
        document.getElementById("staff").style.display = 'block';
        document.getElementById("category").style.display = 'block';
    }
}
</script>
 <script type="text/javascript">
     /* Display Designations against Selected Department */
              $(document).ready(function(){
    $('#department').on('change',function(){
        var depId = $(this).val();
        if(depId!=null){
            $.ajax({
                method:'POST',
                url:'ajax_designation.php',
                data:'depId='+depId,
                success:function(html){
                $('#designation').html(html);
                }
            });
        }
    });	
                  });  
                
 /* Display Employee Name against Selected Department and Designation */             
              
</script> 
        </body>    
</html>
<?php 
     include("footer.php");
?>