<!DOCTYPE HTML>
<html> 
    <head>    
        
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>REGISTRATION FORM</title>
        
        <style type="text/css">
    form.center {
    margin-left: 10%;
    margin-right: 10%;
     margin-top: 10.5%;
    
      
     body{ background-image:url(p.jpg);
  background-size: cover;
}
</style>
        
        <style type="text/css">
           form.center {
               margin:0% auto;
               margin-top:3%;
               font: 15px arial, sans-serif;
               font-weight:1200;
               color: #151B54; 
               background-image:url(p.jpg);
               background-size: cover;
               width: 500px;
               height: 430px;
           }
        </style>
        
        <style>
        header {
            background-color:#666666;
            color:white;
            text-align:left;
            padding:5px;
            text-shadow: 2px 2px 5px #B6B6B4;
            font: 15px arial, sans-serif;
        }
        button {
            background-color:#BCC6CC;

            color:#151B54;
            text-align:left;
            padding:5px;
            text-shadow: 2px 2px 5px #B6B6B4;
            font: 15px arial, sans-serif;
            font-weight:1200;

        }
        .rightAlign{
            float: right;
            width : 140px;
            height: 37px;
            margin-right:100px;
        }


        .button_pressed {
            opacity: 0.8;
            filter: alpha(opacity=70); /* For IE8 and earlier */
        }

        .button_pressed:hover {
            opacity: 1.0;
            filter: alpha(opacity=100); /* For IE8 and earlier */
        }

        body {
            background-color: #BCC6CC;
        }
        section {
            margin: 0 15%;
            width:500px;
            float:center;
            padding:10px;	 	 
        }

       
             
        </style>
    
    
        <header>   
            <div style="margin-left: 50px;">
                <h1 >Home To-let</h1>
            </div>

            <div style="margin-top: -57px;" type="button" class="rightAlign button_pressed">
                <button >Login/Register</button>
            </div>    
        </header>

    </head>

    <body> 
        <?php
            $flag = 0;
        ?>
       
                <form class="center" id="login" action="InsertDb.php" method="post">
                    <input type="radio" name="bb" id="new_account" style="margin-left:10%;margin-top: 10%"/>
                        Owner <br/>
                    <input type="radio" name="bb" id="already_account" checked="checked" style="margin-left:10%;margin-top: 3%"/>
                    Renter<br>
                    <div style="margin-left:10%;margin-top: 3%">
                    First name:<br>
                    
                    <input type="text" name="firstname" style="margin-left:.25%;margin-top: 0%"name="firstname">
                      <br>
                    
                       
                      Last name:<br>
                            
                       
                             <input type="text" name="lastname" style="margin-left:.25%;margin-top: 0%" name="lastname">
                             
                    </div>
                    <div id="new_account_div">
                        <p class="Please enter your email address" style="margin-left:10%;margin-top: 3%">
                            <label style="margin-left:0%;margin-top: 3%">
                                Please enter your email address*
                            </label >
                        </p>

                        <p style="margin-left:10%;margin-top: 3%">
                            <input type="text" name="email" value="" placeholder="Email Address" style="width:50%" required="">
                        </p>
                    </div>
                    <div id="already_account_div">

                        <p class="Please enter your Password" style="margin-left:10%;margin-top: 3%">
                            <label style="margin-left:0%;margin-top: 3%">
                                Please enter your Password*
                            </label>
                        </p>

                        <p style="margin-left:10%;margin-top: 3%">
                            <input type="password" name="pass" value="" placeholder="Password" style="width:50%" required="">
                        </p>

                        
                    </div>
                        
                        <div class="" style="margin-left:10%;margin-top: 3%">
                            <input type="hidden" name="action" value="subscribe" />
                            <button type="submit" style="width: 50%; text-align: center" class="button_pressed">Submit</button>
                        </div>
                    
                </form>    
                    <div  style="display: none">
                        <h1>This is New Account</h1>
                    </div>
                    
                    
                    <script>
                        function click(){
                           if(document.getElementById('new_account').checked) {
                            document.getElementById('already_account_div').style.visibility = hidden; 
                            } 
                        }    
                    </script>
                
                
                <p style="display: none;" id="notification">Thank You!</p>
                
                <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
               </script>
                <script type="text/javascript"> //ajax
               /* $(document).ready(function() {
                  var form = $('#form'); // contact form
                  var submit = $('#submit');  // submit button
                  //var alert = $('.alert'); // alert div for show alert message

                  // form submit event
                  form.on('submit', function(e) {
                    e.preventDefault(); // prevent default form submit

                    $.ajax({
                      url: 'InsertDb.php', // form action url
                      type: 'POST', // form submit method get/post
                      dataType: 'html', // request type html/json/xml
                      data: form.serialize(), // serialize form data 
                      beforeSend: function() {
                        alert.fadeOut();
                        submit.html('Sending....'); // change submit button text
                      },
                      success: function(data) {
                        alert.html(data).fadeIn(); // fade in response data
                        form.trigger('reset'); // reset form
                        submit.html('Send Email'); // reset submit button text
                      },
                      error: function(e) {
                        console.log(e)
                      }
                    });
                  });
                });*/
                </script>
                
                <script type="text/javascript"> /*//using js
                    $('#login').submit(function() {
                      var post_data = $('#login').serialize();
                      $.post('InsertDb.php', post_data, function(data) {
                        $('#notification').show();
                      });
                    });*/
                </script>
                
            </div>

    
    </body>
</html>
