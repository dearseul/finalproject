<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="java.util.*"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="form"	uri="http://www.springframework.org/tags/form" %>  
<c:set var="path" value="${pageContext.request.contextPath}"/> 
<fmt:requestEncoding value="UTF-8" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
<meta content="Coderthemes" name="author" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<!-- App favicon -->
<link rel="shortcut icon" href="${path}/Admin/dist/assets/images/favicon.ico">

<!-- App css -->
<link href="${path}/Admin/dist/assets/css/default/bootstrap.min.css" rel="stylesheet" type="text/css" id="bs-default-stylesheet" />
<link href="${path}/Admin/dist/assets/css/default/app.min.css" rel="stylesheet" type="text/css" id="app-default-stylesheet" />

<link href="${path}/Admin/dist/assets/css/default/bootstrap-dark.min.css" rel="stylesheet" type="text/css" id="bs-dark-stylesheet" />
<link href="${path}/Admin/dist/assets/css/default/app-dark.min.css" rel="stylesheet" type="text/css" id="app-dark-stylesheet" />

<!-- icons -->
<link href="${path}/Admin/dist/assets/css/icons.min.css" rel="stylesheet" type="text/css" />

<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script type="text/javascript">
<%--
 
 
--%>

   $(document).ready(function(){
	   var mem = "${mem.id}";
	   if(mem==""){
			alert("세션이 만료되어 로그인화면으로 이동합니다.");
			location.href="${path}/main.do?method=loginform"; // 세션값 없을 때 바로 로그인폼 이동
		}
   });
