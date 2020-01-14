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
	#button-edit:hover {
    	background-color: #FF9900;
  }
    #button-delete:hover {
    	background-color: #CC0000;
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
						<input class="sb-search-input input__field--madoka" placeholder="Search..." type="search" id="input-31" />
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
									<th></th> 
								</tr> 
							</thead> 
							<tbody id="content"> 
							</tbody> 
						</table> 
					</div>
				</div>
			</div>
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
	<script src='js/SidebarNav.min.js' type='text/javascript'></script>
	<script>
      $('.sidebar-menu').SidebarNav()
    </script>
	<!-- //side nav js -->
	
	<!-- Classie --><!-- for toggle left push menu script -->
		<script src="js/classie.js"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
				
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
			
			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>
	<!-- //Classie --><!-- //for toggle left push menu script -->
	
	<!--scrolling js-->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->
	
	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.js"> </script>
	<script>
	$(document).ready(
		function() {
			$.ajax({
				url : "ShowdataSV",
				type : "Get",
				contentType : "application/json",
				// DataType : 'json',
				success : function(res) {
				var data = "";
				for (var i = 0; i < res.length; i++) {
					var t=i+1;
					data += "<tr class='active'><th scope='row'>" 
						+ t
						+"</th><td style='display :none'>"
						+ res[i].id
					    + "</td><td>"
						+ res[i].msv
					    + "</td><td>"
					    + res[i].name
					    + "</td><td>"
					    + res[i].age
					    + "</td><td>"
					    + res[i].className
					    + "</td><td><h3><span id='button-delete' class='label label-danger'onclick=functionDelete('"+res[i].id+"')>Delete</span></h3></td>"
						+ "<td><h3><span id='button-edit' class='label label-warning' onclick=performClick('table-sv') data-toggle='modal' data-target='#myModal1'>Edit</span></h3></td></tr> "
						$('#content').html(data);
					}

				},
				error : function() {
					alert("error");
				}
			});
		});
	
	function functionDelete(id){
		$.ajax({
			url : "deleteSV/" + id,
			type : "POST",
			contentType : "application/json",
			dataType : 'json',
			success : function(res) {
				if(res == 1){
					alert("success delete");
					location.reload();
				}
				else{
					alert("error delete");
				}
			},
			error : function() {
				alert("error delete");
				location.reload();
			}
		});

	}
	function EditStudent(){
		var id = document.getElementById("id1").value;
		var code = document.getElementById("code1").value;
		var name = document.getElementById("name1").value;
		var age = document.getElementById("age1").value;
		var className = document.getElementById("className1").value;
		if(code !="" && name !="" && age !="" && className !=""){
			$.ajax({
		        url: "EditSV",
		        type: "POST",
		        data: {
		          id  : id,
		          code: code,
		          name: name,
		          age : age,
		          className: className        
		        },
		        cache: false,
		        success: function(dataResult){
		          alert(dataResult);
		          location.reload();
		        }
		      });
		    }
		    else{
		      alert('Please fill all the field !');
		    }
	}
 function AddStudent() {
		var code = document.getElementById("code").value;
		var name = document.getElementById("name").value;
		var age = document.getElementById("age").value;
		var className = document.getElementById("className").value;
		if(code !="" && name !="" && age !="" && className !=""){
			$.ajax({
				url: "AddSV",
				type: "POST",
				data: {
					code: code,
					name: name,
					age: age,
					className: className				
				},
				cache: false,
				success: function(dataResult){
					alert(dataResult);
					location.reload();
				}
			});
		}
		else{
			alert('Please fill all the field !');
		}
	}; 
	
	document.getElementById("table-sv").addEventListener("click", displaytable);
    function displaytable() {
   	 var table = document.getElementById('table-sv');
        
        for(var i = 1; i < table.rows.length; i++)
        {
            table.rows[i].onclick = function()
            {
                 //rIndex = this.rowIndex;
                 document.getElementById("id1").value = this.cells[1].innerHTML;
                 document.getElementById("code1").value = this.cells[2].innerHTML;
                 document.getElementById("name1").value = this.cells[3].innerHTML;
                 document.getElementById("age1").value = this.cells[4].innerHTML;
                 document.getElementById("className1").value = this.cells[5].innerHTML;
            };
        }
   }

	</script>	
 <script type="text/javascript">
    function performClick(elemId) {
    var elem = document.getElementById(elemId);
    if(elem && document.createEvent) {
      var evt = document.createEvent("MouseEvents");
      evt.initEvent("click", true, false);
      elem.dispatchEvent(evt);
   }
  }
</script>	
</body>
</html>