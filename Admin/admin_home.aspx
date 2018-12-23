<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_home.aspx.cs" Inherits="Admin_admin_home" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title> Admin</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="vendors/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- inject:css -->
  <link rel="stylesheet" href="css/style.css">
  <!-- endinject -->
 <!-- <link rel="shortcut icon" href="images/favicon.png" />-->
</head>
    <body>
        <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo" href="admin_home.aspx"><img src="images/logo.svg" alt="logo"/></a>
        <a class="navbar-brand brand-logo-mini" href="admin_home.aspx"><img src="images/logo-mini.svg" alt="logo"/></a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-stretch">
        <div class="search-field d-none d-md-block">
          <form class="d-flex align-items-center h-100" action="#">
            <div class="input-group">
              <div class="input-group-prepend bg-transparent">
                  <i class="input-group-text border-0 mdi mdi-magnify"></i>                
              </div>
              <input type="text" class="form-control bg-transparent border-0" placeholder="Search projects">
            </div>
          </form>
        </div>
       </div>
    </nav>
        
             <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item nav-profile">
            <a href="#" class="nav-link">
              <div class="nav-profile-image">
                <img src="images/soji.jpg" alt="profile">
                <span class="login-status online"></span> <!--change to offline or busy as needed-->              
              </div>
              <div class="nav-profile-text d-flex flex-column">
                <span class="font-weight-bold mb-2">Soji Joy</span>
                <span class="text-secondary text-small">Managing Director</span>
              </div>
              <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="admin_home.aspx">
              <span class="menu-title">Dashboard</span>
              <i class="mdi mdi-home menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
              <span class="menu-title">Employee</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="add_employee.aspx">Add Employee</a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">Attendance</a></li>
              </ul>
            </div>
          </li>
         <li class="nav-item">
            <a class="nav-link" href="add_stock.aspx">
              <span class="menu-title">Stock</span>
              <i class="mdi mdi-chart-bar menu-icon"></i>
            </a>
          </li>
            <li class="nav-item">
            <a class="nav-link" href="add_shop.aspx">
              <span class="menu-title">Shop</span>
              <i class="mdi mdi-chart-bar menu-icon"></i>
            </a>
          <li class="nav-item">
            <a class="nav-link" href="add_category.aspx">
              <span class="menu-title">Category</span>
              <i class="mdi mdi-chart-bar menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="add_model.aspx">
              <span class="menu-title">Model</span>
              <i class="mdi mdi-chart-bar menu-icon"></i>
            </a>
          </li>
           <li class="nav-item">
            <a class="nav-link" href="Manage_customer">
              <span class="menu-title">Customer</span>
              <i class="mdi mdi-chart-bar menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="pages/tables/basic-table.html">
              <span class="menu-title">Tables</span>
              <i class="mdi mdi-table-large menu-icon"></i>
            </a>
          </li>
            <li class="nav-item">
            <a class="nav-link" href="logout.aspx">
              <span class="menu-title">Logout</span>
              <i class="mdi mdi-table-large menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#general-pages" aria-expanded="false" aria-controls="general-pages">
              <span class="menu-title">Sample Pages</span>
              <i class="menu-arrow"></i>
              <i class="mdi mdi-medical-bag menu-icon"></i>
            </a>
            <div class="collapse" id="general-pages">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="pages/samples/blank-page.html"> Blank Page </a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/samples/login.html"> Login </a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/samples/register.html"> Register </a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/samples/error-404.html"> 404 </a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/samples/error-500.html"> 500 </a></li>
              </ul>
              </div>
          </li>
           <li class="nav-item sidebar-actions">
            <span class="nav-link">
              <div class="border-bottom">
                <h6 class="font-weight-normal mb-3">Projects</h6>                
              </div>
              <button class="btn btn-block btn-lg btn-gradient-primary mt-4">+ Add a project</button>
              <div class="mt-4">
                <div class="border-bottom">
                  <p class="text-secondary">Categories</p>                  
                </div>
                <ul class="gradient-bullet-list mt-4">
                  <li>Free</li>
                  <li>Pro</li>
                </ul>
              </div>
            </span>
          </li>
        </ul>
      </nav>
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-12">
              <span class="d-flex align-items-center purchase-popup">
               </span>
            </div>
          </div>
    <div class="row">
            <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Recent Updates</h4>
                  <div class="d-flex">
                    <div class="d-flex align-items-center mr-4 text-muted font-weight-light">
                      <i class="mdi mdi-account-outline icon-sm mr-2"></i>
                      <span>jack Menqu</span>
                    </div>
                    <div class="d-flex align-items-center text-muted font-weight-light">
                      <i class="mdi mdi-clock icon-sm mr-2"></i>
                      <span>October 3rd, 2018</span>
                    </div>
                  </div>
                  <div class="row mt-3">
                    <div class="col-6 pr-1">
                      <img src="images/dashboard/cp7.jpg" class="mb-2 mw-100 w-100 rounded" alt="image">
                      <img src="images/dashboard/work_thumb_3.jpg" class="mw-100 w-100 rounded" alt="image">
                    </div>
                    <div class="col-6 pl-1">
                      <img src="images/dashboard/work_thumb_1.jpg" class="mb-2 mw-100 w-100 rounded" alt="image">
                      <img src="images/dashboard/cp2.jpg" class="mw-100 w-100 rounded" alt="image">
                    </div>
                  </div>
                  <div class="d-flex mt-5 align-items-top">
                    <img src="images/faces/face3.jpg" class="img-sm rounded-circle mr-3" alt="image">
                    <div class="mb-0 flex-grow">
                      <h5 class="mr-2 mb-2">School Website - Authentication Module.</h5>
                      <p class="mb-0 font-weight-light">It is a long established fact that a reader will be distracted by the readable
                        content of a page.</p>
                    </div>
                    <div class="ml-auto">
                      <i class="mdi mdi-heart-outline text-muted"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
     <!-- partial:partials/_footer.html -->
        <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2017 <a href="https://www.bootstrapdash.com/" target="_blank">Bootstrap Dash</a>. All rights reserved.</span>
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="mdi mdi-heart text-danger"></i></span>
          </div>
        </footer>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <!-- plugins:js -->
  <script src="vendors/js/vendor.bundle.base.js"></script>
  <script src="vendors/js/vendor.bundle.addons.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/misc.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="js/dashboard.js"></script>
  <!-- End custom js for this page-->

    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