</script>
</head>
<body class="loading">

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Topbar Start -->
            <div class="navbar-custom">
                <div class="container-fluid">
    
                    <ul class="list-unstyled topnav-menu float-end mb-0">

                        <li class="d-none d-lg-block">
                            <form class="app-search">
                                <div class="app-search-box dropdown">
                                    <div class="input-group">
                                        <input type="search" class="form-control" placeholder="Search..." id="top-search">
                            
                                        <button class="btn" type="submit">
                                            <i class="fe-search"></i>
                                        </button>
                                    </div>
                                    <div class="dropdown-menu dropdown-lg" id="search-dropdown">
                                        <!-- item-->
                                        <div class="dropdown-header noti-title">
                                            <h5 class="text-overflow mb-2">Found <span class="text-danger">09</span> results</h5>
                                        </div>
            
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            <i class="fe-home me-1"></i>
                                            <span>Analytics Report</span>
                                        </a>
            
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            <i class="fe-aperture me-1"></i>
                                            <span>How can I help you?</span>
                                        </a>
                            
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            <i class="fe-settings me-1"></i>
                                            <span>User profile settings</span>
                                        </a>

                                        <!-- item-->
                                        <div class="dropdown-header noti-title">
                                            <h6 class="text-overflow mb-2 text-uppercase">Users</h6>
                                        </div>

                                        <div class="notification-list">
                                            <!-- item-->
                                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                                <div class="d-flex">
                                                    <img class="d-flex me-2 rounded-circle" src="${path}/Admin/dist/assets/images/users/avatar-2.jpg" alt="Generic placeholder image" height="32">
                                                    <div>
                                                        <h5 class="m-0 font-14">Erwin E. Brown</h5>
                                                        <span class="font-12 mb-0">UI Designer</span>
                                                    </div>
                                                </div>
                                            </a>

                                            <!-- item-->
                                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                                <div class="d-flex">
                                                    <img class="d-flex me-2 rounded-circle" src="${path}/Admin/dist/assets/images/users/avatar-5.jpg" alt="Generic placeholder image" height="32">
                                                    <div>
                                                        <h5 class="m-0 font-14">Jacob Deo</h5>
                                                        <span class="font-12 mb-0">Developer</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
            
                                    </div>  
                                </div>
                            </form>
                        </li>
    
                        <li class="dropdown d-inline-block d-lg-none">
                            <a class="nav-link dropdown-toggle arrow-none waves-effect waves-light" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                <i class="fe-search noti-icon"></i>
                            </a>
                            <div class="dropdown-menu dropdown-lg dropdown-menu-end p-0">
                                <form class="p-3">
                                    <input type="text" class="form-control" placeholder="Search ..." aria-label="Search">
                                </form>
                            </div>
                        </li>
    
                        <li class="dropdown d-none d-lg-inline-block">
                            <a class="nav-link dropdown-toggle arrow-none waves-effect waves-light" data-toggle="fullscreen" href="#">
                                <i class="fe-maximize noti-icon"></i>
                            </a>
                        </li>
    
                        <li class="dropdown d-none d-lg-inline-block topbar-dropdown">
                            <a class="nav-link dropdown-toggle arrow-none waves-effect waves-light" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                <i class="fe-grid noti-icon"></i>
                            </a>
                            <div class="dropdown-menu dropdown-lg dropdown-menu-end p-0">
    
                                <div class="p-2">
                                    <div class="row g-0">
                                        <div class="col">
                                            <a class="dropdown-icon-item" href="#">
                                                <img src="${path}/Admin/dist/assets/images/brands/github.png" alt="Github">
                                                <span>GitHub</span>
                                            </a>
                                        </div>
                                        <div class="col">
                                            <a class="dropdown-icon-item" href="#">
                                                <img src="${path}/Admin/dist/assets/images/brands/dribbble.png" alt="dribbble">
                                                <span>Dribbble</span>
                                            </a>
                                        </div>
                                        <div class="col">
                                            <a class="dropdown-icon-item" href="#">
                                                <img src="${path}/Admin/dist/assets/images/brands/slack.png" alt="slack">
                                                <span>Slack</span>
                                            </a>
                                        </div>
                                    </div>
    
                                    <div class="row g-0">
                                        <div class="col">
                                            <a class="dropdown-icon-item" href="#">
                                                <img src="${path}/Admin/dist/assets/images/brands/g-suite.png" alt="G Suite">
                                                <span>G Suite</span>
                                            </a>
                                        </div>
                                        <div class="col">
                                            <a class="dropdown-icon-item" href="#">
                                                <img src="${path}/Admin/dist/assets/images/brands/bitbucket.png" alt="bitbucket">
                                                <span>Bitbucket</span>
                                            </a>
                                        </div>
                                        <div class="col">
                                            <a class="dropdown-icon-item" href="#">
                                                <img src="${path}/Admin/dist/assets/images/brands/dropbox.png" alt="dropbox">
                                                <span>Dropbox</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
    
                            </div>
                        </li>
    
                        <li class="dropdown d-none d-lg-inline-block topbar-dropdown">
                            <a class="nav-link dropdown-toggle arrow-none waves-effect waves-light" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                <img src="${path}/Admin/dist/assets/images/flags/us.jpg" alt="user-image" height="14">
                            </a>
                            <div class="dropdown-menu dropdown-menu-end">
    
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item">
                                    <img src="${path}/Admin/dist/assets/images/flags/germany.jpg" alt="user-image" class="me-1" height="12"> <span class="align-middle">German</span>
                                </a>
    
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item">
                                    <img src="${path}/Admin/dist/assets/images/flags/italy.jpg" alt="user-image" class="me-1" height="12"> <span class="align-middle">Italian</span>
                                </a>
    
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item">
                                    <img src="${path}/Admin/dist/assets/images/flags/spain.jpg" alt="user-image" class="me-1" height="12"> <span class="align-middle">Spanish</span>
                                </a>
    
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item">
                                    <img src="${path}/Admin/dist/assets/images/flags/russia.jpg" alt="user-image" class="me-1" height="12"> <span class="align-middle">Russian</span>
                                </a>
    
                            </div>
                        </li>
            
                        <li class="dropdown notification-list topbar-dropdown">
                            <a class="nav-link dropdown-toggle waves-effect waves-light" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                <i class="fe-bell noti-icon"></i>
                                <span class="badge bg-danger rounded-circle noti-icon-badge">5</span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end dropdown-lg">
    
                                <!-- item-->
                                <div class="dropdown-item noti-title">
                                    <h5 class="m-0">
                                        <span class="float-end">
                                            <a href="" class="text-dark">
                                                <small>Clear All</small>
                                            </a>
                                        </span>Notification
                                    </h5>
                                </div>
    
                                <div class="noti-scroll" data-simplebar>
    
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item active">
                                        <div class="notify-icon bg-soft-primary text-primary">
                                            <i class="mdi mdi-comment-account-outline"></i>
                                        </div>
                                        <p class="notify-details">Doug Dukes commented on Admin Dashboard
                                            <small class="text-muted">1 min ago</small>
                                        </p>
                                    </a>

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <div class="notify-icon">
                                            <img src="${path}/Admin/dist/assets/images/users/avatar-2.jpg" class="img-fluid rounded-circle" alt="" /> </div>
                                        <p class="notify-details">Mario Drummond</p>
                                        <p class="text-muted mb-0 user-msg">
                                            <small>Hi, How are you? What about our next meeting</small>
                                        </p>
                                    </a>

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <div class="notify-icon">
                                            <img src="${path}/Admin/dist/assets/images/users/avatar-4.jpg" class="img-fluid rounded-circle" alt="" /> </div>
                                        <p class="notify-details">Karen Robinson</p>
                                        <p class="text-muted mb-0 user-msg">
                                            <small>Wow ! this admin looks good and awesome design</small>
                                        </p>
                                    </a>

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <div class="notify-icon bg-soft-warning text-warning">
                                            <i class="mdi mdi-account-plus"></i>
                                        </div>
                                        <p class="notify-details">New user registered.
                                            <small class="text-muted">5 hours ago</small>
                                        </p>
                                    </a>

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <div class="notify-icon bg-info">
                                            <i class="mdi mdi-comment-account-outline"></i>
                                        </div>
                                        <p class="notify-details">Caleb Flakelar commented on Admin
                                            <small class="text-muted">4 days ago</small>
                                        </p>
                                    </a>

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <div class="notify-icon bg-secondary">
                                            <i class="mdi mdi-heart"></i>
                                        </div>
                                        <p class="notify-details">Carlos Crouch liked
                                            <b>Admin</b>
                                            <small class="text-muted">13 days ago</small>
                                        </p>
                                    </a>
                                </div>
    
                                <!-- All-->
                                <a href="javascript:void(0);" class="dropdown-item text-center text-primary notify-item notify-all">
                                    View all
                                    <i class="fe-arrow-right"></i>
                                </a>
    
                            </div>
                        </li>
    
                        <li class="dropdown notification-list topbar-dropdown">
                            <a class="nav-link dropdown-toggle nav-user me-0 waves-effect waves-light" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                <img src="${path}/Admin/dist/assets/images/users/avatar-1.jpg" alt="user-image" class="rounded-circle">
                                <span class="pro-user-name ms-1">
                                    ${mem.id}<i class="mdi mdi-chevron-down"></i> 
                                </span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end profile-dropdown ">
                                <!-- item-->
                                <div class="dropdown-header noti-title">
                                    <h6 class="text-overflow m-0">Welcome !</h6>
                                </div>
    
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <i class="ri-account-circle-line"></i>
                                    <span>My Account</span>
                                </a>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <i class="ri-settings-3-line"></i>
                                    <span>Settings</span>
                                </a>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <i class="ri-wallet-line"></i>
                                    <span>My Wallet <span class="badge bg-success float-end">3</span> </span>
                                </a>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <i class="ri-lock-line"></i>
                                    <span>Lock Screen</span>
                                </a>

                                <div class="dropdown-divider"></div>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <i class="ri-logout-box-line"></i>
                                    <span>Logout</span>
                                </a>
    
                            </div>
                        </li>
    
                        <li class="dropdown notification-list">
                            <a href="javascript:void(0);" class="nav-link right-bar-toggle waves-effect waves-light">
                                <i class="fe-settings noti-icon"></i>
                            </a>
                        </li>
    
                    </ul>

                    <!-- LOGO -->
                    <div class="logo-box">
                        <a href="index.html" class="logo logo-dark text-center">
                            <span class="logo-sm">
                                <img src="${path}/Admin/dist/assets/images/logo-sm-dark.png" alt="" height="24">
                                <!-- <span class="logo-lg-text-light">Minton</span> -->
                            </span>
                            <span class="logo-lg">
                                <img src="${path}/Admin/dist/assets/images/logo-dark.png" alt="" height="20">
                                <!-- <span class="logo-lg-text-light">M</span> -->
                            </span>
                        </a>

                        <a href="index.html" class="logo logo-light text-center">
                            <span class="logo-sm">
                                <img src="${path}/Admin/dist/assets/images/logo-sm.png" alt="" height="24">
                            </span>
                            <span class="logo-lg">
                                <img src="${path}/Admin/dist/assets/images/logo-light.png" alt="" height="20">
                            </span>
                        </a>
                    </div>
    
                    <ul class="list-unstyled topnav-menu topnav-menu-left m-0">
                        <li>
                            <button class="button-menu-mobile waves-effect waves-light">
                                <i class="fe-menu"></i>
                            </button>
                        </li>

                        <li>
                            <!-- Mobile menu toggle (Horizontal Layout)-->
                            <a class="navbar-toggle nav-link" data-bs-toggle="collapse" data-bs-target="#topnav-menu-content">
                                <div class="lines">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </div>
                            </a>
                            <!-- End mobile menu toggle-->
                        </li>   
            
                        <li class="dropdown d-none d-xl-block">
                            <a class="nav-link dropdown-toggle waves-effect waves-light" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                Create New
                                <i class="mdi mdi-chevron-down"></i> 
                            </a>
                            <div class="dropdown-menu">
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item">
                                    <i class="fe-briefcase me-1"></i>
                                    <span>New Projects</span>
                                </a>
    
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item">
                                    <i class="fe-user me-1"></i>
                                    <span>Create Users</span>
                                </a>
    
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item">
                                    <i class="fe-bar-chart-line- me-1"></i>
                                    <span>Revenue Report</span>
                                </a>
    
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item">
                                    <i class="fe-settings me-1"></i>
                                    <span>Settings</span>
                                </a>
    
                                <div class="dropdown-divider"></div>
    
                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item">
                                    <i class="fe-headphones me-1"></i>
                                    <span>Help & Support</span>
                                </a>
    
                            </div>
                        </li>
    
                        <li class="dropdown dropdown-mega d-none d-xl-block">
                            <a class="nav-link dropdown-toggle waves-effect waves-light" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                Mega Menu
                                <i class="mdi mdi-chevron-down"></i> 
                            </a>
                            <div class="dropdown-menu dropdown-megamenu">
                                <div class="row">
                                    <div class="col-sm-8">
                            
                                        <div class="row">
                                            <div class="col-md-4">
                                                <h5 class="text-dark mt-0">UI Components</h5>
                                                <ul class="list-unstyled megamenu-list">
                                                    <li>
                                                        <a href="javascript:void(0);">Widgets</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);">Nestable List</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);">Range Sliders</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);">Masonry Items</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);">Sweet Alerts</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);">Treeview Page</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);">Tour Page</a>
                                                    </li>
                                                </ul>
                                            </div>
    
                                            <div class="col-md-4">
                                                <h5 class="text-dark mt-0">Applications</h5>
                                                <ul class="list-unstyled megamenu-list">
                                                    <li>
                                                        <a href="javascript:void(0);">eCommerce Pages</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);">CRM Pages</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);">Email</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);">Calendar</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);">Team Contacts</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);">Task Board</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);">Email Templates</a>
                                                    </li>
                                                </ul>
                                            </div>
    
                                            <div class="col-md-4">
                                                <h5 class="text-dark mt-0">Extra Pages</h5>
                                                <ul class="list-unstyled megamenu-list">
                                                    <li>
                                                        <a href="javascript:void(0);">Left Sidebar with User</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);">Menu Collapsed</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);">Small Left Sidebar</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);">New Header Style</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);">Search Result</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);">Gallery Pages</a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);">Maintenance & Coming Soon</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="text-center mt-3">
                                            <h3 class="text-dark">Special Discount Sale!</h3>
                                            <h4>Save up to 70% off.</h4>
                                            <button class="btn btn-primary btn-rounded mt-3">Download Now</button>
                                        </div>
                                    </div>
                                </div>
    
                            </div>
                        </li>
                    </ul>
                    <div class="clearfix"></div>
                </div>
            </div>
            <!-- end Topbar -->

            <!-- ========== Left Sidebar Start ========== -->
            <div class="left-side-menu">

                <!-- LOGO -->
                <div class="logo-box">
                    <a href="index.html" class="logo logo-dark text-center">
                        <span class="logo-sm">
                            <img src="${path}/Admin/dist/assets/images/logo-sm-dark.png" alt="" height="24">
                            <!-- <span class="logo-lg-text-light">Minton</span> -->
                        </span>
                        <span class="logo-lg">
                            <img src="${path}/Admin/dist/assets/images/logo-dark.png" alt="" height="20">
                            <!-- <span class="logo-lg-text-light">M</span> -->
                        </span>
                    </a>

                    <a href="index.html" class="logo logo-light text-center">
                        <span class="logo-sm">
                            <img src="${path}/Admin/dist/assets/images/logo-sm.png" alt="" height="24">
                        </span>
                        <span class="logo-lg">
                            <img src="${path}/Admin/dist/assets/images/logo-light.png" alt="" height="20">
                        </span>
                    </a>
                </div>

                <div class="h-100" data-simplebar>

                    <!-- User box -->
                    <div class="user-box text-center">
                        <img src="${path}/Admin/dist/assets/images/users/avatar-1.jpg" alt="user-img" title="Mat Helme"
                            class="rounded-circle avatar-md">
                        <div class="dropdown">
                            <a href="#" class="text-reset dropdown-toggle h5 mt-2 mb-1 d-block"
                                data-bs-toggle="dropdown">${mem.id}</a>
                            <div class="dropdown-menu user-pro-dropdown">

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <i class="fe-user me-1"></i>
                                    <span>My Account</span>
                                </a>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <i class="fe-settings me-1"></i>
                                    <span>Settings</span>
                                </a>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <i class="fe-lock me-1"></i>
                                    <span>Lock Screen</span>
                                </a>

                                <!-- item-->
                                <a href="javascript:void(0);" class="dropdown-item notify-item">
                                    <i class="fe-log-out me-1"></i>
                                    <span>Logout</span>
                                </a>

                            </div>
                        </div>
                        <p class="text-reset">Admin Head</p>
                    </div>

                    <!--- Sidemenu -->
                    <div id="sidebar-menu">

                        <ul id="side-menu">

                            <li class="menu-title">Navigation</li>
                
                            <li>
                                <a href="#sidebarDashboards" data-bs-toggle="collapse" aria-expanded="false" aria-controls="sidebarDashboards" class="waves-effect">
                                    <i class="ri-dashboard-line"></i>
                                    <span class="badge bg-success rounded-pill float-end">3</span>
                                    <span> Dashboards </span>
                                </a>
                                <div class="collapse" id="sidebarDashboards">
                                    <ul class="nav-second-level">
                                        <li>
                                            <a href="index.html">ALL</a>
                                        </li>
                                       <li>
                                            <a href="dashboard-crm.html">Individual</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>

                            

                            <li class="menu-title mt-2">Apps</li>

                            <li>
                                <a href="${path}/main.do?method=apps_chat">
                                    <i class="ri-message-2-line"></i>
                                    <span> Chat </span>
                                </a>
                            </li>

                            <li>
                                <a href="${path}/main.do?method=calendar">
                                    <i class="ri-calendar-2-line"></i>
                                    <span> Calendar </span>
                                </a>
                            </li>
							<li>
                                <a href="apps-calendar.html">
                                    <i class="ri-calendar-2-line"></i>
                                    <span> Gantt </span>
                                </a>
                            </li>
                            

                            <li>
                                <a href="apps-companies.html">
                                    <i class="ri-building-4-line"></i>
                                    <span> Companies </span>
                                </a>
                            </li>

                            <li>
                                <a href="${path}/main.do?method=main">
                                    <i class="ri-task-line"></i>
                                    <span> Tasks </span>
                                </a>
                            </li>

                            

                            <li>
                                <a href="#sidebarContacts" data-bs-toggle="collapse" aria-expanded="false" aria-controls="sidebarContacts">
                                    <i class="ri-profile-line"></i>
                                    <span> Contacts </span>
                                    <span class="menu-arrow"></span>
                                </a>
                                <div class="collapse" id="sidebarContacts">
                                    <ul class="nav-second-level">
                                        <li>
                                            <a href="${path}/main.do?method=contacts_list">Members List</a>
                                        </li>
                                        <li>
                                            <a href="${path}/main.do?method=contacts_profile">Profile</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>

                            <li>
                                <a href="${path}/main.do?method=file_manager">
                                    <i class="ri-folders-line"></i>
                                    <span> File Manager </span>
                                </a>
                            </li>
                        </ul>

                    </div>
                    <!-- End Sidebar -->

                    <div class="clearfix"></div>

                </div>
                <!-- Sidebar -left -->

            </div>
            <!-- Left Sidebar End -->

             <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->

             <div class="content-page">
                <div class="content">

                    <!-- Start Content-->
                    <div class="container-fluid">

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <h4 class="page-title">File Manager</h4>
                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Minton</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Apps</a></li>
                                            <li class="breadcrumb-item active">File Manager</li>
                                        </ol>
                                    </div>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="fileupload btn btn-success waves-effect waves-light mb-3">
                                            <span><i class="mdi mdi-cloud-upload me-1"></i> Upload Files</span>
                                            <input type="file" class="upload">
                                        </div>
                                        <div class="table-responsive">
                                            <table class="table table-centered  table-nowrap mb-0">
                                                <thead class="table-light">
                                                    <tr>
                                                        <th scope="col">File Name</th>
                                                        <th scope="col">Date Modified</th>
                                                        <th scope="col">Size</th>
                                                        <th scope="col">Contributors</th>
                                                        <th scope="col" class="text-center" style="width: 125px;">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <img src="${path}/Admin/dist/assets/images/file-icons/pdf.svg" height="30" alt="icon" class="me-2">
                                                            <a href="javascript:void(0);" class="text-dark">Invoice-project.pdf</a>
                                                        </td>
                                                        <td class="font-13">17-Jan-18 2:55 PM</td>
                                                        <td>2.31 MB</td>
                                                        <td>
                                                            <img src="${path}/Admin/dist/assets/images/users/avatar-4.jpg" alt="task-user" class="avatar-sm img-thumbnail rounded-circle"> 
                                                            <img src="${path}/Admin/dist/assets/images/users/avatar-6.jpg" alt="task-user" class="avatar-sm img-thumbnail rounded-circle"> 
                                                        </td>
                                                        <td>
                                                            <ul class="list-inline table-action m-0">
                                                                <li class="list-inline-item"> 
                                                                    <a href="javascript:void(0);" class="action-icon px-1"> <i class="mdi mdi-pencil"></i></a>
                                                                </li>
                                                                <li class="list-inline-item"> 
                                                                    <a href="javascript:void(0);" class="action-icon px-1"> <i class="mdi mdi-delete"></i></a>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img src="${path}/Admin/dist/assets/images/file-icons/png.svg" height="30" alt="icon" class="me-2">
                                                            <a href="javascript:void(0);" class="text-dark">Dashboard-design.png</a>
                                                        </td>
                                                        <td class="font-13">21-May-18 1:12 PM</td>
                                                        <td>3.89 MB</td>
                                                        <td>
                                                            <img src="${path}/Admin/dist/assets/images/users/avatar-5.jpg" alt="task-user" class="avatar-sm img-thumbnail rounded-circle"> 
                                                        </td>
                                                        <td>
                                                            <ul class="list-inline table-action m-0">
                                                                <li class="list-inline-item"> 
                                                                    <a href="javascript:void(0);" class="action-icon px-1"> <i class="mdi mdi-pencil"></i></a>
                                                                </li>
                                                                <li class="list-inline-item"> 
                                                                    <a href="javascript:void(0);" class="action-icon px-1"> <i class="mdi mdi-delete"></i></a>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img src="${path}/Admin/dist/assets/images/file-icons/psd.svg" height="30" alt="icon" class="me-2">
                                                            <a href="javascript:void(0);" class="text-dark">Graphic-logo-main.psd</a>
                                                        </td>
                                                        <td class="font-13">23-May-18 11:34 AM</td>
                                                        <td>125 MB</td>
                                                        <td>
                                                            <img src="${path}/Admin/dist/assets/images/users/avatar-1.jpg" alt="task-user" class="avatar-sm img-thumbnail rounded-circle"> 
                                                            <img src="${path}/Admin/dist/assets/images/users/avatar-2.jpg" alt="task-user" class="avatar-sm img-thumbnail rounded-circle"> 
                                                            <img src="${path}/Admin/dist/assets/images/users/avatar-3.jpg" alt="task-user" class="avatar-sm img-thumbnail rounded-circle"> 
                                                        </td>
                                                        <td>
                                                            <ul class="list-inline table-action m-0">
                                                                <li class="list-inline-item"> 
                                                                    <a href="javascript:void(0);" class="action-icon px-1"> <i class="mdi mdi-pencil"></i></a>
                                                                </li>
                                                                <li class="list-inline-item"> 
                                                                    <a href="javascript:void(0);" class="action-icon px-1"> <i class="mdi mdi-delete"></i></a>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img src="${path}/Admin/dist/assets/images/file-icons/avi.svg" height="30" alt="icon" class="me-2">
                                                            <a href="javascript:void(0);" class="text-dark">Audio-video-file.avi</a>
                                                        </td>
                                                        <td class="font-13">18-Feb-18 4:29 PM</td>
                                                        <td>12.3 MB</td>
                                                        <td>
                                                            <img src="${path}/Admin/dist/assets/images/users/avatar-7.jpg" alt="task-user" class="avatar-sm img-thumbnail rounded-circle"> 
                                                            <img src="${path}/Admin/dist/assets/images/users/avatar-8.jpg" alt="task-user" class="avatar-sm img-thumbnail rounded-circle"> 
                                                        </td>
                                                        <td>
                                                            <ul class="list-inline table-action m-0">
                                                                <li class="list-inline-item"> 
                                                                    <a href="javascript:void(0);" class="action-icon px-1"> <i class="mdi mdi-pencil"></i></a>
                                                                </li>
                                                                <li class="list-inline-item"> 
                                                                    <a href="javascript:void(0);" class="action-icon px-1"> <i class="mdi mdi-delete"></i></a>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                    </tr>
    
                                                    <tr>
                                                        <td>
                                                            <img src="${path}/Admin/dist/assets/images/file-icons/pdf.svg" height="30" alt="icon" class="me-2">
                                                            <a href="javascript:void(0);" class="text-dark">Holiday-trip-expenses.pdf</a>
                                                        </td>
                                                        <td class="font-13">10-Apr-18 1:12 PM</td>
                                                        <td>256 KB</td>
                                                        <td>
                                                            <img src="${path}/Admin/dist/assets/images/users/avatar-6.jpg" alt="task-user" class="avatar-sm img-thumbnail rounded-circle"> 
                                                        </td>
                                                        <td>
                                                            <ul class="list-inline table-action m-0">
                                                                <li class="list-inline-item"> 
                                                                    <a href="javascript:void(0);" class="action-icon px-1"> <i class="mdi mdi-pencil"></i></a>
                                                                </li>
                                                                <li class="list-inline-item"> 
                                                                    <a href="javascript:void(0);" class="action-icon px-1"> <i class="mdi mdi-delete"></i></a>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img src="${path}/Admin/dist/assets/images/file-icons/txt.svg" height="30" alt="icon" class="me-2">
                                                            <a href="javascript:void(0);" class="text-dark">File-changes-notes.txt</a>
                                                        </td>
                                                        <td class="font-13">17-Jan-18 2:55 PM</td>
                                                        <td>57.3 MB</td>
                                                        <td>
                                                            <img src="${path}/Admin/dist/assets/images/users/avatar-9.jpg" alt="task-user" class="avatar-sm img-thumbnail rounded-circle"> 
                                                            <img src="${path}/Admin/dist/assets/images/users/avatar-10.jpg" alt="task-user" class="avatar-sm img-thumbnail rounded-circle"> 
                                                        </td>
                                                        <td>
                                                            <ul class="list-inline table-action m-0">
                                                                <li class="list-inline-item"> 
                                                                    <a href="javascript:void(0);" class="action-icon px-1"> <i class="mdi mdi-pencil"></i></a>
                                                                </li>
                                                                <li class="list-inline-item"> 
                                                                    <a href="javascript:void(0);" class="action-icon px-1"> <i class="mdi mdi-delete"></i></a>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img src="${path}/Admin/dist/assets/images/file-icons/eps.svg" height="30" alt="icon" class="me-2">
                                                            <a href="javascript:void(0);" class="text-dark">Eps-file-formate.eps</a>
                                                        </td>
                                                        <td class="font-13">21-Jun-18 1:12 PM</td>
                                                        <td>429 MB</td>
                                                        <td>
                                                            <img src="${path}/Admin/dist/assets/images/users/avatar-1.jpg" alt="task-user" class="avatar-sm img-thumbnail rounded-circle"> 
                                                            <img src="${path}/Admin/dist/assets/images/users/avatar-2.jpg" alt="task-user" class="avatar-sm img-thumbnail rounded-circle"> 
                                                        </td>
                                                        <td>
                                                            <ul class="list-inline table-action m-0">
                                                                <li class="list-inline-item"> 
                                                                    <a href="javascript:void(0);" class="action-icon px-1"> <i class="mdi mdi-pencil"></i></a>
                                                                </li>
                                                                <li class="list-inline-item"> 
                                                                    <a href="javascript:void(0);" class="action-icon px-1"> <i class="mdi mdi-delete"></i></a>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img src="${path}/Admin/dist/assets/images/file-icons/dll.svg" height="30" alt="icon" class="me-2">
                                                            <a href="javascript:void(0);" class="text-dark">Software-activation.dll</a>
                                                        </td>
                                                        <td class="font-13">23-May-18 11:34 AM</td>
                                                        <td>58 KB</td>
                                                        <td>
                                                            <img src="${path}/Admin/dist/assets/images/users/avatar-3.jpg" alt="task-user" class="avatar-sm img-thumbnail rounded-circle"> 
                                                        </td>
                                                        <td>
                                                            <ul class="list-inline table-action m-0">
                                                                <li class="list-inline-item"> 
                                                                    <a href="javascript:void(0);" class="action-icon px-1"> <i class="mdi mdi-pencil"></i></a>
                                                                </li>
                                                                <li class="list-inline-item"> 
                                                                    <a href="javascript:void(0);" class="action-icon px-1"> <i class="mdi mdi-delete"></i></a>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img src="${path}/Admin/dist/assets/images/file-icons/sql.svg" height="30" alt="icon" class="me-2">
                                                            <a href="javascript:void(0);" class="text-dark">Database-db.sql</a>
                                                        </td>
                                                        <td class="font-13">18-July-18 4:29 PM</td>
                                                        <td>89.3 MB</td>
                                                        <td>
                                                            <img src="${path}/Admin/dist/assets/images/users/avatar-9.jpg" alt="task-user" class="avatar-sm img-thumbnail rounded-circle"> 
                                                            <img src="${path}/Admin/dist/assets/images/users/avatar-10.jpg" alt="task-user" class="avatar-sm img-thumbnail rounded-circle"> 
                                                        </td>
                                                        <td>
                                                            <ul class="list-inline table-action m-0">
                                                                <li class="list-inline-item"> 
                                                                    <a href="javascript:void(0);" class="action-icon px-1"> <i class="mdi mdi-pencil"></i></a>
                                                                </li>
                                                                <li class="list-inline-item"> 
                                                                    <a href="javascript:void(0);" class="action-icon px-1"> <i class="mdi mdi-delete"></i></a>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                    </tr>
    
                                                    <tr>
                                                        <td>
                                                            <img src="${path}/Admin/dist/assets/images/file-icons/zip.svg" height="30" alt="icon" class="me-2">
                                                            <a href="javascript:void(0);" class="text-dark">Minton-latest.zip</a>
                                                        </td>
                                                        <td class="font-13">10-Aug-18 1:12 PM</td>
                                                        <td>248 MB</td>
                                                        <td>
                                                            <img src="${path}/Admin/dist/assets/images/users/avatar-4.jpg" alt="task-user" class="avatar-sm img-thumbnail rounded-circle">
                                                        </td>
                                                        <td>
                                                            <ul class="list-inline table-action m-0">
                                                                <li class="list-inline-item"> 
                                                                    <a href="javascript:void(0);" class="action-icon px-1"> <i class="mdi mdi-pencil"></i></a>
                                                                </li>
                                                                <li class="list-inline-item"> 
                                                                    <a href="javascript:void(0);" class="action-icon px-1"> <i class="mdi mdi-delete"></i></a>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->
                        
                    </div> <!-- container-fluid -->

                </div> <!-- content -->

                <!-- Footer Start -->
                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-6">
                                <script>document.write(new Date().getFullYear())</script> &copy; Minton theme by <a href="">Coderthemes</a> 
                            </div>
                            <div class="col-md-6">
                                <div class="text-md-end footer-links d-none d-sm-block">
                                    <a href="javascript:void(0);">About Us</a>
                                    <a href="javascript:void(0);">Help</a>
                                    <a href="javascript:void(0);">Contact Us</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
                <!-- end Footer -->

            </div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->


        </div>
        <!-- END wrapper -->

        <!-- Right Sidebar -->
        <div class="right-bar">
            <div data-simplebar class="h-100">
    
                <!-- Nav tabs -->
                <ul class="nav nav-tabs nav-bordered nav-justified" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link py-2" data-bs-toggle="tab" href="#chat-tab" role="tab">
                            <i class="mdi mdi-message-text-outline d-block font-22 my-1"></i>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link py-2" data-bs-toggle="tab" href="#tasks-tab" role="tab">
                            <i class="mdi mdi-format-list-checkbox d-block font-22 my-1"></i>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link py-2 active" data-bs-toggle="tab" href="#settings-tab" role="tab">
                            <i class="mdi mdi-cog-outline d-block font-22 my-1"></i>
                        </a>
                    </li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content pt-0">
                    <div class="tab-pane" id="chat-tab" role="tabpanel">
                
                        <form class="search-bar p-3">
                            <div class="position-relative">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="mdi mdi-magnify"></span>
                            </div>
                        </form>

                        <h6 class="fw-medium px-3 mt-2 text-uppercase">Group Chats</h6>

                        <div class="p-2">
                            <a href="javascript: void(0);" class="text-reset notification-item ps-3 mb-2 d-block">
                                <i class="mdi mdi-checkbox-blank-circle-outline me-1 text-success"></i>
                                <span class="mb-0 mt-1">App Development</span>
                            </a>

                            <a href="javascript: void(0);" class="text-reset notification-item ps-3 mb-2 d-block">
                                <i class="mdi mdi-checkbox-blank-circle-outline me-1 text-warning"></i>
                                <span class="mb-0 mt-1">Office Work</span>
                            </a>

                            <a href="javascript: void(0);" class="text-reset notification-item ps-3 mb-2 d-block">
                                <i class="mdi mdi-checkbox-blank-circle-outline me-1 text-danger"></i>
                                <span class="mb-0 mt-1">Personal Group</span>
                            </a>

                            <a href="javascript: void(0);" class="text-reset notification-item ps-3 d-block">
                                <i class="mdi mdi-checkbox-blank-circle-outline me-1"></i>
                                <span class="mb-0 mt-1">Freelance</span>
                            </a>
                        </div>

                        <h6 class="fw-medium px-3 mt-3 text-uppercase">Favourites <a href="javascript: void(0);" class="font-18 text-danger"><i class="float-end mdi mdi-plus-circle"></i></a></h6>

                        <div class="p-2">
                            <a href="javascript: void(0);" class="text-reset notification-item">
                                <div class="d-flex align-items-start">
                                    <div class="position-relative me-2">
                                        <span class="user-status"></span>
                                        <img src="${path}/Admin/dist/assets/images/users/avatar-10.jpg" class="rounded-circle avatar-sm" alt="user-pic">
                                    </div>
                                    <div class="flex-1 overflow-hidden">
                                        <h6 class="mt-0 mb-1 font-14">Andrew Mackie</h6>
                                        <div class="font-13 text-muted">
                                            <p class="mb-0 text-truncate">It will seem like simplified English.</p>
                                        </div>
                                    </div>
                                </div>
                            </a>

                            <a href="javascript: void(0);" class="text-reset notification-item">
                                <div class="d-flex align-items-start">
                                    <div class="position-relative me-2">
                                        <span class="user-status"></span>
                                        <img src="${path}/Admin/dist/assets/images/users/avatar-1.jpg" class="rounded-circle avatar-sm" alt="user-pic">
                                    </div>
                                    <div class="flex-1 overflow-hidden">
                                        <h6 class="mt-0 mb-1 font-14">Rory Dalyell</h6>
                                        <div class="font-13 text-muted">
                                            <p class="mb-0 text-truncate">To an English person, it will seem like simplified</p>
                                        </div>
                                    </div>
                                </div>
                            </a>

                            <a href="javascript: void(0);" class="text-reset notification-item">
                                <div class="d-flex align-items-start">
                                    <div class="position-relative me-2">
                                        <span class="user-status busy"></span>
                                        <img src="${path}/Admin/dist/assets/images/users/avatar-9.jpg" class="rounded-circle avatar-sm" alt="user-pic">
                                    </div>
                                    <div class="flex-1 overflow-hidden">
                                        <h6 class="mt-0 mb-1 font-14">Jaxon Dunhill</h6>
                                        <div class="font-13 text-muted">
                                            <p class="mb-0 text-truncate">To achieve this, it would be necessary.</p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>

                        <h6 class="fw-medium px-3 mt-3 text-uppercase">Other Chats <a href="javascript: void(0);" class="font-18 text-danger"><i class="float-end mdi mdi-plus-circle"></i></a></h6>

                        <div class="p-2 pb-4">
                            <a href="javascript: void(0);" class="text-reset notification-item">
                                <div class="d-flex align-items-start">
                                    <div class="position-relative me-2">
                                        <span class="user-status online"></span>
                                        <img src="${path}/Admin/dist/assets/images/users/avatar-2.jpg" class="rounded-circle avatar-sm" alt="user-pic">
                                    </div>
                                    <div class="flex-1 overflow-hidden">
                                        <h6 class="mt-0 mb-1 font-14">Jackson Therry</h6>
                                        <div class="font-13 text-muted">
                                            <p class="mb-0 text-truncate">Everyone realizes why a new common language.</p>
                                        </div>
                                    </div>
                                </div>
                            </a>

                            <a href="javascript: void(0);" class="text-reset notification-item">
                                <div class="d-flex align-items-start">
                                    <div class="position-relative me-2">
                                        <span class="user-status away"></span>
                                        <img src="${path}/Admin/dist/assets/images/users/avatar-4.jpg" class="rounded-circle avatar-sm" alt="user-pic">
                                    </div>
                                    <div class="flex-1 overflow-hidden">
                                        <h6 class="mt-0 mb-1 font-14">Charles Deakin</h6>
                                        <div class="font-13 text-muted">
                                            <p class="mb-0 text-truncate">The languages only differ in their grammar.</p>
                                        </div>
                                    </div>
                                </div>
                            </a>

                            <a href="javascript: void(0);" class="text-reset notification-item">
                                <div class="d-flex align-items-start">
                                    <div class="position-relative me-2">
                                        <span class="user-status online"></span>
                                        <img src="${path}/Admin/dist/assets/images/users/avatar-5.jpg" class="rounded-circle avatar-sm" alt="user-pic">
                                    </div>
                                    <div class="flex-1 overflow-hidden">
                                        <h6 class="mt-0 mb-1 font-14">Ryan Salting</h6>
                                        <div class="font-13 text-muted">
                                            <p class="mb-0 text-truncate">If several languages coalesce the grammar of the resulting.</p>
                                        </div>
                                    </div>
                                </div>
                            </a>

                            <a href="javascript: void(0);" class="text-reset notification-item">
                                <div class="d-flex align-items-start">
                                    <div class="position-relative me-2">
                                        <span class="user-status online"></span>
                                        <img src="${path}/Admin/dist/assets/images/users/avatar-6.jpg" class="rounded-circle avatar-sm" alt="user-pic">
                                    </div>
                                    <div class="flex-1 overflow-hidden">
                                        <h6 class="mt-0 mb-1 font-14">Sean Howse</h6>
                                        <div class="font-13 text-muted">
                                            <p class="mb-0 text-truncate">It will seem like simplified English.</p>
                                        </div>
                                    </div>
                                </div>
                            </a>

                            <a href="javascript: void(0);" class="text-reset notification-item">
                                <div class="d-flex align-items-start">
                                    <div class="position-relative me-2">
                                        <span class="user-status busy"></span>
                                        <img src="${path}/Admin/dist/assets/images/users/avatar-7.jpg" class="rounded-circle avatar-sm" alt="user-pic">
                                    </div>
                                    <div class="flex-1 overflow-hidden">
                                        <h6 class="mt-0 mb-1 font-14">Dean Coward</h6>
                                        <div class="font-13 text-muted">
                                            <p class="mb-0 text-truncate">The new common language will be more simple.</p>
                                        </div>
                                    </div>
                                </div>
                            </a>

                            <a href="javascript: void(0);" class="text-reset notification-item">
                                <div class="d-flex align-items-start">
                                    <div class="position-relative me-2">
                                        <span class="user-status away"></span>
                                        <img src="${path}/Admin/dist/assets/images/users/avatar-8.jpg" class="rounded-circle avatar-sm" alt="user-pic">
                                    </div>
                                    <div class="flex-1 overflow-hidden">
                                        <h6 class="mt-0 mb-1 font-14">Hayley East</h6>
                                        <div class="font-13 text-muted">
                                            <p class="mb-0 text-truncate">One could refuse to pay expensive translators.</p>
                                        </div>
                                    </div>
                                </div>
                            </a>

                            <div class="text-center mt-3">
                                <a href="javascript:void(0);" class="btn btn-sm btn-white">
                                    <i class="mdi mdi-spin mdi-loading me-2"></i>
                                    Load more
                                </a>
                            </div>
                        </div>

                    </div>

                    <div class="tab-pane" id="tasks-tab" role="tabpanel">
                        <h6 class="fw-medium p-3 m-0 text-uppercase">Working Tasks</h6>
                        <div class="px-2">
                            <a href="javascript: void(0);" class="text-reset item-hovered d-block p-2">
                                <p class="text-muted mb-0">App Development<span class="float-end">75%</span></p>
                                <div class="progress mt-2" style="height: 4px;">
                                    <div class="progress-bar bg-success" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </a>

                            <a href="javascript: void(0);" class="text-reset item-hovered d-block p-2">
                                <p class="text-muted mb-0">Database Repair<span class="float-end">37%</span></p>
                                <div class="progress mt-2" style="height: 4px;">
                                    <div class="progress-bar bg-info" role="progressbar" style="width: 37%" aria-valuenow="37" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </a>

                            <a href="javascript: void(0);" class="text-reset item-hovered d-block p-2">
                                <p class="text-muted mb-0">Backup Create<span class="float-end">52%</span></p>
                                <div class="progress mt-2" style="height: 4px;">
                                    <div class="progress-bar bg-warning" role="progressbar" style="width: 52%" aria-valuenow="52" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </a>
                        </div>

                        <h6 class="fw-medium px-3 mb-0 mt-4 text-uppercase">Upcoming Tasks</h6>

                        <div class="p-2">
                            <a href="javascript: void(0);" class="text-reset item-hovered d-block p-2">
                                <p class="text-muted mb-0">Sales Reporting<span class="float-end">12%</span></p>
                                <div class="progress mt-2" style="height: 4px;">
                                    <div class="progress-bar bg-danger" role="progressbar" style="width: 12%" aria-valuenow="12" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </a>

                            <a href="javascript: void(0);" class="text-reset item-hovered d-block p-2">
                                <p class="text-muted mb-0">Redesign Website<span class="float-end">67%</span></p>
                                <div class="progress mt-2" style="height: 4px;">
                                    <div class="progress-bar bg-primary" role="progressbar" style="width: 67%" aria-valuenow="67" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </a>

                            <a href="javascript: void(0);" class="text-reset item-hovered d-block p-2">
                                <p class="text-muted mb-0">New Admin Design<span class="float-end">84%</span></p>
                                <div class="progress mt-2" style="height: 4px;">
                                    <div class="progress-bar bg-success" role="progressbar" style="width: 84%" aria-valuenow="84" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </a>
                        </div>

                        <div class="d-grid p-3 mt-2">
                            <a href="javascript: void(0);" class="btn btn-success waves-effect waves-light">Create Task</a>
                        </div>

                    </div>
                    <div class="tab-pane active" id="settings-tab" role="tabpanel">
                        <h6 class="fw-medium px-3 m-0 py-2 font-13 text-uppercase bg-light">
                            <span class="d-block py-1">Theme Settings</span>
                        </h6>

                        <div class="p-3">
                            <div class="alert alert-warning" role="alert">
                                <strong>Customize </strong> the overall color scheme, sidebar menu, etc.
                            </div>

                            <h6 class="fw-medium font-14 mt-4 mb-2 pb-1">Color Scheme</h6>
                            <div class="form-check form-switch mb-1">
                                <input class="form-check-input" type="checkbox" name="color-scheme-mode" value="light" id="light-mode-check" checked>
                                <label class="form-check-label" for="light-mode-check">Light Mode</label>
                            </div>

                            <div class="form-check form-switch mb-1">
                                <input class="form-check-input" type="checkbox" name="color-scheme-mode" value="dark" id="dark-mode-check">
                                <label class="form-check-label" for="dark-mode-check">Dark Mode</label>
                            </div>

                            <!-- Width -->
                            <h6 class="fw-medium font-14 mt-4 mb-2 pb-1">Width</h6>
                            <div class="form-check form-switch mb-1">
                                <input class="form-check-input" type="checkbox" name="width" value="fluid" id="fluid-check" checked>
                                <label class="form-check-label" for="fluid-check">Fluid</label>
                            </div>

                            <div class="form-check form-switch mb-1">
                                <input class="form-check-input" type="checkbox" name="width" value="boxed" id="boxed-check">
                                <label class="form-check-label" for="boxed-check">Boxed</label>
                            </div>
                   

                            <!-- Topbar -->
                            <h6 class="fw-medium font-14 mt-4 mb-2 pb-1">Topbar</h6>
                            <div class="form-check form-switch mb-1">
                                <input class="form-check-input" type="checkbox" name="topbar-color" value="dark" id="darktopbar-check" checked>
                                <label class="form-check-label" for="darktopbar-check">Dark</label>
                            </div>

                            <div class="form-check form-switch mb-1">
                                <input class="form-check-input" type="checkbox" name="topbar-color" value="light" id="lighttopbar-check">
                                <label class="form-check-label" for="lighttopbar-check">Light</label>
                            </div>


                            <!-- Menu positions -->
                            <h6 class="fw-medium font-14 mt-4 mb-2 pb-1">Menus Positon <small>(Leftsidebar and Topbar)</small></h6>
                            <div class="form-check form-switch mb-1">
                                <input class="form-check-input" type="checkbox" name="menus-position" value="fixed" id="fixed-check" checked>
                                <label class="form-check-label" for="fixed-check">Fixed</label>
                            </div>

                            <div class="form-check form-switch mb-1">
                                <input class="form-check-input" type="checkbox" name="menus-position" value="scrollable" id="scrollable-check">
                                <label class="form-check-label" for="scrollable-check">Scrollable</label>
                            </div>


                            <!-- Left Sidebar-->
                            <h6 class="fw-medium font-14 mt-4 mb-2 pb-1">Left Sidebar Color</h6>
                            <div class="form-check form-switch mb-1">
                                <input class="form-check-input" type="checkbox" name="leftsidebar-color" value="light" id="light-check" checked>
                                <label class="form-check-label" for="light-check">Light</label>
                            </div>

                            <div class="form-check form-switch mb-1">
                                <input class="form-check-input" type="checkbox" name="leftsidebar-color" value="dark" id="dark-check">
                                <label class="form-check-label" for="dark-check">Dark</label>
                            </div>

                            <div class="form-check form-switch mb-1">
                                <input class="form-check-input" type="checkbox" name="leftsidebar-color" value="brand" id="brand-check">
                                <label class="form-check-label" for="brand-check">Brand</label>
                            </div>

                            <div class="form-check form-switch mb-1">
                                <input class="form-check-input" type="checkbox" name="leftsidebar-color" value="gradient" id="gradient-check">
                                <label class="form-check-label" for="gradient-check">Gradient</label>
                            </div>
                    

                            <!-- size -->
                            <h6 class="fw-medium font-14 mt-4 mb-2 pb-1">Left Sidebar Size</h6>
                            <div class="form-check form-switch mb-1">
                                <input class="form-check-input" type="checkbox" name="leftsidebar-size" value="default" id="default-size-check" checked>
                                <label class="form-check-label" for="default-size-check">Default</label>
                            </div>

                            <div class="form-check form-switch mb-1">
                                <input class="form-check-input" type="checkbox" name="leftsidebar-size" value="condensed" id="condensed-check">
                                <label class="form-check-label" for="condensed-check">Condensed <small>(Extra Small size)</small></label>
                            </div>

                            <div class="form-check form-switch mb-1">
                                <input class="form-check-input" type="checkbox" name="leftsidebar-size" value="compact" id="compact-check">
                                <label class="form-check-label" for="compact-check">Compact <small>(Small size)</small></label>
                            </div>
                    

                            <!-- User info -->
                            <h6 class="fw-medium font-14 mt-4 mb-2 pb-1">Sidebar User Info</h6>
                            <div class="form-check form-switch mb-1">
                                <input class="form-check-input" type="checkbox" name="leftsidebar-user" value="fixed" id="sidebaruser-check">
                                <label class="form-check-label" for="sidebaruser-check">Enable</label>
                            </div>

                            <div class="d-grid mt-4">
                                <button class="btn btn-primary" id="resetBtn">Reset to Default</button>

                            <a href="https://wrapbootstrap.com/theme/minton-admin-dashboard-landing-template-WB0858DB6?ref=coderthemes"
                                class="btn btn-danger mt-2" target="_blank"><i class="mdi mdi-basket me-1"></i> Purchase Now</a>
                            </div>

                        </div>

                    </div>
                </div>

            </div> <!-- end slimscroll-menu-->
        </div>
        <!-- /Right-bar -->

        <!-- Right bar overlay-->
        <div class="rightbar-overlay"></div>

        <!-- Vendor js -->
        <script src="${path}/Admin/dist/assets/js/vendor.min.js"></script>

        <!-- App js -->
        <script src="${path}/Admin/dist/assets/js/app.min.js"></script>
        
    </body>
</html>