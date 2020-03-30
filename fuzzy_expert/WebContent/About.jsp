<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.fuzzy.Paging"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<base href="<%=basePath%>">
<title>About</title>

<!-- External CSS libraries -->
    <link rel="stylesheet" type="text/css" href="http://cdn.bootstrapmb.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-submenu.css">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-select.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/magnific-popup.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/leaflet.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/map.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/fonts/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/fonts/linearicons/style.css">
    <link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/css/dropzone.css">
    <link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/css/slick.css">

    <!-- Custom stylesheet -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" type="text/css" id="style_sheet" href="${pageContext.request.contextPath}/css/skins/default.css">

    <!-- Favicon icon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/favicon.ico" type="image/x-icon" >

    <!-- Google fonts -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,300,700">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/ie10-viewport-bug-workaround.css">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script  src="js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script  src="${pageContext.request.contextPath}/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script  src="js/html5shiv.min.js"></script>
    <script  src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="page_loader"></div>

<!-- Top header start -->
<header class="top-header" id="top-header-2">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-9 col-sm-7">
                <div class="list-inline">
                    <a href="mailto:17307130312@fudan.edu.cn"><i class="fa fa-envelope"></i>17307130312@fudan.edu.cn</a>
                    <a href="#"><i class="flaticon-pin"></i>Mon - Sun: 9:00am - 10:00pm</a>
                </div>
            </div>
            <div class="col-lg-4 col-md-3 col-sm-5">
                <ul class="top-social-media pull-right">
                    <li>
                        <a href="https://www.facebook.com/profile.php?id=100025711326553" class="facebook"><i class="fa fa-facebook"></i></a>
                    </li>
                    <li>
                        <a href="https://twitter.com/JuliaMo22841390" class="twitter"><i class="fa fa-twitter"></i></a>
                    </li>
                    <li>
                        <a href="https://www.instagram.com/cherryfish623/" class="rss"><i class="fa fa-instagram"></i></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</header>
<!-- Top header end -->

<!-- Main header start -->
<header class="main-header fixed-header-2">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="navbar-brand company-logo" href="Welcome.jsp">
                <img src="img/logos/fish.png" alt="logo">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav header-ml">
                    <li class="nav-item">
                        <a class="nav-link" href="Welcome.jsp">
                            Home
                        </a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="HouseList">
                            Properties
                        </a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link" href="About.jsp">
                            About
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</header>
<!-- Main header end -->

<!-- Sub banner start -->
<div class="sub-banner">
    <div class="container breadcrumb-area">
        <div class="breadcrumb-areas">
            <h1>About</h1>
            <ul class="breadcrumbs">
                <li><a href="Welcome.jsp">Home</a></li>
                <li class="active">About</li>
            </ul>
        </div>
    </div>
</div>
<!-- Sub Banner end -->

<!-- About city estate start -->
<div class="about-real-estate  content-area-5">
    <div class="container">
        <div class="row">
            <div class="col-xl-5 col-lg-5 col-md-12 col-sm-12 col-xs-12">
                <div class="about-slider-box simple-slider">
                    <img class="d-block w-100" src="img/hello.jpg" alt="about">
                </div>
            </div>
            <div class="col-xl-7 col-lg-7 col-md-12 col-sm-12 col-xs-12">
                <div class="about-text">
                    <h3>Welcome to Fish House</h3>
                    <p>
                    "Fish House" is an expert recommendation system designed for people who plan to buy 
                    second-hand house in Shanghai, but have no specific object and demand.
                    There are 6 <strong>required</strong> elements for you to choose to obtain the top 100 best choices. These are: 
                    </p>
                    <p class="mb-1">
                    <strong>Purpose:</strong> Choose "For Invest" if you hope to buy a house for investment. Choose 
                    "For Rigid Demand" if you hope to satisfy your housing demand, especially your 
                    first house. Choose "For Improvement" if you already have a house and hope to swap
                    it for a better one.
                    </p>
                    <p class="mb-1">
                    <strong>People Number:</strong> Choose the number scope of people that will live in your house.
                    </p>
                    <p class="mb-1">
                    <strong>Any Elder:</strong> If there is any elder that will live in your house.
                    </p>
                    <p class="mb-1">
                    <strong>Any Child:</strong> If there is any child that will live in your house.
                    </p>
                    <p class="mb-1">
                    <strong>Any Car:</strong> If you have any car.
                    </p>
                    <p class="mb-1">
                    <strong>Budget:</strong> There are three kind of description of your budget, "Tight", "OK" and "Ample". Please choose
                    the responding one based on your own budget. 
                    </p>
                    <p>
                    [Note] "Location" is optional. If you have specific demand on area, you can choose the corresponding option.
                    </p>
                    <p >If you choose "Property" page without choosing any demand, you will see 100 house samples.</p>
                    <p>If you have any question, feel free to contact me by clicking the email url in the upper left edge of the page.</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- About city estate end -->

<!-- Footer start -->
<footer class="footer">
    <div class="container footer-inner">
            <div class="col-xl-12 col-lg-12">
                <p class="copy sub-footer">© 2019 Artificial Intelligence Project owned by Sun Yu.</p>
            </div>
    </div>
</footer>
<!-- Footer end -->

<script src="${pageContext.request.contextPath}/js/jquery-2.2.0.min.js"></script>
<script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
<script src="http://cdn.bootstrapmb.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script  src="${pageContext.request.contextPath}/js/bootstrap-submenu.js"></script>
<script  src="${pageContext.request.contextPath}/js/rangeslider.js"></script>
<script  src="${pageContext.request.contextPath}/js/jquery.mb.YTPlayer.js"></script>
<script  src="${pageContext.request.contextPath}/js/bootstrap-select.min.js"></script>
<script  src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script>
<script  src="${pageContext.request.contextPath}/js/jquery.scrollUp.js"></script>
<script  src="${pageContext.request.contextPath}/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script  src="${pageContext.request.contextPath}/js/leaflet.js"></script>
<script  src="${pageContext.request.contextPath}/js/leaflet-providers.js"></script>
<script  src="${pageContext.request.contextPath}/js/leaflet.markercluster.js"></script>
<script  src="${pageContext.request.contextPath}/js/dropzone.js"></script>
<script  src="${pageContext.request.contextPath}/js/slick.min.js"></script>
<script  src="${pageContext.request.contextPath}/js/jquery.filterizr.js"></script>
<script  src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
<script  src="${pageContext.request.contextPath}/js/jquery.countdown.js"></script>
<script  src="${pageContext.request.contextPath}/js/maps.js"></script>
<script  src="${pageContext.request.contextPath}/js/app.js"></script>

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script  src="${pageContext.request.contextPath}/js/ie10-viewport-bug-workaround.js"></script>
<!-- Custom javascript -->
<script  src="${pageContext.request.contextPath}/js/ie10-viewport-bug-workaround.js"></script>
<script>
    $(function () {
        $("ul.pagination li.disabled a").click(function () {
            return false;
        });
    });
</script>
</body>
</html>