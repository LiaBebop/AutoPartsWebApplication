<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/checkout.css">
    <title>Title</title>
</head>
<body>
<script id="replace_with_navbar" src="nav.js"></script>
<h1>Checkout</h1>
<form action="#">
    <h2>Contact Information</h2>
    <fieldset>
        <label for="fname">First name:</label><br>
        <input type="text" id="fname" name="fname" class="text--input" value="Enter First Name"><br>
        <label for="lname">Last name:</label><br>
        <input type="text" id="lname" name="lname" class="text--input" value="Enter Last Name"><br>
        <label for="email">Email:</label><br>
        <input type="text" id="email" name="email" class="text--input"  value="Enter your email address"><br>
        <label for="Street">Street:</label><br>
        <input type="text" id="Street" name="Street" class="text--input" value="Enter Street Address"/><br>
        <label for="city">City:</label><br>
        <input type="text" id="city" name="city" class="text--input"  value="Enter City"><br>
        <label for="state">State:</label><br>
        <select name="state" id="state">
            <option disabled="" selected="">Select a State</option>
            <option value="Alabama">Alabama</option>
            <option value="Alaska">Alaska</option>
            <option value="Arizona">Arizona</option>
            <option value="Arkansas">Arkansas</option>
            <option value="California">California</option>
            <option value="Colorado">Colorado</option>
            <option value="Connecticut">Connecticut</option>
            <option value="Delaware">Delaware</option>
            <option value="Florida">Florida</option>
            <option value="Georgia">Georgia</option>
            <option value="Hawaii">Hawaii</option>
            <option value="Idaho">Idaho</option>
            <option value="Illinois">Illinois</option>
            <option value="Indiana">Indiana</option>
            <option value="Iowa">Iowa</option>
            <option value="Kansas">Kansas</option>
            <option value="Kentucky">Kentucky</option>
            <option value="Louisiana">Louisiana</option>
            <option value="Maine">Maine</option>
            <option value="Maryland">Maryland</option>
            <option value="Massachusetts">Massachusetts</option>
            <option value="Michigan">Michigan</option>
            <option value="Minnesota">Minnesota</option>
            <option value="Mississippi">Mississippi</option>
            <option value="Missouri">Missouri</option>
            <option value="Montana">Montana</option>
            <option value="Nebraska">Nebraska</option>
            <option value="Nevada">Nevada</option>
            <option value="New Hampshire">New Hampshire</option>
            <option value="New Jersey">New Jersey</option>
            <option value="New Mexico">New Mexico</option>
            <option value="New York">New York</option>
            <option value="North Carolina">North Carolina</option>
            <option value="North Dakota">North Dakota</option>
            <option value="Ohio">Ohio</option>
            <option value="Oklahoma">Oklahoma</option>
            <option value="Oregon">Oregon</option>
            <option value="Pennsylvania">Pennsylvania</option>
            <option value="Rhode Island">Rhode Island</option>
            <option value="South Carolina">South Carolina</option>
            <option value="South Dakota">South Dakota</option>
            <option value="Tennessee">Tennessee</option>
            <option value="Texas">Texas</option>
            <option value="Utah">Utah</option>
            <option value="Vermont">Vermont</option>
            <option value="Virginia">Virginia</option>
            <option value="Washington">Washington</option>
            <option value="West Virginia">West Virginia</option>
            <option value="Wisconsin">Wisconsin</option>
            <option value="Wyoming">Wyoming</option>
        </select><br><br>
        <label for="zip">Zip:</label><br>
        <input type="text" id="zip" name="zip" class="text--input"  value="Enter Zip Code"><br>
        <label for="cardNumber">Card number:</label><br>
        <input type="text" id="cardNumber" name="cardNumber" class="text--input" value="Enter 16 digit card number"><br>
        <label for="expirationDate">Expiration Date:</label><br>
        <input type="text" id="expirationDate" name="expirationDate" class="text--input" value="Enter expiration date"><br>
        <label for="CVV">CVV:</label><br>
        <input type="text" id="CVV" name="CVV" class="text--input" value="Enter CVV number"><br>
        <div class="total-section">
            <div class="total-item">
                <span class="total-label">Subtotal:</span>
                <span class="subtotal-price"></span>
            </div>
            <div class="total-item">
                <span class="total-label">Taxes:</span>
                <span class="taxes"></span>
            </div>
            <div class="total-item">
                <span class="total-label">Shipping:</span>
                <span class="shipping"></span>
            </div>
            <div class="total-item">
                <span class="total-label">Total:</span>
                <span class="total-price"></span>
            </div>
        </div>
        <input type="submit" id="submit" value="Submit">
    </fieldset>
</form>

</body>
</html>
