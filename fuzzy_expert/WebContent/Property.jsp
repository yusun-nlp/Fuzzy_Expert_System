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
<title>Recommended Properties</title>

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
            <h1>Recommended Properties List</h1>
            <ul class="breadcrumbs">
                <li><a href="Welcome.jsp">Home</a></li>
                <li class="active">Recommended Properties List</li>
            </ul>
        </div>
    </div>
</div>
<!-- Sub Banner end -->

<!-- Properties section start -->
<div class="properties-section content-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-12">
                <!-- Property box 2 start -->
               
                <c:forEach items="${result}" var="result" varStatus="status">
                <div class="property-box-2" >
                    <div class="row">
                        <div class="col-lg-5 col-md-5 col-pad">
                            <div class="property-thumbnail">
                                <a href="properties-details.html" class="property-img">
                                    <img src="img/properties/properties-1.jpg" alt="properties" class="img-fluid">
                                    <div class="tag">Featured</div>
                                    <div class="price-box"><span>${result.price}</span>w RMB</div>
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-7 col-pad align-self-center">
                            <div class="detail">
                                <h3 class="title">
                                    <a href="properties-details.html">${result.name}</a>
                                </h3>
                                <h5 class="location">
                                    <a href="properties-details.html">
                                        <i class="flaticon-pin"></i> ${result.area}, ${result.location}
                                    </a>
                                </h5>
                                <ul class="facilities-list clearfix">
                                    <li>
                                        <i class="flaticon-bed"></i> ${result.layout}
                                    </li>
                                    <li>
                                        <i class="flaticon-bathroom"></i> ${result.status}
                                    </li>
                                    <li>
                                        <i class="flaticon-ui"></i> ${result.room_area} m*m
                                    </li>
                                    <li>
                                        <i class="flaticon-car"></i> ${result.year} built
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>
                
                <!-- Page navigation start -->
                <div class="pagination-box p-box-2 text-center">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                            <li class="page-item" >
                                <a class="page-link" href="Evaluate?page=${paging.page-1 }"><i class="fa fa-angle-left"></i></a>
                            </li>
                         <c:choose>
                         <c:when test="${paging.page==0}"> 
                           <li class="page-item"><a class="page-link active" href="Evaluate?page=0">1</a></li>
                           </c:when>
                           <c:otherwise>
                           <li class="page-item"><a class="page-link" href="Evaluate?page=0">1</a></li>
                           </c:otherwise> 
                           </c:choose>
                           <c:choose>
                         <c:when test="${paging.page==1}"> 
                            <li class="page-item"><a class="page-link active" href="Evaluate?page=1">2</a></li>
                            </c:when>
                           <c:otherwise>
                           <li class="page-item"><a class="page-link" href="Evaluate?page=1">2</a></li>
                           </c:otherwise> 
                           </c:choose>
                           <c:choose>
                         <c:when test="${paging.page==2}"> 
                            <li class="page-item"><a class="page-link active" href="Evaluate?page=2">3</a></li>
                            </c:when>
                           <c:otherwise>
                           <li class="page-item"><a class="page-link" href="Evaluate?page=2">3</a></li>
                           </c:otherwise> 
                           </c:choose>
                            <c:choose>
                         <c:when test="${paging.page==3}"> 
                            <li class="page-item"><a class="page-link active" href="Evaluate?page=3">4</a></li>
                            </c:when>
                           <c:otherwise>
                           <li class="page-item"><a class="page-link" href="Evaluate?page=3">4</a></li>
                           </c:otherwise> 
                           </c:choose>
                           <c:choose>
                         <c:when test="${paging.page==4}"> 
                            <li class="page-item"><a class="page-link active" href="Evaluate?page=4">5</a></li>
                            </c:when>
                           <c:otherwise>
                           <li class="page-item"><a class="page-link" href="Evaluate?page=4">5</a></li>
                           </c:otherwise> 
                           </c:choose>
                            <li class="page-item" >
                                <a class="page-link" href="Evaluate?page=${paging.page+1}"><i class="fa fa-angle-right"></i></a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="col-lg-4 col-md-12">
                <div class="sidebar-right">
                    <!-- Advanced search start -->
                    <div class="widget advanced-search">
                        <h3 class="sidebar-title">Search Properties</h3>
                        <form action="Evaluate" method="post">
                            <div class="form-group">
                                <select class="selectpicker search-fields" name="purpose">
                                <option>Purpose</option>
                                <option>For Invest</option>
                                <option>For Rigid Demand</option>
                                <option>For Improvement</option>
                            </select>
                            </div>
                            <div class="form-group">
                               <select class="selectpicker search-fields" name="people-number">
                                <option>People Number</option>
                                <option>1</option>
                                <option>2-3</option>
                                <option>4-6</option>
                                <option>≥7</option>
                            </select>
                            </div>
                            <div class="form-group">
                            <select class="selectpicker search-fields" name="any-car">
                                <option>Any Car</option>
                                <option>Yes</option>
                                <option>No</option>
                            </select>
                            </div>
                            <div class="form-group">
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
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="form-group">
                                <select class="selectpicker search-fields" name="any-elder">
                                <option>Any Elder</option>
                                <option>Yes</option>
                                <option>No</option>
                            </select>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <select class="selectpicker search-fields" name="any-child">
                                <option>Any Child</option>
                                <option>Yes</option>
                                <option>No</option>
                            </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                             <select class="selectpicker search-fields" name="budget">
                                <option>Budget</option>
                                <option>Tight</option>
                                <option>OK</option>
                                <option>Ample</option>
                            </select>
                            </div>
                            
                            <div class="form-group mb-0">
                                <input type="submit" class="btn button-theme btn-search btn-block" value="Search">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Properties section end -->

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