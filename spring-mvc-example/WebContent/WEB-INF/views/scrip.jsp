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
			var u = 1;
			$.ajax({
				url : "ShowdataSV",
				type : "Get",
				contentType : "application/json",
				// DataType : 'json',
				success : function(res) {
				var data = "";
				var trang ="";
				u = Math.ceil(res.length/5);
				for (var i = 0; i < 5; i++) {
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
					    + "</td><td><h3><i id='button-delete' class='fa fa-trash-o' style='font-size:24px' onclick=functionDelete('"+res[i].id+"')></i>"
						+ "<i id='button-edit' class='fa fa-pencil-square-o' style='font-size:24px' onclick=performClick('table-sv') data-toggle='modal' data-target='#myModal1'></i></h3></td></tr> "
						$('#content').html(data);
					}
				for (var i = 1; i <=u; i++) {
					trang += "<li><span onclick=data('"+i+"') >"+i+"</span></li>"
						$('#phantrang').html(trang);
					}
				},
				error : function() {
					alert("error");
				}
			});
		});
	
	function data(i) {
		var index = i;
		var leg  = index * 5 ;
		var u    = leg - 5;
		$('#content').html("");
		$.ajax({
			url : "ShowdataSV",
			type : "Get",
			contentType : "application/json",
			// DataType : 'json',
			success : function(res) {
			var data = "";	
			for (var i = u; i < leg; i++) {
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
				    + "</td><td><h3><i id='button-delete' class='fa fa-trash-o' style='font-size:24px' onclick=functionDelete('"+res[i].id+"')></i>"
					+ "<i id='button-edit' class='fa fa-pencil-square-o' style='font-size:24px' onclick=performClick('table-sv') data-toggle='modal' data-target='#myModal1'></i></h3></td></tr> "
					$('#content').html(data);
				}
			},
			error : function() {
				alert("error");
			}
		});
		
	}
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
	} 
	function Search(){
		alert("vao ham search")
		
	}
	
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