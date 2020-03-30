<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<base href="<%=basePath%>">
<title>Fish House</title>

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
                        <a class="nav-link" href="HouseList" >
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

<!-- Banner start -->
<div class="banner" id="banner">
    <div id="bannerCarousole" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner banner-slider-inner">
            <div class="carousel-item banner-max-height active">
                <img class="d-block w-100 h-100" src="img/banner/background3.jpg" alt="banner">
                <div class="carousel-content container banner-info">
                    <div class="row">
                        <div class="col-lg-8 col-md-12">
                            <div class="b-info">
                                <h3>Find Your Home</h3>
                                <p>On nous apprend à vivre quand la vie est passée.</p>
                               
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12">
                            <div class="search-area-4">
                                <div class="container">
                                    <div class="inline-search-area asa-2">
                                        <h4>Find Your Apartments</h4>
                                        <h5>Discover the world</h5>
                                        <div class="row">
                                            <form action="Evaluate" method="post" class="form-group col-lg-12">
                                               
                            <select class="selectpicker search-fields" name="purpose">
                                <option>Purpose</option>
                                <option>For Invest</option>
                                <option>For Rigid Demand</option>
                                <option>For Improvement</option>
                            </select>
                        
                            <select class="selectpicker search-fields" name="people-number">
                                <option>People Number</option>
                                <option>1</option>
                                <option>2-3</option>
                                <option>4-6</option>
                                <option>≥7</option>
                            </select>
                       
                        
                            <select class="selectpicker search-fields" name="any-elder">
                                <option>Any Elder</option>
                                <option>Yes</option>
                                <option>No</option>
                            </select>
                        
                            <select class="selectpicker search-fields" name="any-child">
                                <option>Any Child</option>
                                <option>Yes</option>
                                <option>No</option>
                            </select>
                        
                            <select class="selectpicker search-fields" name="any-car">
                                <option>Any Car</option>
                                <option>Yes</option>
                                <option>No</option>
                            </select>
                        
                            <select class="selectpicker search-fields" name="location">
                                <option>Location(Optional)</option>
                                <option>Jing An</option>
                                <option>Huang Pu</option>
                                <option>Xu Hui</option>
                                <option>Chang Ning</option>
                                <option>Hong Kou</option>
                                <option>Pu Tuo</option>
                                <option>Yang Pu</option>
                                <option>Pu Dong</option>
                                <option>Min Hang</option>
                                <option>Bao Shan</option>
                                <option>Jia Ding</option>
                                <option>Song Jiang</option>
                                <option>Qing Pu</option>
                                <option>Feng Xian</option>
                                <option>Jin Shan</option>
                            </select>
                            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6 form-group"></div>
                        	<select class="selectpicker search-fields" name="budget">
                                <option>Budget</option>
                                <option>Tight</option>
                                <option>OK</option>
                                <option>Ample</option>
                            </select>
                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6 form-group"></div>
                            <input type="submit" class="btn button-theme btn-search btn-block" value="Find">
                            
                        
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Banner end -->

