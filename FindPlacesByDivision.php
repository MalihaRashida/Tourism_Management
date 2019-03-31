<?php

require 'DBconfig.php';


$Division_name  = $_POST['Division'];

 if($conn->connect_error) {
    echo "Error";
 } 
 
 $sql = "select Division from `Division` where Division_Name = '$Division_name'";
 
 
$result =  mysqli_query($conn,$sql);

if($result->num_rows>0){
    
    $mrow = $result->fetch_assoc();
    
    $curnt_division = $mrow['Division'];
    
    $sql = "select place_name,image_path from Place_Image,Place_Details where (Place_Details.place_id) in(select place_id from Places where division = '$curnt_division') and  Place_Details.place_id = Place_Image.place_id";
    $mresult =  mysqli_query($conn,$sql);

      $count=1;
    if($mresult->num_rows>0){
        $data = array();
        while($row = $mresult->fetch_assoc()){
            
            if(($count%3)==1){
             echo " <div class='card-deck'>";
       
           }
             
            echo " <div class='card'>";
            echo "<img class='card-img-top' src='".$row['image_path']."' alt='Card image cap'>";
             echo "<div class='card-body'>";
            echo" <h5 class='card-title'><a href='#'>".$row['place_name']."</a></h5>";
         
            echo"</div></div>";
            
            if(($count%3)==0){
             echo " </div>";
       
           }
           $count++;
           
        }
        --$count;
        
        if(($count%3)!=0){
            echo"</div>";
        }
      
        
    }else{
        echo "'$Division_name' has no places";
    }
    
}else {
  echo "0 results";
}
 mysqli_close($conn);
?>