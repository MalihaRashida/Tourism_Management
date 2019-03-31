<?php

require 'DBconfig.php';

 
 $Id = (string)date("dmYhis");
 $hotelName = $_POST['hotelName'];
 $District = $_POST['District'];
 $Division = $_POST['Division'];
 $Room_no = $_POST['Room_No'];
 $Local_Add = $_POST['Local'];
 $Non_Single = $_POST['Non_AC_Single'];
 $Non_Double = $_POST['Non_AC_Double'];
 $AC_Single = $_POST['AC_Single'];
 $AC_Double = $_POST['AC_Double'];
 


 if($conn->connect_error) {
    echo "Error";
 } 
 
 $sql = "INSERT INTO Hotel_Details VALUES ( '$hotelName', '$Local_Add', '$District', '$Division','$Room_no','$Id')";
 $sql1 ="INSERT INTO Hotel_Room_Fairs VALUES('$Id','1','1')";
 $sql2 ="INSERT INTO Ac_Room_Fair VALUES('$Id','$AC_Single','$AC_Double')";
 $sql3 ="INSERT INTO Non_Ac_Room_Fair VALUES('$Id','$Non_Single','$Non_Double')";
 

if ($conn->query($sql) && $con->query($sql1) && $con->query($sql2) && $con->query($sql3) ) {
    echo "New record created successfully";
} else {
    
    echo $conn->error;
}
  mysqli_close($conn);
?>