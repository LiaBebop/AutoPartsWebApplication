<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/productCategories.css">

    <title>Filters</title>
</head>

<body>
<script id="replace_with_navbar" src="nav.js"></script>

<h1 id="title">Filters</h1>

<div class="partType">

    <figure class="frame">
        <a href="load-product-servlet?ProductType=Air Filter"><img src="Photos/airFilters.jpg" alt="picture of air filter"></a>
        <figcaption class="pic-text">Air Filters</figcaption>
    </figure>

    <figure class="frame">
        <a href="load-product-servlet?ProductType=Cabin Air Filter"><img src="Photos/antifreeze.jpg" alt="picture of antifreeze and coolant"></a>
        <figcaption class="pic-text">Cabin Air Filters</figcaption>
    </figure>

    <figure class="frame">
        <a href="load-product-servlet?ProductType=Oil Filter"><img src="Photos/antifreeze.jpg" alt="picture of antifreeze and coolant"></a>
        <figcaption class="pic-text">Oil Filters</figcaption>
    </figure>

</div>

</body>
</html>
