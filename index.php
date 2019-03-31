
<?php

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Tourist Touch</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">

</head>
<body>

<!---THe header part here------>
<div class="page-header container">
  <h1>Tourist  Touch</h1>
  <p>We help tourist all over Bangladesh</p>
</div>



<!---this is mainly the navbar-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
  <span class="navbar-toggler-icon"></span>
</button>
<a class="navbar-brand" href="#">Tourist Touch</a>

<div class="collapse navbar-collapse" id="navbarTogglerDemo03">
  <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
    <li class="nav-item active">
      <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="hotel.php">Hotel</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="places.php">Places</a>
    </li>
   <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          SignUp/Login
        </a>
        <div class="dropdown-menu " aria-labelledby="navbarDropdown">
          <a class="dropdown-item bg-light" href="signup.php">SignUp</a>
          <a class="dropdown-item bg-light" href="login.php">Login</a>
  </ul>
  
  

</div>
</nav>
 <!--middle image slider section---->
 <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
   <ol class="carousel-indicators">
     <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
     <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
     <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
   </ol>
   <div class="carousel-inner">
     <div class="carousel-item active">
       <img class="d-block w-100 h-60 img-fluid" src="img/back8.jpg" alt="First slide">
       <div class="carousel-caption">
         
       </div>
     </div>
     <div class="carousel-item">
       <img class="d-block w-100 h-60" src="img/back9.jpg" alt="Second slide">
       <div class="carousel-caption">
         
       </div>
     </div>
     <div class="carousel-item">
       <img class="d-block w-100 h-60" src="img/back7.jpg" alt="Third slide">
       <div class="carousel-caption">
         
       </div>
     </div>
   </div>
   <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
     <span class="carousel-control-prev-icon" aria-hidden="true"></span>
     <span class="sr-only">Previous</span>
   </a>
   <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
     <span class="carousel-control-next-icon" aria-hidden="true"></span>
     <span class="sr-only">Next</span>
   </a>
 </div>
<hr>


<!--content of text---->
<div class="card text-center container">
  <div class="card-header">
    About Us
  </div>
  <div class="card-body">
    <h5 class="card-title">Tourism of Bangladesh</h5>
    <p class="card-text">Bangladesh's tourist attractions include historical monuments, resorts, beaches, picnic spots, forests and tribal people, wildlife of various species. Activities for tourists include angling, water skiing, river cruising, hiking, rowing, yachting, and sea bathing.
    Ministry of Tourism and The Civil Aviation Ministry designs national policies for the development and promotion of tourism. The Ministry also maintains the Beautiful Bangladesh campaign.
    
    </p></p>
    <a href="http://www.parjatan.gov.bd/" class="btn btn-primary">Know More</a>
  </div>
  <div class="card-footer text-muted">
    We Touch Tourist Emotion
  </div>
</div>







<!--Card view system-->
<div class="container" style="margin-top:25px;">


<div class="card-deck">

    <div class="card bg-light" style="width: 18rem;" >
      <img src="img/hotel.jpg" class="card-img-top" alt="book any hotel">
      <div class="card-body">
        <h5 class="card-title">Best Hotel Nearby</h5>
        <p class="card-text">We can search the best hotels nearby the tourist places and help you suggesting hotels within your price range.</p>
        <a href="http://tourist.toktakprogramming.org/hotel.php" class="btn btn-primary">Get In</a>
      </div>

  </div>

<div class="card bg-light" style="width: 18rem;">
  <img src="img/back6.jpg" class="card-img-top" alt="book any hotel">
  <div class="card-body">
    <h5 class="card-title">Tourist Place</h5>
    <p class="card-text">Bangladesh is the land of green countryside , natural wonders , colorful culture life and also serpentine river . It is dream destination for the tourists and it also has mind blowing sites to die.
    </p>
    <a href="http://tourist.toktakprogramming.org/places.php" class="btn btn-primary">Get In</a>
  </div>

</div>


<div class="card " style="width: 18rem;">
  <img src="img/place1.jpg" class="card-img-top" alt="book any hotel">
  <div class="card-body">
    <h5 class="card-title">Historical Place</h5>
    <p class="card-text">Bangladesh might look like a relatively young nation, but it has a rich history which offers you to satisfy your voyage on archaic sites.</p>
    <a href="http://tourist.toktakprogramming.org/places.php" class="btn btn-primary">Get In</a>
  </div>
</div>

</div>
</div>
<!--fotter part-->





<!--javascript file of bootstrap--------->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-    q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/    popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

  <script type="text/javascript" src="js/bootstrap.min.js">
</script>
</body>
</html>
