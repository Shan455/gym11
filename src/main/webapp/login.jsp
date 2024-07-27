<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <!-- Internal CSS -->
  <style>
    /* Your CSS styles here */
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
      color: #fff; /* Replace with your hover color */
    }
    
   
    .modal {
      opacity: 0;
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
    }
    
    .vertical {
      float: left;
      width: 10%;
      overflow: hidden;
    }
    
    .horizontal {
      width: 100%;
      height: 150px;
      position: relative;
      box-shadow: -1px 1px 0 1px rgba(0, 0, 0, 1) inset, 0 0 50px rgba(0, 0, 0, 0.5) inset;
      overflow: hidden;
      text-align: center;
      background-repeat: no-repeat;
      background-position: center center;
      background-size: cover!important; 
    }
  </style>

  <!-- External CSS -->
  <link rel="stylesheet" href="styles.css">
  
  <title>Document</title>
</head>
<body>
  <!-- Your HTML content here -->
  <div id="copy">
    <a href="https://twitter.com/igcorreia" target="_blank">Crafted by: <b>Arpit & Soumya</b><br/>Gym Management System :)</a>
  </div>
  <form method="post" action = "login" class="AdminLogin"></form>
  <div class="mask">
    <div class="modal">
      <div class="circle" style="background-image: url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/9589/0+%281%29.jfif');"></div>
      <div class="login">
        <h1>Admin login</h1>
        <form method="post">
          <input type="text" name="u" placeholder="Username" required="required">
          <input type="password" name="p" placeholder="Password" required="required">
          <button type="submit" class="btn btn-primary btn-block btn-large">Let me in.</button>
        </form>
      </div>
    </div>
  </div>

  <div class="verticals">
    <!-- Jade/Pug loop for verticals and horizontals would be compiled and included here as regular HTML -->
  </div>

  <!-- JavaScript at the end of body -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.10.1/gsap.min.js"></script>
  <script>
    $(document).ready(function(){
      var  $v01  = $('.vertical0')
        ,$v02  = $('.vertical1')
        ,$v03  = $('.vertical2')
        ,$v04  = $('.vertical3')
        ,$v05  = $('.vertical4')
        ,$v06  = $('.vertical5')
        ,$v07  = $('.vertical6')
        ,$v08  = $('.vertical7')
        ,$v09  = $('.vertical8')
        ,$v10  = $('.vertical9')
        ,$login= $('.modal')
        ,speed = 60
        ,tl = new TimelineLite({onComplete:restart});
    
        tl.fromTo($v01,speed*0.70,{y:-250} ,{y:-750} ,'sync')
          .fromTo($v02,speed*0.75,{y:-950} ,{y:-1250},'sync')
          .fromTo($v03,speed*0.95,{y:-1000},{y:-1850},'sync')
          .fromTo($v04,speed*0.75,{y:-1250},{y:-1750},'sync')
          .fromTo($v05,speed*0.85,{y:-1100},{y:-2000},'sync')
          .fromTo($v06,speed*0.65,{y:-900},{y:-1950},'sync')
          .fromTo($v07,speed*0.70,{y:-1300},{y:-2100},'sync')
          .fromTo($v08,speed*0.95,{y:-850},{y:-1460},'sync')
          .fromTo($v09,speed*0.55,{y:-1000},{y:-1750},'sync')
          .fromTo($v10,speed*0.80,{y:-1200},{y:-1600},'sync')
          .fromTo($login,1,{scale:0,autoAlpha:0},{scale:1,autoAlpha:1, ease:Elastic.easeInOut},'sync');
        
        tl.play();
    
        function restart(){
          tl.stop();
          tl.restart();
        }
    });
  </script>

  <!-- External JavaScript -->
  <script src="script.js"></script>
</body>
</html>
