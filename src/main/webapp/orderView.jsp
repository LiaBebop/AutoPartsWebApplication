<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import = "Business.Order"%>
<%@page import = "Business.Customer"%>
<%@ page import="java.lang.reflect.Array" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Business.PartOrder" %>
<%@ page import="Business.Product" %>


<html>
<head>
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/orderView2.css">
    <title>Title</title>
</head>
<body>
<script id="replace_with_navbar" src="nav.js"></script>

<div id="main-container">

    <%
        Order order = (Order) session.getAttribute("customerOrder");
        Customer customer = new Customer();
        customer.selectDB(order.getCustomerID());

        String customerFName = "N/A";
        String customerLName = "";

        if (customer.getCustomerID() != 0) {
            customerFName = customer.getFirstName();
            customerLName = customer.getLastName();
        }

    %>


    <div class="container">
        <h1>Order Details</h1>
        <div class="order-details">

            <h2>Order Number: <%= order.getOrderID()%> </h2>
            <p>Customer: <%= customerFName %> <%= customerLName%></p>
            <p>Order Date: <%= order.getOrderDate()%></p>
            <p>Total Amount: <%= order.getOrderTotalCost() %></p>
            <p class="order-status">Order Status: <%= order.getOrderStatus()%> </p>

            <h3> Products ordered :</h3>
            <%
                ArrayList<PartOrder> partsOrderedArrayList = order.getOrderedPartsArrayList();
                Product product = new Product();
                for (PartOrder partOrder : partsOrderedArrayList){
                    product = partOrder.getPart();

                    out.print("<div class = order-card>");
                    out.print("<p> ID: " + product.getProductID() + "</p>");
                    out.print("<p> Name: " + product.getBrand() + " " + product.getName() + " " + product.getProductType() + "</p>");
                    out.print("<p> Quantity : " + partOrder.getQuantity() + "</p>");
                    out.print("<p> Total Cost : " + partOrder.getTotalOrderPrice() + "</p>");
                    out.print("</div>");
                }

            %>
        </div>
        <form action="change-order-status-servlet" method="get">
            <input type="hidden" name="orderId" value="123456">
            <label for="orderStatus">Change Order Status to:</label>
            <select name="orderStatus" id="orderStatus">
                <option value="Placed">Placed</option>
                <option value="Shipped">Shipped</option>
                <option value="Declined">Canceled</option>
            </select>
            <br>
            <input type="submit" value="Update Status">
        </form>


        <div class="return-link">
            <a href="load-all-orders-servlet">Back</a>
        </div>
    </div>
</div>

<script id="replace_with_footer" src="Padfeet.js"> </script>
</body>
</html>