<!-- Search area 3 start -->
<div class="search-area-3 clearfix d-lg-none d-xl-none">
    <div class="container">
        <div class="inline-search-area">
            <div class="row row-3">
                <form action="Evaluate" method="post" class="form-group col-lg-12">
                                               
                            <select class="selectpicker search-fields" name="purpose">
                                <option>Purpose</option>
                                <option>For Invest</option>
                                <option>For Rigid Demand</option>
                                <option>For Improvement</option>
                            </select>
                        
                            <select class="selectpicker search-fields" name="people-number">
                                <option>People Number</option>
                                <option>1</option>
                                <option>2-3</option>
                                <option>4-6</option>
                                <option>≥7</option>
                            </select>
                       
                        
                            <select class="selectpicker search-fields" name="any-elder">
                                <option>Any Elder</option>
                                <option>Yes</option>
                                <option>No</option>
                            </select>
                        
                            <select class="selectpicker search-fields" name="any-child">
                                <option>Any Child</option>
                                <option>Yes</option>
                                <option>No</option>
                            </select>
                        
                            <select class="selectpicker search-fields" name="any-car">
                                <option>Any Car</option>
                                <option>Yes</option>
                                <option>No</option>
                            </select>
                        
                            <select class="selectpicker search-fields" name="location">
                                <option>Location(Optional)</option>
                                <option>Jing An</option>
                                <option>Huang Pu</option>
                                <option>Xu Hui</option>
                                <option>Chang Ning</option>
                                <option>Hong Kou</option>
                                <option>Pu Tuo</option>
                                <option>Yang Pu</option>
                                <option>Pu Dong</option>
                                <option>Min Hang</option>
                                <option>Bao Shan</option>
                                <option>Jia Ding</option>
                                <option>Song Jiang</option>
                                <option>Qing Pu</option>
                                <option>Feng Xian</option>
                                <option>Jin Shan</option>
                            </select>
                            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6 form-group"></div>
                        	<select class="selectpicker search-fields" name="budget">
                                <option>Budget</option>
                                <option>Tight</option>
                                <option>OK</option>
                                <option>Ample</option>
                            </select>
                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6 form-group"></div>
                            <input type="submit" class="btn button-theme btn-search btn-block" value="Find">
                    </form>
            </div>
        </div>
    </div>
</div>
<!-- Search area 3 end -->


<!-- Footer start -->
<footer class="footer">
    <div class="container footer-inner">
        <div class="row">
            <div class="col-xl-12 col-lg-12">
                <p class="copy sub-footer">© 2019 Artificial Intelligence Project owned by Sun Yu.</p>
            </div>
        </div>
    </div>
</footer>
<!-- Footer end -->

<script src="${pageContext.request.contextPath}/js/jquery-2.2.0.min.js"></script> 
 <script src="${pageContext.request.contextPath}/js/popper.min.js"></script> 
 <script src="http://cdn.bootstrapmb.com/bootstrap/4.0.0/js/bootstrap.min.js"></script> 
 <script src="${pageContext.request.contextPath}/js/bootstrap-submenu.js"></script> 
 <script src="${pageContext.request.contextPath}/js/rangeslider.js"></script> 
 <script src="${pageContext.request.contextPath}/js/jquery.mb.YTPlayer.js"></script> 
 <script src="${pageContext.request.contextPath}/js/bootstrap-select.min.js"></script> 
 <script src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script> 
 <script src="${pageContext.request.contextPath}/js/jquery.scrollUp.js"></script> 
 <script src="${pageContext.request.contextPath}/js/jquery.mCustomScrollbar.concat.min.js"></script> 
 <script src="${pageContext.request.contextPath}/js/leaflet.js"></script> 
 <script src="${pageContext.request.contextPath}/js/leaflet-providers.js"></script> 
 <script src="${pageContext.request.contextPath}/js/leaflet.markercluster.js"></script> 
 <script src="${pageContext.request.contextPath}/js/dropzone.js"></script> 
 <script src="${pageContext.request.contextPath}/js/slick.min.js"></script> 
 <script src="${pageContext.request.contextPath}/js/jquery.filterizr.js"></script> 
 <script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script> 
 <script src="${pageContext.request.contextPath}/js/jquery.countdown.js"></script> 
 <script src="${pageContext.request.contextPath}/js/maps.js"></script> 
 <script src="${pageContext.request.contextPath}/js/app.js"></script> 
 
  <!-- IE10 viewport hack for Surface/desktop Windows 8 bug --> 
 <script src="${pageContext.request.contextPath}/js/ie10-viewport-bug-workaround.js"></script> 
 <!-- Custom javascript --> 
 <script src="${pageContext.request.contextPath}/js/ie10-viewport-bug-workaround.js"></script> 
</body>
</html>