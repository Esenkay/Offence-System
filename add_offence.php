 <?php
session_start();
?>
<!DOCTYPE html>
<html>

	<title>RedX Offence System</title>
	<link rel="stylesheet" href='css/dcss.css'

<body>
<aside>
	<div class='user'>
		<img class='avatar' src='img/avatar.png'>
	<?php
// Echo session variables that were set on previous page
echo "<p> User: " . $_SESSION["username"] . "<br></p>";
?>
<a href="logout.php">logout</a><hr/>
</div>

<ul class='nav_container'>
	<li class='nav_list'><a href='dashboard.php'><img src="img/home.png">Home</li><hr/>
	<li class='nav_list' ><a href='add_offence.php'><img src="img/add.png">Add Offence</li><hr/>
	<li class='nav_list'><a href='view_offence.php'><img src="img/view.png">View Offence</li><hr/>
	<li class='nav_list'><a href='edit_user.php'><img src="img/bail.png">Edit Profile</li><hr/>
	<li class='nav_list'><a href='bail.php'><img src="img/pass.png">Bail Out</li><hr/>
	</a>
</ul>

</aside>
<section>
    
        <h2>Add Offence</h2><hr>
        <?php
    
include 'dbconn.php';
   if (isset($_POST['submit'])){
    $select= $_POST['select'];
    $_SESSION['dropdown']= $select;
         header("location: add_offender_details.php");
   
   }
?>
    <div class='selectbar'>
    <form method='post'>
        <fieldset>
            <legend>Select Offence</legend>
        <select name='select'  autofocus maxlength='50'>
            <option selected disabled>Selec RedX Offence</option>
            <option value="1">Late</option>
            <option value="2">Monitor On</option>
            <option value="3">Trush</option>
            <option value="4">Lights On</option>
            <option value="5">Untidy</option>
        </select>
            </fieldset>
        <input type='submit' name='submit' value='submit'/>
    </form>
        </div>
</section>

</body>
<footer> deepAfrica &copy; 2017 </footer>
</html> 
