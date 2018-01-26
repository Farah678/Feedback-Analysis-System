<?php
	include('session_chk.php');
	include("../includes/config_db.php");
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
<body >
<?php include('login_header.php'); ?>
<div class="col-lg-1"></div>
<div class="col-lg-10">
      <?php $sql = "SELECT * FROM feedback_form WHERE formName='ACR Form' and activate='disabled'";
$result = mysqli_query($conn,$sql) or die(mysql_error());
    if ($result->num_rows > 0) 
    { 
       echo "<div class=\"alert alert-info\" role=\"alert\"><b>Currently you are not allowed to access ACR Form</b></div>";
    }
else
{?>
       <div><h1 class="text-center">ACR Form</h1></div>
	<form action="submit_feedback_acr.php" method="POST" name="feedback_form">
      <table class="table">        
        <tr class="col-lg-12">
		<td class="col-lg-3"> Department 
       <?php
	
	  $sql_name ="SELECT distinct department.depId,department.depName FROM department,permissions 
	  WHERE department.depId IN 
	  (SELECT permId FROM permissions WHERE depId IN
	  (SELECT depId FROM employees WHERE pers_id ='".$_SESSION['login_user']."'))"; 
		echo "<select name='depId' id='department'>";
        echo "<option value=''>--Select Department--</option>";
	   $dep_name = mysqli_query($conn,$sql_name)  or die(mysql_error());
	 
           while ($row_name = $dep_name->fetch_assoc()) 
                {
                    echo "<option value=".$row_name['depId'].">".$row_name['depName']."</option>";
                }
                echo "</select>"; 
				?>
                    </td>
                    
                 <td class="col-lg-3"> Designation &nbsp;  
       <select name='desId' id="designation">
            <option value="">--Select Designation--</option>
                        </select>
            </td>
          </tr>
				 <tr class="col-lg-12">	
		
		<td class="col-lg-3"> Employee Name &nbsp;
            <select name='empId' id="employees">
               <option value="">--Select Employee Name--</option>
                        </select>
			</td>
          </tr>
		<tr width="100%">
          <td>
		  <table class="table">
		  <thead>
		  <tr>
                <th width="8%" class="rounded-company" align="center">SNo</th>			 
                 <th width="48%" class="rounded-q1" align="center">Questions</th>
                 <th width="14%" class="rounded-q4 text-center">Good</th>
                 <th width="14%" class="rounded-q4 text-center">Average</th>
                 <th width="14%" class="rounded-q4 text-center">Poor</th>
        </tr>
		  </thead>  
		  <?php
		  	
			$sql_que_2="SELECT DISTINCT one_word FROM acr_ques";
			$res_que_2=mysqli_query($conn,$sql_que_2) or die(mysql_error());
			$i=1;
			$tab_ind=7;
			while($row_que_2=mysqli_fetch_array($res_que_2))
			{
			echo "<tr><td></td><td><h3>".$row_que_2['one_word']."</h3></td></tr>";
			$sql_que="select * from acr_ques";
			$res_que=mysqli_query($conn,$sql_que) or die(mysql_error());	
				while($row_que=mysqli_fetch_array($res_que))
				{
				if($row_que['one_word']==$row_que_2['one_word'])
				{
				echo "<tr>";
				echo "<td align=\"center\">".$i."</td>";
				echo "<td>".$row_que['ques']."</td>";
				echo "<td><label class=\"radio-inline\"><input type=\"radio\" name=\"ans_$i\" value=\"9\">9</label>
                <label class=\"radio-inline\"><input type=\"radio\" name=\"ans_$i\" value=\"8\">8</label>
                <label class=\"radio-inline\"><input type=\"radio\" name=\"ans_$i\" value=\"7\">7</label>
                </td>
                <td>
                <label class=\"radio-inline\"><input type=\"radio\" name=\"ans_$i\" value=\"6\">6</label>
                <label class=\"radio-inline\"><input type=\"radio\" name=\"ans_$i\" value=\"5\">5</label>
                <label class=\"radio-inline\"><input type=\"radio\" name=\"ans_$i\" value=\"4\">4</label>
                </td>
                <td>
                <label class=\"radio-inline\"><input type=\"radio\" name=\"ans_$i\" value=\"3\">3</label>
                <label class=\"radio-inline\"><input type=\"radio\" name=\"ans_$i\" value=\"2\">2</label>
                <label class=\"radio-inline\"><input type=\"radio\" name=\"ans_$i\" value=\"1\">1</label>            </td>";
				echo "</tr>";$i++;
			}
				}
			}
              echo "<tr>";
				echo "<td align=\"center\">".$i."</td>";
				echo "<td>Was the faculty member advised to improve his performance during theperiod under report?</td>";
                echo "<td>
                        <label class=\"radio-inline\"><input type=\"radio\" name=\"ans_$i\" value=\"Yes\">Yes</label>
                        </td><td>
                        <label class=\"radio-inline\"><input id=\"showform\" type=\"radio\" name=\"ans_$i\" value=\"No\">No</label>
                        </td><td>
                        <label class=\"radio-inline\"><input id=\"showform\" type=\"radio\" name=\"ans_$i\" value=\"Not Required\">Not Required</label></td>";$tab_ind++;
                echo "</td></tr>";
    
                $i++;
                echo "<tr>";
                echo "<td align=\"center\">".$i."</td>";
                echo "<td>If yes, what was the result?</td>";
                echo"</tr>";
                
                        echo"<tr>";
                        echo "<td align=\"center\">(a)</td>";
                        echo "<td>Did he/she agree with your assessment? </td>";
                        echo "
                                <td><label class=\"radio-inline\"><input type=\"radio\" name=\"ans_$i\" value=\"Yes\">Yes</label>
                                </td><td>
                                <label class=\"radio-inline\"><input type=\"radio\" name=\"ans_$i\" value=\"No\">No</label></td>";
                        echo "</tr>";$i++;

                        echo "<tr>";
                        echo "<td align=\"center\">(b)</td>";
                        echo "<td> Did he/ she improve? </td>";
                        echo "
                                <td><label class=\"radio-inline\"><input type=\"radio\" name=\"ans_$i\" value=\"Yes\">Yes</label>
                                </td><td>
                                <label class=\"radio-inline\"><input type=\"radio\" name=\"ans_$i\" value=\"No\">No</label></td>";
                                echo "</tr>";
		  ?>	  
		  <tr>
		  <td width="6%">Remark:</td>
		  <td colspan="3"><textarea name="remark" style="width:605px; height:80px; margin-top: 30px;" onkeypress="return isCharOnly(event);" tabindex="16"></textarea></td>
		  </tr>		  
		  	<tr>
				<td colspan="2"  class="rounded-foot-left" align="center"><input class="button" type="submit" name="submit" value="Submit" tabindex="17"/>&nbsp;<input type="reset" name="reset" value="Reset" tabindex="18" class="button"/></td>
				<td align="center" class="rounded-foot-right"></td>
			</tr>			
		  </table>
		  </td>
        </tr>
         </table>
    </form>
  </div>

<?php } ?>

<script src="js/jquery-3.2.1.min.js"></script>
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
                
 /* Display Employee Name against Selected Department and Designation */             
    $('#designation').on('change',function(){
        var desId = $(this).val();
        var depId = $('#department').val();
        if(desId!=null && depId!=null){
            $.ajax({
                method:'POST',
                url:'ajax_employees.php',
                data: 'desId='+desId+'&depId='+depId,
                success:function(html){
                $('#employees').html(html);
                }
            });
        }
    });	
              });  
</script> 
      
</body>
</html>