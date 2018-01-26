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
<title>Feedback Questions</title>
<link rel="stylesheet" type="text/css" href="../css/style.css" />
</head>

<body>
<?php include('login_header.php'); ?>
<?php include('admin_sidebar.php'); ?>
<div class="col-md-11">
<div class="container-fluid">
<div><h1 class="text-center">Update ACR Form Questions</h1></div>
<?php
if(isset($_POST['Update']))
  {//begin of if($submit).
      // Set global variables to easier names
	    $que_id = $_GET['que_id'];
		$title =stripcslashes($_POST['ques']);
		$one_word =stripcslashes($_POST['one_word']);
			  
		$result = mysqli_query($conn,"UPDATE acr_ques SET ques='$title' , one_word='$one_word' WHERE que_id=$que_id ");		
    echo "<div class=\"col-md-10\"> <div class=\"alert alert-success text-center\" role=\"alert\"><b>Question has been updated Successfully!</b><br>You'll be redirected after (2) Seconds</div></div>";
        echo "<meta http-equiv=Refresh content=2;url=acr_ques.php>";
		
	
  }//end of if($submit).


  // If the form has not been submitted, display it!
else
  {//begin of else
   $que_id = $_GET['que_id'];
    $result = mysqli_query($conn,"SELECT * FROM acr_ques WHERE que_id='$que_id' ");
        while($myrow = mysqli_fetch_assoc($result))
             {
                $title = $myrow["ques"];
				$one_word = $myrow["one_word"];

      ?>
<form method="post" action="">
<input type="hidden" name="que_id" value="<? echo $myrow['que_id']?>">
<table width="60%" border="0" cellpadding="3" cellspacing="1" align="center">
<br>
  <tr>
    <td width="92">Que.&nbsp;<?php echo $que_id;?></td>
    <td width="163">
     <textarea name="ques" style="width:400px; height:60px"><?php echo $title;?></textarea>
    </td>
  </tr>
  <tr><td><br></td></tr>
  <tr>
    <td width="92">One word</td>
    <td width="163">
     <input type="text" name="one_word" value="<?php echo $one_word;?>">
    </td>
  </tr>
  <tr><td><br></td></tr>
  <tr>
    <td>&nbsp;</td>
    <td><table border="0" width="80%">
	<tr><td> <input type="submit" name="Update" value="Update" class="button"></td><td align="right"><input type="button" name="Back" value="Back"  onclick="javascript: history.go(-1)" class="button" /></td></tr></table>
    </td>
  </tr>
</table>
</form>
    
 <?php
 	}//end of while loop
  }//end of else
?>
<p>&nbsp;</p>
    </div>
    </div>
<script language="javascript" type="text/javascript">
function isCharOnly(e)
{
	var unicode=e.charCode? e.charCode : e.keyCode
	
		if (unicode==45)
			return true;
		if (unicode>48 && unicode<57) //if not a number
			return false;
}
</script>
</body>
</html>
