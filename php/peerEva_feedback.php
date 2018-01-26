<?php
	include('session_chk.php');
	include("../includes/config_db.php");
?>
<?php
if(isset($_POST['submit']) || isset($_POST['xls_file']))
{   $query_string='';
	if(isset($_POST['depId']))
	{
		$query_string.=" depId='".$_POST['depId']."' ";
	}
    if(isset($_POST['desId']))
	{
		$query_string.=" desId='".$_POST['desId']."' ";
	}
    if(isset($_POST['empId']))
	{
		$query_string.=" empId='".$_POST['empId']."' ";
	}
    $slq_search="select * from feedback_master where depId='".$_POST['depId']."' and desId='".$_POST['desId']."' and empId='".$_POST['empId']."' ";	
	$res_search=mysqli_query($conn,$slq_search) or die(mysql_error());
 if($_POST['query_set']=='1')
	{
		$file_name=write_xls($slq_search);				
	}
}
else
{
	$slq_search="select * from feedback_master order by feed_date asc";
	$res_search=mysqli_query($conn,$slq_search) or die(mysql_error());
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
<body >
 <?php include('login_header.php'); ?>
    <div class="col-lg-2"><?php include('admin_sidebar.php'); ?></div> 
       <div class="container">
           <div class="col-lg-2"></div>
<div class="col-lg-8">
       <div><h1 class="text-center">Feedback Form</h1></div>
	<form action="<?php echo $_SERVER['PHP_SELF']?>" method="POST" name="feedback_form">
      <table class="table">        
        <tr class="col-lg-12">
		<td class="col-lg-3"> Department 
       <?php
	
	  $sql_name ="SELECT * FROM department"; 
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
          <tr>
				<td colspan="8"  class=""><input class="button" type="submit" name="submit" value="Submit" tabindex="17"/>&nbsp;<input type="reset" name="reset" value="Reset" tabindex="18" class="button"/>
			
			<script language="javascript" type="text/javascript">
				function call_overall_graph(encoded_sql_query)
				{	
					url = "graph_img_n_data.php?str=" + encoded_sql_query;
					var win=window.open(url, '_blank');
					win.focus();
				}
							
			  </script>			 			  	
			  
			  <?php 
			  if(isset($_POST['submit'])) 
			  { 
			  	echo '<br/> <br/>';		  	
				$encoded_sql_query = base64_encode($slq_search); 
		  		$encoded_sql_search_para = base64_encode($query_string);		  
			  ?>
			  	
				
			  <input class="button" type="submit" id="id_overall_graph_button" name="overall_graph_button" value="Generate Report" onclick="javascript:call_overall_graph('<?php echo $encoded_sql_query?>');"/>				  		  
			  <?php } ?>
			  <input type="hidden" name="query" value="<?php echo $slq_search?>" />
			<input type="hidden" name="query_set" value="" />
			</td>
			</tr>
         </table>
    </form>
  </div>
</div>
<script src="../js/jquery-3.2.1.min.js"></script>
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