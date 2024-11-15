<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <style>
    body {
      background: url('https://pbs.twimg.com/media/GSnmvKhWAAIVGpX?format=jpg&name=large') no-repeat center center fixed;
      background-size: cover;
    }
    
    #copy {
      position: absolute;
      bottom: 0;
      height: 40px;
      width: 100%;
      text-align: center;
      text-transform: uppercase;
      line-height: 14px;
      font-size: 10px;
      font-weight: 400;
      z-index: 10;
    }
    
    #copy a {
      color: #fff;
      text-decoration: none;
      transition: all 0.3s ease-in-out 0s;
    }
    
    #copy a b {
      font-weight: 700;
    }
    
    #copy a:hover {
      color: #fff;
    }
    
    .modal {
      opacity: 1;
      width: 300px;
      height: 320px;
      background: rgba(0, 0, 0, 0.75);
      border-radius: 5px;
      box-shadow: 0 0 10px #000000, 0 0 0 1px rgba(47, 47, 47, 0.5) inset;
      position: absolute;
      left: 50%;
      top: 50%;
      transform: translate(-50%, -50%);
    }
    
    .circle {
      background: #0d0d0d;
      width: 120px;
      height: 120px;
      border-radius: 50%;
      position: relative;
      left: 50%;
      overflow: hidden;
      transform: translate(-50%, -50%);
      box-shadow: 0 0 8px #0a0a0a, 0 0 0 1px #0a0a0a;
      background-repeat: no-repeat;
      background-position: center center;
      background-size: cover!important; 
    }
    
    .login h1 {
      margin: 0;
      padding: 0;
      margin-top: -30px;
      text-align: center;
      font-family: arial;
      color: #fff;
      text-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
      letter-spacing: 1px;
      text-align: center;
    }
    
    .login input {
      width: 260px;
      margin-left: 10px;
      margin-top: 15px;
      background: rgba(0, 0, 0, 0.3);
      border: none;
      outline: none;
      padding: 10px;
      font-size: 13px;
      color: #fff;
      text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.3);
      border: 1px solid rgba(0, 0, 0, 0.3);
      border-radius: 4px;
      box-shadow: inset 0 -5px 45px rgba(100, 100, 100, 0.2), 0 1px 1px rgba(255, 255, 255, 0.2);
      transition: box-shadow 0.5s ease;
    }
    
    .login input:focus {
      box-shadow: inset 0 -5px 45px rgba(100, 100, 100, 0.4), 0 1px 1px rgba(255, 255, 255, 0.2);
    }
    
    .login button {
      background: transparent;
      text-align: center;
      border: solid 2px #fff;
      margin: 25px 15px 0;
      width: 275px;
      color: #fff;
      line-height: 25px;
      border-radius: 20px;
      cursor: pointer;
    }
    
    .error-message {
      color: red;
      text-align: center;
      margin-top: 10px;
    }
  </style>

  <title>Login Page</title>
</head>
<body>

  <div id="copy">
    <a href="https://twitter.com/igcorreia" target="_blank">Crafted by: <b>Arpit & Soumya</b><br/>Gym Management System :)</a>
  </div>
  
  <div class="modal">
    <div class="circle" style="background-image: url('https://pbs.twimg.com/media/GUSuxZfXsAA5t18?format=jpg&name=small');"></div>
    <div class="login">
      <h1>Admin login</h1>
      <form id="loginForm">
        <input type="text" id="username" placeholder="Username" required>
        <input type="password" id="password" placeholder="Password" required>
        <button type="button" onclick="validateLogin()">Let me in.</button>
      </form>
      <p id="errorMessage" class="error-message"></p>
    </div>
  </div>

  <script>
    function validateLogin() {
      const username = document.getElementById("username").value;
      const password = document.getElementById("password").value;
      const errorMessage = document.getElementById("errorMessage");

      if (username === "ourgym" && password === "arpitji") {
        errorMessage.textContent = "Login successful!";
        errorMessage.style.color = "green";
        window.location.href="Home.jsp";
                // Redirect to another page if needed
        // window.location.href = "homepage.html";
      } else {
        errorMessage.textContent = "Invalid username or password.";
      }
    }
  </script>

</body>
</html>
