<div class="container">
  <!-- Trigger the modal with a button -->
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 style="text-align: center" class="modal-title">ADD STUDENT</h4>
        </div>
        <form action="">
	        <div class="modal-body">
	           <center>
			    <table>
			      <tr>
			        <th></th>
			        <th></th>
			        <th></th>
			        <th></th>
			      </tr>
			      <tr> 
			        <td><span>student code </span></td>
			        <td> <input type="text" style=" width: 20em; border-radius: 5px ; margin: 1em " class="form-control" id="code" placeholder="Student code"></td>
			      </tr>
			      <tr> 
			        <td><span>Name Student</span></td>
			        <td> <input type="text" style=" width: 20em; border-radius: 5px ; margin: 1em " class="form-control" id="name" placeholder="Name Student"></td>
			      </tr>
			      <tr> 
			        <td>Age</td>
			        <td> <input type="number" style=" width: 20em; border-radius: 5px; margin: 1em " min ="0" max ="100" class="form-control" id="age" placeholder="Age"></td>
			      </tr>
			      <tr> 
			        <td>Class Name</td>
			        <td> <input type="text" style=" width: 20em; border-radius: 5px; margin: 1em " class="form-control" id="className" placeholder="Class Name"></td>
			      </tr>
			    </table>
			  </center>
	        </div>
	        <div style="text-align: center;" class="modal-footer">
	          <button type="button" class="btn btn-default" onclick="AddStudent()" data-dismiss="modal">ADD</button>
	        </div>
        </form>
      </div>
    </div>
  </div>
</div>