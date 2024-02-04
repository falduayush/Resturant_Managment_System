<table border=0 cellpadding="10" cellspacing="5" align="center">
			<?php
			$con = mysqli_connect("localhost","root","","maher");
			$r = 0;
			$s =mysqli_query($con,"select * from gallery");
			while($row = mysqli_fetch_array($s))
			{
				if($r%4 == 0)
		    	{
					echo "<tr>";
		    	}		 
		   		echo"<td> <img src='{$row['image']}' alt='' width=250 height=250> </td>"; 
	           if($r%4 == 3) 
	           {
	           	    echo "</tr>";
	           }
	           $r++;
	        }
	        ?>

</table>

thanks for watch our video please like share and subscribe to get new videos

all programming languages inside youtube.com/avadhtutor/playlists

