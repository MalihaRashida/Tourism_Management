<?php

?>




<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
 
   <script src="jquery.min.js"></script>

 
  
</head>
<body>

<!---------THe header part here------>
<div class="page-header">
  <h1> The Tourist Touch</h1>
  <p>we help tourist all over the world</p>
</div>



<!---this is mainly the navbar-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
  <span class="navbar-toggler-icon"></span>
</button>
<a class="navbar-brand" href="#">Tourist Touch</a>

<div class="collapse navbar-collapse" id="navbarTogglerDemo03">
  <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
    <li class="nav-item ">
      <a class="nav-link" href="index.php">Home </a>
    </li>
    <li class="nav-item ">
      <a class="nav-link" href="hotel.php">Hotel<span class="sr-only">(current)</span></a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="places.php">Places</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="loginorsignup.php">Login/SignUp</a>
    </li>
  </ul>
  <form class="form-inline my-2 my-lg-0">
    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
  </form>
</div>

<div class="pos-f-t">
  <div class="collapse" id="navbarToggleExternalContent">
    <div class="bg-dark p-4">
      <h4 class="text-white">Collapsed content</h4>
      <span class="text-muted">Toggleable via the navbar brand.</span>
    </div>
  </div>
  <nav class="navbar navbar-dark bg-dark">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  </nav>
</div>
</nav>



<!----content of text---->


<div class="container" style="margin-top:50px;">
  
  <form>


     
     
     <div class="form-row">
         
    
    
      <div class="form-group col-md-4">
      <label for="inputState">Division</label>
      <select id="division" class="form-control">
        
         <option value="Dhaka">Dhaka</option>
         <option value="Sylhet">Sylhet</option>
         <option value="Chottogram">Chottogram</option>
        
      </select>
    </div>
         
         
         
         
     </div>
    
   

</form>
  
  <button class="btn btn-primary" id="searchButton">Search</button>
</div>

<div class="container" id="cardid" style="margin-top:50px;">
  
 
</div>

 <script>
 
     $("#searchButton").click(function(){
         
          
            
     
      var division=document.getElementById("division").value;
   
  
      
           $.post( "phpfiles/FindPlacesByDivision.php", {Division: division })
             .done(function( data ) 
             {
                 document.getElementById("cardid").innerHTML=data;
                 
                });
         
     });

     
 </script>


   
  <script type="text/javascript" src="js/bootstrap.min.js">
</script>
</body>
</html>
