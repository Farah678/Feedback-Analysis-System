<?php 

      include('session_chk.php');
	  include("../includes/config_db.php");
?>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Average Graph Report</title>
    <script language="javascript" type="text/javascript" src="../js/jquery.js"></script>	
    <script language="javascript" type="text/javascript" src="../js/jquery.flot.js"></script>
	<link rel="stylesheet" type="text/css" href="../css/style.css" />
</head>

<body>
<table width="67%" align="center" border="0" cellpadding="0" cellspacing="1">
<tr>
<td width="14%" bgcolor="#FFFFFF" valign="top">
</td>

<td width="86%" align="center" valign="top">
<table align="center" width="100%">
<tr><td colspan="3">

<?php
	  error_reporting( error_reporting() & ~E_NOTICE );
      $str= base64_decode( $_GET['str'] ); 
	  //echo $str;
	  function cal_avg($total_ans, $r_id)
	  {
		$percent = ($total_ans/($r_id));
	    return number_format((float)$percent, 2, '.', '');
	  }

	  if($str=='select * from feedback_master order by feed_date asc')
	  {
	  	echo "Input is not correct";
		exit;
	  }
	  else
	  {         
	  	        $res = mysqli_query($conn,$str) or die(mysql_error('sql error'));
			    $remark_count=0;	
				
				if(mysqli_num_rows($res)==0)
				{
					echo "No Record Found!";
					exit;
				}
				else
				{	
					$total_ans_1=0;
					$total_ans_2=0;
					$total_ans_3=0;
					$total_ans_4=0;
					$total_ans_5=0;
					$total_ans_6=0;
					$total_ans_7=0;
					$total_ans_8=0;
					$total_ans_9=0;
					$total_ans_10=0;
					$total_ans_11=0;
					$total_ans_12=0;
					$i=0;
					
					while($myrow=mysqli_fetch_array($res))
					{	  
				        $total_ans_1 = $total_ans_1 + $myrow['ans_1'];
				        $total_ans_2 = $total_ans_2 + $myrow['ans_2'];
				        $total_ans_3 = $total_ans_3 + $myrow['ans_3'];
				        $total_ans_4 = $total_ans_4 + $myrow['ans_4'];
				        $total_ans_5 = $total_ans_5 + $myrow['ans_5'];
				        $total_ans_6 = $total_ans_6 + $myrow['ans_6'];
				        $total_ans_7 = $total_ans_7 + $myrow['ans_7'];
				        $total_ans_8 = $total_ans_8 + $myrow['ans_8'];
				        $total_ans_9 = $total_ans_9 + $myrow['ans_9'];
				        $total_ans_10 = $total_ans_10 + $myrow['ans_10'];
				        $total_ans_11 = $total_ans_11 + $myrow['ans_11'];
                        $total_ans_12 = $total_ans_12 + $myrow['ans_12'];
						  if($i == 0)
						  {
						  		$depId=mysqli_query($conn,"SELECT depName FROM department WHERE depId='".$myrow['depId']."'");
                                $depName=mysqli_fetch_assoc($depId);
								$desId=mysqli_query($conn,"SELECT desName FROM designation WHERE desId='".$myrow['desId']."'");
                                $desName=mysqli_fetch_assoc($desId);
                                $empId=mysqli_query($conn,"SELECT emp_name FROM employees WHERE empId='".$myrow['empId']."'");
                                $empName=mysqli_fetch_assoc($empId);
						  }
						  
						  $i++;
						  						  
						  
						  if($myrow['remark']!=NULL)
						  {	
						    $arr_remark[$remark_count] = $myrow['remark'];
						    $remark_count++;
						  }	
					}
					$ans_1 = cal_avg($total_ans_1, $i);
					$ans_2 = cal_avg($total_ans_2, $i);
					$ans_3 = cal_avg($total_ans_3, $i);
					$ans_4 = cal_avg($total_ans_4, $i);
					$ans_5 = cal_avg($total_ans_5, $i);
					$ans_6 = cal_avg($total_ans_6, $i);
					$ans_7 = cal_avg($total_ans_7, $i);
					$ans_8 = cal_avg($total_ans_8, $i);
					$ans_9 = cal_avg($total_ans_9, $i);
					$ans_10 = cal_avg($total_ans_10, $i);
					$ans_11 = cal_avg($total_ans_11, $i);
                    $ans_12 = cal_avg($total_ans_12, $i);
				}
				          
                $ans1= ($ans_1+$ans_2)/2;
                $ans2= ($ans_3+$ans_4)/2;
                $ans3= ($ans_5+$ans_6)/2;
                $ans4= ($ans_7+$ans_8+$ans_9)/3;
                $ans5= ($ans_10+$ans_11+$ans_12)/3;
				?>																						
				<script type="text/javascript">
				function showTooltip(x, y, contents) {
					$('<div id="tooltip">' + contents + '</div>').css( {
						position: 'absolute',
						display: 'none',
						top: y + 5,
						left: x + 5,
						border: '1px solid #fdd',
						padding: '2px',
						'background-color': '#fee',
						opacity: 0.80
					}).appendTo("body").fadeIn(200);
				}
				$(function() {
					var previousPoint = null;
					$("#placeholder").bind("plothover", function (event, pos, item) {
						$("#x").text(pos.x.toFixed(2));
						$("#y").text(pos.y.toFixed(2));								
							if (item) {
								if (previousPoint != item.dataIndex) {
									previousPoint = item.dataIndex;
									
									$("#tooltip").remove();
									var x = item.datapoint[0].toFixed(2),
										y = item.datapoint[1].toFixed(2);																	
									showTooltip(item.pageX, item.pageY, parseFloat(y).toFixed(2) );
								}
							}
							else {
								$("#tooltip").remove();
								previousPoint = null;            
							}					
					});
				});
							
	
				 $(function() {
					  var myData = [[1, <?php echo $ans1;?>], [2, <?php echo $ans2;?>], [3, <?php echo $ans3;?>], [4, <?php echo $ans4;?>], [5, <?php echo $ans5;?>]];
			
					  var Options = { 
						xaxis: {ticks: [[1, '<?php echo que_one_word(1);?>'], [2, '<?php echo que_one_word(3);?>'], [3, '<?php echo que_one_word(5);?>'], [4, '<?php echo que_one_word(7);?>'], [5, '<?php echo que_one_word(10);?>']] },
										
						bars: { show: true, align:"center" },
						grid: { hoverable: true, clickable: true, xaxis: false },
					}
			
					  $.plot($("#placeholder"), [{data: myData}], Options);
				
				});
				</script>
				<table>
					<tr>
                        <td>Department : <?php echo $depName['depName'];?> </td></tr>
                        <tr><td> Designation : <?php echo $desName['desName'];?> </td></tr>
                        <tr><td> Employee : <?php echo $empName['emp_name'];?></td> 						
					</tr>
				</table>	
				<div align="center">Questions v/s Avg. rating</div>	
				<p></p>		
				<div id="placeholder" style="height:300px;width:900px;"></div>
				<p>&nbsp;</p>
				<tr><td align="left"><br/>Remark(s):-<br/></td></tr>
				<?php				
		}
		echo '<table width=100% border=0>';
		$j=0;
		
		for($row=0;$row<($remark_count)/4;$row++)
		{
			echo '<tr>';			
			for($col=0;$col<4;$col++)
			{	
				if($arr_remark[$j]!=NULL)
				{
					echo '<td>'.'&nbsp;'.$arr_remark[$j].'</td>';
					$j++;
				}
			}
			echo '</tr>';
		}
		echo '</table>';
?>
    </td>
</table>
</td>
</tr>
</table>

</body>
</html>
