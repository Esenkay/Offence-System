<?php
session_start();
?>
<html>
<title>RedX System </title>
    <link href="css/dcss.css" rel='stylesheet'>
    <body>
        <?php
require_once 'dbconn.php';
$query= "SELECT * FROM off_details ORDER BY rp_id DESC LIMIT 1";
        $result= $conn->query($query);
            if(!$result){
                echo 'failed';
            }
			else{
    $row=$result->fetch_assoc();
               
    
			}         
?>
<div class='pr'>
    <h2><center>deepAfrica RedX Offence</center></h2>
        <h3>Infringment Details</h3>
        <p>The reasonfor this infringment notice is to let you know that you have been convicted of a RedX offence</p>
     <table BORDER='1'>
         <th>Report_ID</th>
         <th>First Name</th>
         <th>Last Name</th>
         <th>Offence Type</th>
        <TR>
            <td><?php echo 'RP000'.$row['rp_id'];?></td>
            <td><?php echo $row['o_fname'];?></td>
            <td><?php echo $row['o_lname'];?></td>
            <td><?php echo $row['offence'];?></td>
         </TR>
        </table>
         <h2 class='charges'>CHARGES: KSH<?php echo $row['penalty']?></h2>
        </div>
    </body>
</html>
