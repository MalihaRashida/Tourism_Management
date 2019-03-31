<?php

require 'DBconfig.php';


 if($conn->connect_error) {
    echo "Error";
 } 
 
 $Sort = $_POST['Sort_By'];
 $RoomType =  $_POST['Room_Fair'];
 $BedType = $_POST['Bed'];
 $District = $_POST['District'];
 $Division = $_POST['Division'];
 $MaximumBudget = $_POST['Maximum_Budget'];
 $MinimumBudget = $_POST['Minimum_Budget'];
 

 if($Sort ==0){
     
 $Sql_Query = "SELECT DISTINCT Hotel_Details.Hotel_Name, Hotel_Details.Local_address,Hotel_Details.District,Hotel_Details.Division,Hotel_Details.email_address,Hotel_Details.contact_no,
 Hotel_Pictures.image_path,`$RoomType`.`$BedType` from ((`Hotel_Details` INNER JOIN `Hotel_Pictures` ON `Hotel_Details`.`Hotel_ID` = Hotel_Pictures.Hotel_ID AND Hotel_Details.District = '$District'
 AND Hotel_Details.Division = '$Division') INNER JOIN `$RoomType` ON `$RoomType`.Hotel_ID = Hotel_Details.Hotel_ID AND `$RoomType`.`$BedType` >= '$MinimumBudget' AND `$RoomType`.`$BedType` <='$MaximumBudget')"; 
 
 }
 else if($Sort ==1){
     $Sql_Query = "SELECT DISTINCT Hotel_Details.Hotel_Name, Hotel_Details.Local_address,Hotel_Details.District,Hotel_Details.Division,Hotel_Details.email_address,Hotel_Details.contact_no,
 Hotel_Pictures.image_path,`$RoomType`.`$BedType` from ((`Hotel_Details` INNER JOIN `Hotel_Pictures` ON `Hotel_Details`.`Hotel_ID` = Hotel_Pictures.Hotel_ID AND Hotel_Details.District = '$District'
 AND Hotel_Details.Division = '$Division') INNER JOIN `$RoomType` ON `$RoomType`.Hotel_ID = Hotel_Details.Hotel_ID AND `$RoomType`.`$BedType` >= '$MinimumBudget' AND `$RoomType`.`$BedType` <='$MaximumBudget') ORDER BY  Hotel_Details.Hotel_Name "; 
 
 }
 else if($Sort ==2){
     
     $Sql_Query = "SELECT DISTINCT Hotel_Details.Hotel_Name, Hotel_Details.Local_address,Hotel_Details.District,Hotel_Details.Division,Hotel_Details.email_address,Hotel_Details.contact_no,
 Hotel_Pictures.image_path,`$RoomType`.`$BedType` from ((`Hotel_Details` INNER JOIN `Hotel_Pictures` ON `Hotel_Details`.`Hotel_ID` = Hotel_Pictures.Hotel_ID AND Hotel_Details.District = '$District'
 AND Hotel_Details.Division = '$Division') INNER JOIN `$RoomType` ON `$RoomType`.Hotel_ID = Hotel_Details.Hotel_ID AND `$RoomType`.`$BedType` >= '$MinimumBudget' AND `$RoomType`.`$BedType` <='$MaximumBudget') ORDER BY `$RoomType`.`$BedType`"; 
 
     
 }
 
 $result = mysqli_query($conn,$Sql_Query);
 $count=1;
 if($result->num_rows>0){
   
     
     $data = array();
        while($row = $result->fetch_assoc()){
            
           if(($count%3)==1){
             echo " <div class='card-deck'>";
       
           }
             
            echo " <div class='card'>";
            echo "<img class='card-img-top' src='".$row['image_path']."' alt='hotel Image Loading'>";
             echo "<div class='card-body'>";
              echo" <h5 class='card-title'><a href=".$row['email_address'].">".$row['Hotel_Name']."<a/></h5>";
              
              echo" <ul class='list-group list-group-flush'>
              <li class='list-group-item'>Address: ".$row['Local_address']."</li> 
              <li class='list-group-item'>District: ".$row['District']."</li>
              
              <li class='list-group-item'>Contact No: ".$row['contact_no']." </li>
                <li class='list-group-item'>Website: ".$row['email_address']."</li>
              
              </ul>";
              
              
              
              
              
    
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
        
    

  }else {
    echo "0 results";
  }


  mysqli_close($conn);
?>