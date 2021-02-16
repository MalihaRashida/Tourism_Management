<?php
  session_start();
  require 'DBconfig.php';
  
  $email=$_POST['email'];
  $password=$_POST['pwd'];


  $sql="insert into login_info (person_email,person_password)values('$email','$password')";
  if($conn->query($sql)===TRUE)
   {
     "<script type=\"text/javascript\">window.alert('You must enter your full name.');</script>"; 
     $_SESSION['login']="TRUE";
     header("Location:../hotel.php");
     
  }
  else {
    echo "Something went Wrong";
  }
mysqli_close($conn);
 ?>
