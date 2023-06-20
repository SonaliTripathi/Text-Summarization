<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Checkout GrowMore</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="vendor/nouislider/nouislider.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    

    <div class="main">

        <div class="container">
            <div class="signup-content">
                <div class="signup-img">
                    <img src="images/form-img.jpg" alt="">
                    <div class="signup-img-content">
                        <h2>Subscribe now </h2>
                        <p>Enjoy The Freedom To Summaries And Mistakes !</p>
                    </div>
                </div>
                <div class="signup-form">
                    <form method="POST" class="register-form" id="register-form">
                        <div class="form-row">
                            <div class="form-group">
                                <div class="form-input">
                                    <label for="first_name" class="required">First name</label>
                                    <input type="text" name="first_name" id="first_name" />
                                </div>
                                <div class="form-input">
                                    <label for="last_name" class="required">Last name</label>
                                    <input type="text" name="last_name" id="last_name" />
                                </div>
                                <div class="form-input">
                                    <label for="company" class="required">Company</label>
                                    <input type="text" name="company" id="company" />
                                </div>
                                <div class="form-input">
                                    <label for="email" class="required">Email</label>
                                    <input type="text" name="email" id="email" />
                                </div>
                                <div class="form-input">
                                    <label for="phone_number" class="required">Phone number</label>
                                    <INPUT id="txtChar" onkeypress="return isNumberKey(event)" type="text" maxlength="10" name="txtChar">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-select">
                                    <div class="label-flex">
                                        <label for="meal_preference">subscription preference</label>
                                        <a href="#" class="form-link">member detail</a>
                                    </div>
                                    <div class="select-list">
                                        <select name="meal_preference" id="meal_preference">
                                            <option value="Vegetarian">Free</option>
                                            <option value="Kosher">Premium</option>
                                            <option value="Asian Vegetarian">Pro</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-radio">
                                    <div class="label-flex">
                                        <label for="payment">Payment Mode</label>
                                        <a href="#" class="form-link">Payment Detail</a>
                                    </div>
                                    <div class="form-radio-group">            
                                        <div class="form-radio-item">
                                            <input type="radio" name="payment" id="cash" checked>
                                            <label for="cash">Debit</label>
                                            <span class="check"></span>
                                        </div>
                                        <div class="form-radio-item">
                                            <input type="radio" name="payment" id="cheque">
                                            <label for="cheque">Credit</label>
                                            <span class="check"></span>
                                        </div>
                                        <div class="form-radio-item">
                                            <input type="radio" name="payment" id="demand">
                                            <label for="demand">Paypal</label>
                                            <span class="check"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-input">
                                    <label for="chequeno">Name On Card</label>
                                    <input type="text" name="chequeno" id="chequeno" />
                                </div>
                                <div class="form-input">
                                    <label for="blank_name">Card Number</label>
									<INPUT id="txtChar" onkeypress="return isNumberKey(event)" type="text" maxlength="16" name="txtChar">
                                </div>
                                <div class="form-input">
                                    <label for="payable">Expiry Date</label>
                                    <INPUT id="txtChar" onkeypress="return isNumberKey(event)" type="text" maxlength="4" name="txtChar">
                                </div>
                            </div>
                        </div>
                     <!--   <div class="donate-us">
                            <label>Purchase</label>
                            <div class="price_slider ui-slider ui-slider-horizontal">
                                <div id="slider-margin"></div>
                                <span class="donate-value" id="value-lower"></span>
                            </div>
                        </div> -->
                        <div class="form-submit">
                            <a href="https://www.paypal.com/in/signin" class="submit"> Purchase </a>
                            <!--<input type="submit" value="Submit" class="submit" id="submit" name="submit" />-->
                            <input type="submit" value="Reset" class="submit" id="reset" name="reset" />
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/nouislider/nouislider.min.js"></script>
    <script src="vendor/wnumb/wNumb.js"></script>
    <script src="vendor/jquery-validation/dist/jquery.validate.min.js"></script>
    <script src="vendor/jquery-validation/dist/additional-methods.min.js"></script>
    <script src="js/main.js"></script>
	<SCRIPT language=Javascript>
      
      function isNumberKey(evt)
      {
         var charCode = (evt.which) ? evt.which : event.keyCode
         if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;
 
         return true;
      }
      
   </SCRIPT>
</body>
</html>