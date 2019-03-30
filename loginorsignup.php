<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">

</head>
<body>

<!---THe header part here------>
<div class="page-header container">
  <h1> The Tourist  Touch</h1>
  <p>we help tourist all over Bangladesh</p>
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
      <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="hotel.html">Hotel</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="places.html">Places</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="loginorsignup.html">Login/SignUp</a>
    </li>
  </ul>
  <form class="form-inline my-2 my-lg-0">
    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
  </form>
</div>
</nav>
<!--navigation finished-->

<!--this login or signup section-->
<div class="container" style="align:center; margin-top:50px;">
  <button type="button" class="btn btn-primary btn-lg disabled">Login</button>
  <button type="button" class="btn btn-secondary btn-lg" onclick="myfunction()">Sign Up</button>
</div>


<form class="container" style="margin-top:80px;">
  <div class="form-group ">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group ">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  <div class="form-group form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">I agree with the <a href="#">Privacy Policy </a> of Tourist Touch</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>

<p id="helo"></p>





<!--javascript file of bootstrap--------->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-    q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/    popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/myjs.js">

    </script>
  <script type="text/javascript" src="js/bootstrap.min.js">
</script>
</body>
</html>
