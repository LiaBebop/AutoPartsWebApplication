<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

<link rel="stylesheet" href="css/global.css">
<link rel="stylesheet" href="css/login2.css">


  <meta charset="UTF-8">
  <title>Login</title>

</head>
  <body>

  <div id="main-container">
    <script id="replace_with_navbar" src="nav.js"></script>
    <div class="container">
    <h1 id="title"> Customer Login </h1>
      <div class="login-area">
        <Form action="CustomerLoginServlet" method="get">
          <label for="email"><b>Email</b></label>
          <input type="text" placeholder="Enter Email"  id="email" name="email" required>

          <label for="psw"><b>Password</b></label>
          <input type="password" placeholder="Enter Password" id="psw" name="psw" required>
          <button type="submit">Login</button>
        </Form>
        <% String message = (String) request.getAttribute("message");
          if(message != null){
        %><p>Incorrect Username or Password. Please Try Again.</p>
        <%}%>
        <p class="divider"><span class="divider-span">Don't Have an Account?</span></p>
        <a href="createAccount.jsp" class="create-account-btn"> Create an account </a>
      </div>
    </div>
    <script id="replace_with_footer" src="Padfeet.js"> </script>

  </body>
</html>
