<?php
  session_start();
  require 'DBconfig.php';
  
  $email=$_POST['email'];
  $password=$_POST['pwd'];


  $sql="select * from login_info where person_email like '$email'and person_password like'$password'";
  
  
 if($conn->query($sql)>0){
     
     $_SESSION['email']=$email;
     $_SESSION['login']="TRUE";
    
    header("Location:../index.php");
    alert( "successfully logged in");
  }
  
  
  else {
      
    echo alert("Something went Wrong".mysqli_error($conn));
  }
mysqli_close($conn);
 ?>
