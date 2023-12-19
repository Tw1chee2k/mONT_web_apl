  <!DOCTYPE html>
  <html>
  <head>
    <meta charset="UTF-8">
    <title>join</title>
    <link rel="stylesheet" href="assets/css/join.css"/>
    <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
      <title>Регистрация/Авторизация</title>
    </head>  
  <header class = "header">
    <div class = "container">
        <div class="header__inner">
            <div class="header__logo" >MoNt</div>
            <nav class = "naw">  
                <a class = "nav__link" href = "nacalo.html">Main</a>
                <a class = "nav__link" href = "conte/index.html">About</a>            
            </nav>
        </div>
    </div>
</header>
  <body>
  <div class="intro">
    <div class="container">
        <div class = "intro__inner">
        <h1 class="intro__title">Join</h1>
         </div>
    </div>
    </div>
    <div id="login">
      <?php
      if($_COOKIE['user'] == ''):     
      ?>
    <div class="flip">
      <div class="form-signup">
        <h1>Registration</h1>
        <fieldset>  
        <p class="login-msg"></p>
          <form action = "assets/php/check.php" method = "POST">
            <input type="email" name = "email" placeholder="Enter your email address..."><br>
            <input type="password" name = "password" placeholder="Your password..."><br>
            <input type="login" name = "login" placeholder="Username..."><br>
            <input type="submit" value="Register"/>
          </form>        
          <a href="#" class="flipper">Already registered? Enter.</a>
        </fieldset>
      </div>
      <div class="form-login">
        <h1>Authorization</h1>
        <fieldset>
          <form action = "assets/php/check2.php" method = "POST">
            <input type="email" name = "email" placeholder="Enter your email address..."><br>
            <input type="password" name = "password" placeholder="Your password..."><br>
            <input type="submit" value="Log" />
          </form>
          <p><a href="#" class="flipper">No account? Registration.</a><br>
        </fieldset>
      </div>
    </div>
  </div>
  <?php else:?>
  <p>Hello <?=$_COOKIE['user']?>.
  To exit, click <a href = "/exit.php">HERE</a>.</p>
  <?php endif;?>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
    <script src="assets/js/index.js"></script>
  </body>
  </html>