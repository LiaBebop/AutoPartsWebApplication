<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="css/global.css">
  <link rel="stylesheet" href="css/createAccount.css">
    <title>SignUp</title>
<body>
  <script id="replace_with_navbar" src="nav.js"></script>
<% String name = (String) request.getAttribute("name"); String invalid = (String) request.getAttribute("invalid");
   String pass = (String) request.getAttribute("pass"); String zip = (String) request.getAttribute("zip");
   String email = (String) request.getAttribute("email");
%>


      <h1>Create Your Account </h1>
      <div class="container">
      <form action="create-customer-servlet" method="get">
      <p>Please fill out this form to complete account creation</p>

      <label for="Fname"><b>First Name</b></label>
      <input type="text" placeholder="Enter First Name" name="Fname" id="Fname" required>

      <label for ="Lname"><b> Last Name</b></label>
      <input type="text" placeholder="Enter Last Name" name="Lname" id="Lname" required>
      <% if(name != null && name.equals("name")){%><p>Please Enter A Valid Name.</p><%}%>

      <label for="email"><b>Email</b></label>
      <input type="text" placeholder="Enter Email" name="email" id="email" required>
      <% if(email != null && email.equals("email")){%><p>Please Enter A Valid Email.</p><%}%>
      <label for="psw"><b>Password (Must Include at least 6 characters with 1 Uppercase and Lowercase character, and 1 number)</b></label>
      <input type="password" placeholder="Enter Password" name="psw" id="psw" required>
      <% if(pass != null && pass.equals("pass")){%><p>Please Enter A Valid Password.</p><%}%>
      <label for="street"><b>Street</b></label>
      <input type="text" placeholder="Enter Street" name="street" id="street" required>

      <label for="city"><b>City</b></label>
      <input type="text" placeholder="Enter city" name="city" id="city" required>

      <label for="zip"><b>Zip</b></label>
      <input type="text" placeholder="Enter Zip" name="zip" id="zip" required>
      <% if(zip != null && zip.equals("zip")){%><p> Zip Code is Invalid.</p><%}%>
      <label for="state"><b>State</b></label>
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
      </select>
      <br>
      <br>
      <br>
      <br>

      <div class="clearfix">
        <button type="button" class="cancelbtn">Cancel</button>
        <button type="submit" class="signupbtn">Sign Up</button>
      </div>
    </div>
  </form>

</body>
<script id="replace_with_footer" src="Padfeet.js"> </script>
</html>
