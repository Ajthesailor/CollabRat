<?php
  include("includes/config.php");
  include("includes/classes/Account.php");
  include("includes/classes/Constants.php");

  $account = new Account($con);
  
  include("includes/handlers/register-handler.php");
  include("includes/handlers/login-handler.php");

  function getInputValue($name) {
    if(isset($_POST[$name])) {
      echo $_POST[$name];
    }
  }
?>

<html>
<head>

  <title>Welcome to CollabRat!</title>
  <!-- Favicon -->
  <link rel="icon" type="image/x-icon" href="assets/images/favicon/favicon.png">

  <link rel="stylesheet" type="text/css" href="assets/images/css/register.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="assets/js/register.js"></script>
</head>
<body>
  <?php
  if(isset($_POST['registerButton'])) {
    echo '<script>
          $(document).ready(function() {

            $("#loginForm").hide();
            $("#registerForm").show();
          });
          </script>';
  }
  else {
    echo '<script>
          $(document).ready(function() {

            $("#loginForm").show();
            $("#registerForm").hide();
          });
          </script>';
  }

  ?>

  <div id="background">
    <div id="loginContainer">
      <div id="inputContainer">

      <!-- Login Form -->
      <form id="loginForm" action="register.php" method="POST">
        <h2>Sign Into Collab Rat</h2>
        <p>
        <?php echo $account->getError(Constants::$loginFailed); ?>
          <label for="loginUsername">Username:</label>
          <input id="loginUsername" name="loginUsername" type="text" placeholder="Your username" value="<?php getInputValue('loginUsername') ?>" required>
        </p>
        <p>
        <label for="loginPassword">Password:</label>
          <input id="loginPassword" name="loginPassword" type="password" placeholder="Your password" required>
        <br>
        <input type="checkbox" onclick="showPassword('loginPassword')">Show password
        </p>
        <button type="submit" name="loginButton">LOG IN</button>

        <div class="hasAccountText">
          <span id="hideLogin"> Don't have an account yet? Signup here.</span>
        </div>

      </form>

      <!-- Register Form -->
      <form id="registerForm" action="register.php" method="POST">
        <h2>Join Collab Rat Today</h2>
        <p>
        <?php echo $account->getError(Constants::$usernameCharacters); ?>
        <?php echo $account->getError(Constants::$usernameTaken); ?>
          <label for="username">Username:</label>
          <input id="username" name="username" type="text" placeholder="" value="<?php getInputValue('username') ?>" required>
        </p>

        <p>
        <?php echo $account->getError(Constants::$firstNameCharacters); ?>
          <label for="firstName">First name:</label>
          <input id="firstName" name="firstName" type="text" placeholder="" value="<?php getInputValue('firstName') ?>" required>
        </p>
        <p>
        <?php echo $account->getError(Constants::$lastNameCharacters); ?>
          <label for="lastName">Last name:</label>
          <input id="lastName" name="lastName" type="text" placeholder="" value="<?php getInputValue('lastName') ?>" required>
        </p>
        <p>
        <?php echo $account->getError(Constants::$emailsDoNotMatch); ?>
        <?php echo $account->getError(Constants::$emailInvalid); ?>
        <?php echo $account->getError(Constants::$emailTaken); ?>
          <label for="email">Email:</label>
          <input id="email" name="email" type="email" placeholder="" value="<?php getInputValue('email') ?>" required>
        </p>
        <p>
          <label for="email2">Confirm email:</label>
          <input id="email2" name="email2" type="email" placeholder="" value="<?php getInputValue('email2') ?>" required>
        </p>

        <p>
        <?php echo $account->getError(Constants::$passwordsDoNotMatch); ?>
        <?php echo $account->getError(Constants::$passwordNotAlphanumeric); ?>
        <?php echo $account->getError(Constants::$passwordCharacters); ?>
        <label for="password1">Password:</label>
          <input id="password1" name="password1" type="password" placeholder="Your password" required>
        <br>
        <input type="checkbox" onclick="showPassword('password1')">Show password
        </p>


        <p>
        <label for="password2">Confirm password:</label>
        <input id="password2" name="password2" type="password" placeholder="Confirm your password" required>
        <br>
        <input type="checkbox" onclick="showPassword('password2')">Show password
        </p>
        <button type="submit" class="registerButton" name="registerButton">SIGN UP</button>

        <div class="hasAccountText">
          <span id="hideRegister"> Already have an account? Login here.</span>
        </div>
      </form>

      </div>
      <div id="loginText">
        <h1>Explore underground music, right now</h1>
        <h2>Listen to loads of remixed songs for free</h2>
        <ul>
          <li>Curated playlist from industry experts</li>
          <li>Connect with other underground artist</li>
          <li>Follow artists that are on the rise</li>

        </ul>
      </div>
</div>
</div>
  <script>
  function showPassword(inputId) {
    var x = document.getElementById(inputId);
    
    if (x.type === "password") {
      x.type = "text";
    } else {
      x.type = "password";
    }
  }
</script> 
</body>
</html>