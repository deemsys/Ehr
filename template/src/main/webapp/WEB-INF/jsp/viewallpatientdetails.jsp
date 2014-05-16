<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp"></jsp:include>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

 <link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
  <link rel="stylesheet" href="/resources/css/style.css" />
 <script src="resources/js/jquery.min.js"></script> 
 <script src="resources/js/jquery-ui.js"></script>
 <script src="resources/js/jquey-1.9.1.js"></script>

<div id="right_content">
	<script type="text/javascript">
function doAjaxPost() {  
	  // get the form values  
	  var name = $('#adjuster').val();
	 /*   var education = $('#education').val();	 */   
	  $.ajax({  
	    type: "POST",  
	    url: "/bcresearchapp/AddUser.htm",  
	    data: "adjuster=" + name,  
	    success: function(response){  
	      // we have the response  
	      $('#info').html(response);
	      /*     $('#education').val(''); */
	    },  
	    error: function(e){  
	      alert('Error: ' + e);  
	    }  
	  });  
	}  
</script>
    	 <script>
 $(function() {
           $( "#datepicker" ).datepicker();
         });
 
</script>
    	
    	<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      		
			<tr>
			<c:if test="${success==true}">
        <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
            <div id="success_statusbar" class="status success">
            <p class="closestatus"><a title="Close" href="viewpatient">x</a></p>
            <p><img alt="Success" src="resources/images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr>
    </c:if>
    </tr>
      		<tr>
        		<td valign="top" align="left">
			        <div class="headings altheading">
			        
			          <h2>View Patient Details</h2>
			        </div>
			        <div class="contentbox">
			      <!--   <form action="findPatients" method="GET">  --> 
			      
			    <form action="findadminpatient" method="GET">
			  <table><tr><td>Last Name:</td><td><input type="text" name="lastname" value="${lastname}"></td>
			  <td>Attorney:</td><td><input type="text" name="NameOfAttorney" value="${attorney}"></td>
			  <td>Type of Accident:</td><td><input type="text" name="accident" value="${accident}"></td>
			  <td>Date of Accident</td><td><input type="text" name="dateofaccident" id="datepicker" value="${dateofaccident}"></td>
			 <td>Name of Your Health Insurance:</td><td><input type="text" name="insurance" value="${insurance}"></td>
			  <td width="50"></td><td><input type="submit" value="Find" class="submit_btn"></td></tr></table>    
			      
			      </form>
			      <form action="patientDetails" method="POST"> 
						<table cellpadding="0" cellspacing="0" border="0" width="100%">
				     <tr class="title">
         						<td valign="top" align="left" width="10%">Name</td>
					         	<td valign="top" align="left" width="15%">MobileNumber</td>
					         	<td valign="top" align="left" width="10%">City</td>
								<td valign="top" align="left" width="10%">State</td>
          						<!-- <td valign="top" align="left" width="25%">Action</td> -->
        					</tr>
        					
        					<c:if test="${fn:length(patientDetailsForm.patientDetails) gt 0}">
        				  <c:forEach items="${patientDetailsForm.patientDetails}" var="patientDetails" varStatus="status">
        				       	<tr class="row1">
							      	 <td valign="top" align="left"  width="10%"> <a href="patientadminDetailsList?patient_id=${patientDetails.patient_id}">${patientDetails.name}</a></td>
											
										 	<td valign="top" align="left" width="15%">${patientDetails.mobileNumber}</td>
											<td valign="top" align="left" width="10%">${patientDetails.city}</td>
											<td valign="top" align="left" width="10%">${patientDetails.state}</td>
											<%--  <td>
												<a href="#" title="" ><img src="resources/images/icons/icon_edit.png" alt="Edit" /></a><a href="<c:out value="editpatientdetails?patient_id=${patientDetails.patient_id}"/>" style="padding-right:10px;">Edit</a>
												<a  href="#" title=""><img src="resources/images/icons/icon_delete.png" alt="Delete" /></a><a href="<c:out value="deletepatientdetails?patient_id=${patientDetails.patient_id}" />" onclick="return confirmation()">Remove</a>
											</td> --%> 
									
												
											
								</tr>
							    	</c:forEach>
							    	</c:if>
        							
							    <c:if test="${fn:length(patientDetailsForm.patientDetails) == 0}">	
							    	<tr class="row1">
							    	<td colspan="7" width="100%"><center><b>No Patients Found.</b></center></td>
							    	</tr>
							    	</c:if>
					<tr><td colspan="6">  
	<div class="extrabottom">
              <ul class="pagination">
         
              <c:if test="${currentpage!=1&&currentpage!=null}">
             <li class="page_unselect"><a href="viewpatient_page?page=${currentpage - 1}" >Prev</a></li> 
               </c:if>
         
               <c:forEach begin="1" end="${noofpages}" var="i">
                <c:choose>
                    <c:when test="${currentpage eq i}">
                      <li class="page"><a class="paging_select"><c:out value="${i}"></c:out></a></li>
                     </c:when>
                    <c:otherwise>
                        <li class="page_unselect"><a href="viewadminpatient_page?page=${i}"><c:out value="${i}"></c:out></a></li>
                    </c:otherwise>
                </c:choose>
            </c:forEach>         
            <c:if test="${currentpage!=noofpages}">
              <li class="page_unselect"><a href="viewadminpatient_page?page=${currentpage+1}">Next</a></li> 
                 </c:if>
              <c:choose>
              <c:when test="${button=='viewall'}">
                  <li class="page"><a href="viewadminallpatient" class="paging_select">ViewAll</a></li>
             </c:when>
                <c:otherwise>
                  <li class="page"><a href="viewallpatientdetails" class="paging_select">Back</a></li>
              </c:otherwise>
              </c:choose>

              </div>
              </td>
              </tr>
						
        					
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


function confirmation() {
	var answer = confirm("Are you Sure You Want to Delete  Patient Record ?")
	if (answer){
		return true;
	}
	else{
		return false;
	}
} 
</script>
<script> 
function showCourses() {
   var str = document.getElementById("age").value;
}

    

    </script>


<!-- 
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
</script> -->

<jsp:include page="footer.jsp"></jsp:include>