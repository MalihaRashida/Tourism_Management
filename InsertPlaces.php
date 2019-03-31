<?php

require 'DBconfig.php';


$Place_id = $_POST['Place_Id'];
$Place_name  = $_POST['Place_image'];

echo "aasas";
 if($conn->connect_error) {
    echo "Error";
 } 

$sql2 = "insert into Place_Image values('$Place_id','$Place_name')";

 
if ($conn->query($sql2) ) {
    echo "New record created successfully";
} else {
    echo $conn->error;
}
 mysqli_close($conn);
?>