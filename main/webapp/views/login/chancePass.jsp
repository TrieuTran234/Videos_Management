<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Chance Password</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="/assignment/views/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="/assignment/views/css/style.css">
</head>

<body>

    
        
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="/assignment/views/images/signin-image.jpg" alt="sing up image"></figure>
                        <a href="/assignment/views/register.jsp" class="signup-image-link">Create an account</a>
                    </div>        
                               
                    <div class="signup-form">
                        <h2 class="form-title" style="font-size: 25px;">Chance Password</h2>
                        <form method="POST" class="register-form" id="register-form">
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name" ></i></label>
                                <input type="text" name="name" id="name" placeholder="Usename"/>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-lock-open"></i></label>
                                <input type="password" name="email" id="email" placeholder="Current Password"/>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="pass" id="pass" placeholder="New Password"/>
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password"/>
                            </div>
                            <!-- button  -->
                            <div class="form-group form-button">
                                <input type="submit" name="signup" id="signup" class="form-submit" value="Chance"/>
                            </div>
                        </form>
                    </div>
                </div>
   

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>