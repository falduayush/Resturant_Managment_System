<script>
function showUser(str) {
  if (str == "") {
    document.getElementById("txtHint").innerHTML = "";
    return;
  } else {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("txtHint").innerHTML = this.responseText;
      }
    };
    xmlhttp.open("GET","getscat.php?q="+str,true);
    xmlhttp.send();
  }
}
</script>
<?php include "header.php"; ?>

<link rel="stylesheet" type="text/css" href="style.css">

<div class="content">
	<form action="" method="post" enctype="multipart/form-data">
	<table border=0 align="center" bgcolor="white" width="65%" style="box-shadow: 1px 3px 15px 2px;" cellpadding="10" cellspacing="15" >
	

	<tr align="center">
			<td class="title">Upload New Food</td><td><a href="view_food.php" style="color: red; text-decoration: none;">View All Foods</a></td>
    </tr>
    

   <tr align="center">   
   		<td>Choose Food Category</td>
   	    <td> 
   	    	<select class="text" name="cat" onchange="showUser(this.value)">
   	    		<option value="kathiyawadi">kathiyawadi</option>
   	    		<option value="rajsthani">rajsthani</option>
   	    		<option value="rise">rise</option>
   	    		<option value="tava">tava</option>
   	    	</select>
   	    </td>

   	    <tr align="center">
   	    	<td> Choose SubCatagory</td>
   	    	<td>
   	    		<div id="txtHint">Choose Your Main Category to Display Sub category</div>
   	    	</td>
   	   </tr> 

   	   <tr align="center">
   	   	    <td> Enter Title</td>
   	   	    <td><input type="text" name="title" value="" placeholder="" class="text" required></td>
   	   </tr> 
	<tr align="center"> 
            <td> Enter Food Detail </td>
			<td><textarea rows="4" name="detail" cols="40" class="ar" style="background-color: black; color: white; padding: 10px;"></textarea></td>
	</tr>

	<tr align="center"> 
            <td> Enter Food price </td>
			<td> <input type="text" name="price" class="text"> </td>
	</tr>

    <tr align="center"> 
            <td> Enter Food Image </td>
			<td><input type="File" name="img"  placeholder="" class="" required></td>
	</tr>

    <tr>    
    	<td colspan=2 align="center"> <input type="submit" name="s" value="Upload now" class="btn"> </td>
    </tr>

</table>
</form>
<?php
if(isset($_POST['s']))
{
		$cat = $_POST['cat'];
		$scat = $_POST['scat'];
		$title = $_POST['title'];
		$det = $_POST['detail'];
		$price = $_POST['price'];
		$i = "mimg/".$_FILES['img']['name'];
		move_uploaded_file($_FILES['img']['tmp_name'], $i);
		include "connect.php";
		mysqli_query($con,"insert into menu (category,sub_cat,title,description,price,image) values('$cat','$scat','$title','$det','$price','$i')");
		echo "<div style='text-align:center; font-size:1.3em; color:red;'>Data Addedd SuccessFully</div>";
		
}
?>	
</div>
<?php include "footer.php"; ?>