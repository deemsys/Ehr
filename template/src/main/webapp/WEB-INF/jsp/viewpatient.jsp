<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp"></jsp:include>

<script type="text/javascript" src="js/ajaxpaging.js"></script>

<div id="right_content">
	<form name="grid" onSubmit="return validate(this)" action="" method="POST">
    	<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      		<tr>
				<td valign="top" align="left" style="padding:5px 0 10px 0;">
					<div class="del_div">
						<p><label style="padding: 0pt 20px 0pt 0pt;"><input type="submit" name="delete" value="" class="icon1" onclick="form.action='?do=deleteparticipant'" /></label></p>
	          		</div>
				</td>
			</tr>
			
      		<tr>
        		<td valign="top" align="left">
			        <div class="headings altheading">
			          <h2>View Patients</h2>
			        </div>
			        <div class="contentbox">
						
				        <table cellpadding="0" cellspacing="0" border="0" width="100%">
							<tr class="title">
								<td valign="center" align="left" width="5%"><input type="checkbox" onclick="selectall(this.form)" value="" name="checkall"></td>
         						<td valign="top" align="left" width="10%">Name</td>
					         	<td valign="top" align="left" width="15%">MobileNumber</td>
					         	<td valign="top" align="left" width="10%">City</td>
								<td valign="top" align="left" width="10%">State</td>
          						<td valign="top" align="left" width="25%">Action</td>
        					</tr>
        					<c:forEach items="${PatientDetailsForm.patientDetails}" var="patientDetails" varStatus="status">
        				       	<tr class="row1">
							       		<td valign="center" align="right" width="10%"><input type="checkbox" value="${patientDetails.Patient_id}" name="chkUser"></td>
					     		     <td valign="top" align="left"  width="10%">${patientDetails.Name}</td> 
										 	<td valign="top" align="left" width="15%">${patientDetails.MobileNumber}</td>
											<td valign="top" align="left" width="10%">${patientDetails.City}</td>
											<td valign="top" align="left" width="10%">${patientDetails.State}</td>
											<td>
												<a href="#" title="" ><img src="resources/images/icons/icon_edit.png" alt="Edit" /></a><a href="<c:out value="editparticipant?id=${patientDetails.Patient_id}"/>" style="padding-right:10px;">Edit</a>
												<a href="#" title=""><img src="resources/images/icons/icon_delete.png" alt="Delete" /></a><a id="delete_confirm" href="<c:out value="deleteparticipants?id=${patientDetails.Patient_id}"/>">Remove</a>
											</td>
								</tr>
							    	</c:forEach>
        					
        					
						</table>
					</div>
				</td>
			</tr>
		</table> 
	</form>
</div>

<!-- <script>
function confirmation(val) {
	var answer = confirm("Are you Sure You Want to Delete Patient ?")
	if (answer){
		window.location = "?do=deletepatient&id="+val;
	}
	else{
		
	}
}
</script> -->

<script language="javascript">

function selectall(field)
{
	//field.getElementByTagName('checkbox');
	if(document.grid.checkall.checked==true)
	{
		for (i = 0; i < field.length; i++)
			field[i].checked = true ;
	}
	else
	{
		for(i = 0; i < field.length; i++)
			field[i].checked = false;
	}
}

function validate(fname)
{
// alert(fname);
var chks = document.getElementsByName('checkbox[]');

var hasChecked = false;
for (var i = 0; i < chks.length; i++)
{
if (chks[i].checked)
{
hasChecked = true;
break;
}
}
if (hasChecked == false)
{
alert("Please select at least one.");
return false;
}
return true;
}

/* function findpart()
{
// alert(document.getElementById("moblie").value);
// alert(document.getElementById("group").value);
// alert(document.getElementById("city").value);
window.location="?do=viewparticipants&moblie="+document.getElementById("moblie").value+"&group="+document.getElementById("group").value+"&city="+document.getElementById("city").value;
} */
</script>

<jsp:include page="footer.jsp"></jsp:include>