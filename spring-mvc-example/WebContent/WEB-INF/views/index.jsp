<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE HTML>
<html>
<head>
<title> Manager Student</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <!-- css-->
<link href="./css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="./css/index.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="./css/custom.css" rel="stylesheet">
<link href="./css/SidebarNav.min.css" media='all' rel='stylesheet' type='text/css'/>

 
 <!-- js-->
<script src="./js/jquery-1.11.1.min.js"></script>
<script src="./js/modernizr.custom.js"></script>
<script src="./js/metisMenu.min.js"></script>
<script src="./js/custom.js"></script>

<style type="text/css">
	#button-add:hover {
		background-color: #00CC00;
	}
	#button-edit{
		margin: 0 4px 0 8px;
	}
	#button-edit:hover {
    	color: #0000FF;
    }
    #button-delete{
    margin: 0 8px 0 4px;
    }
    #button-delete:hover {
    	color: #FF0000;
    }
</style>

</head> 
<body class="cbp-spmenu-push">
	<div class="main-content">
	<div class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
		<!--left-fixed -navigation-->
		<aside class="sidebar-left">
      <nav class="navbar navbar-inverse">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".collapse" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            </button>
            <h1><a class="navbar-brand" href="#"><span class="fa fa-group"></span> Student<span class="dashboard_text">Manager</span></a></h1>
          </div>
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="sidebar-menu">
              <li class="header">MAIN NAVIGATION</li>
              <li class="treeview">
                <a href="#">
                <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                </a>
              </li>
              <li class="treeview">
                <a href="#">
                <i class="fa fa-table"></i> <span>Tables</span>
                <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                  <li><a href="tables.html"><i class="fa fa-angle-right"></i> Student</a></li>
                </ul>
              </li>
            </ul>
          </div>
          <!-- /.navbar-collapse -->
      </nav>
    </aside>
	</div>
		<!--left-fixed -navigation-->
		
		<!-- header-starts -->
		<div class="sticky-header header-section ">
			<div class="header-left">
				<button id="showLeftPush"><i class="fa fa-bars"></i></button>
				<div class="clearfix"> </div>
			</div>
			<div class="header-right">	
				<!--search-box-->
				<div class="search-box">
					<form class="input">
						<input class="sb-search-input input__field--madoka"  placeholder="Search..." type="text" id="input-31" >
						<label class="input__label" for="input-31">
							<svg class="graphic" width="100%" height="100%" viewBox="0 0 404 77" preserveAspectRatio="none">
								<path d="m0,0l404,0l0,77l-404,0l0,-77z"/>
							</svg>					
						</label>
					</form>
				</div><!--//end-search-box-->
				<div class="profile_details">		
					<ul>
						<li class="dropdown profile_details_drop">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<div class="profile_img">	
									<span class="prfil-img"><img style="width: 50px;height: 50px" src="images/avatar.png" alt=""> </span> 
									<div class="user-name">
										<p>Admin Name</p>
										<span>Đoàn Tùng</span>
									</div>
									<i class="fa fa-angle-down lnr"></i>
									<i class="fa fa-angle-up lnr"></i>
									<div class="clearfix"></div>	
								</div>	
							</a>
							<ul class="dropdown-menu drp-mnu">
								<li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li> 
								<li> <a href="#"><i class="fa fa-user"></i> My Account</a> </li>
								<li> <a href="#"><i class="fa fa-suitcase"></i> Profile</a> </li> 
								<li><a href="#"><form action="logout" method="post"><i class="fa fa-sign-out"></i> <input class="" type="submit" value="Logout" ></form></a></li>
							</ul>
							
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>				
			</div>
			<div class="clearfix"> </div>	
		</div>
		<!-- //header-ends -->
		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
				<div class="tables">
					<div class="bs-example widget-shadow" data-example-id="contextual-table">
					<center><h2>Manager Student</h2></center> 
						<h3><span id="button-add" class="label label-success" data-toggle="modal" data-target="#myModal">ADD</span></h3>
						<table class="table" id="table-sv"> 
							<thead> 
								<tr> 
									<th>STT</th> 
									<th style="display: none;">ID</th>
									<th>MaSV</th>
									<th>Name</th> 
									<th>Age</th>
									<th>Class</th> 
									<th></th> 
									
								</tr> 
							</thead>
							
							<tbody id="content"> 
							</tbody> 
						</table> 
					</div>
				</div>
			</div>
			<center>
				<ul id="phantrang" class="pagination">
			  </ul>
			</center>
		</div>
		<%@ include file="addSV.jsp"%>
		<%@ include file="editSV.jsp"%>
		<!--footer-->
		<div class="footer">
		   <p>&copy; 2020 ĐH Giao Thong Van Tai | Manager Student</p>
	   </div>
        <!--//footer-->
	</div>
	<!-- side nav js -->
	<%@ include file="scrip.jsp"%>
</body>
</html>