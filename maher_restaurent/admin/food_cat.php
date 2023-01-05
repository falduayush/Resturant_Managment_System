<?php include "header.php"; ?>
<link rel="stylesheet" type="text/css" href="style.css">
<div class="content">
	<form action="" method="post">
	<table border=0 align="center" bgcolor="white" width="40%" style="box-shadow: 1px 3px 15px 2px;" cellpadding="10" cellspacing="15" >
	<tr align="center">
			<td class="title">Upload New Food Category</td>
    </tr>

   <tr align="center">   
   	    <td> 
   	    	<select class="text" name="cat">
   	    		<option value="kathiyawadi">kathiyawadi</option>
   	    		<option value="rajsthani">rajsthani</option>
   	    		<option value="rise">rise</option>
   	    		<option value="tava">tava</option>
   	    	</select>
   	    </td>
   	</tr>  
	<tr align="center">
			<td><input type="text" name="scat" value="" placeholder="" class="text" required></td>
	</tr>
	<tr align="center">
			<td><input type="submit" name="s" value="   Upload Now   " class="btn"></td>
	</tr>
</table>
</form>
<?php
if(isset($_POST['s']))
{
	include "connect.php";
	$cat = $_POST['cat'];
	$scat = $_POST['scat'];
	mysqli_query($con, "insert into food_cat(catnm,sub_cat) values('$cat','$scat')") or die(mysqli_error($con));
	echo "<script>alert('Category Upload SuccessFully');</script>";
	echo "<div style='color:red; font-size:1.5em; font-family:arial; text-align:center;'>Category Uploaded</div>";
}


?>
</div>
<?php include "footer.php"; ?>