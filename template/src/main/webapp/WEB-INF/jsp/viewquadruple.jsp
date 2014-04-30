<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp"></jsp:include>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div id="right_content">
	<c:if test="${quadruple==1}">
 <script>
 window.close();
 </script>
 </c:if>
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
			        
			          <h2>View Quadruple</h2>
			        </div>
			        <div class="contentbox">
			      <!--   <form action="findPatients" method="GET">  --> 
			     
						<table cellpadding="0" cellspacing="0" border="0" width="100%">
				     <tr class="title">
         						<td valign="top" align="left" width="10%">Name</td>
					         	<td valign="top" align="left" width="15%">Date</td>
					         	<td valign="top" align="left" width="10%">Pain Name</td>
								<td valign="top" align="left" width="25%">Action</td>
        					</tr>
        					
        					<c:if test="${fn:length(quadraplevisualform.quadraplevisualdetails) gt 0}">
        				  <c:forEach items="${quadraplevisualform.quadraplevisualdetails}" var="quadraplevisualdetails" varStatus="status">
        				       	<tr class="row1">
							      	 <td valign="top" align="left"  width="10%"> ${quadraplevisualdetails.name}</td>
											
										 	<td valign="top" align="left" width="15%">${quadraplevisualdetails.date}</td>
											<td valign="top" align="left" width="10%">${quadraplevisualdetails.painname}</td>
											
											 <td>
												<a href="#" title="" ><img src="resources/images/icons/icon_edit.png" alt="Edit" /></a><a href="<c:out value="editquadraplevisual?quadrupleno=${quadraplevisualdetails.quadrapleno}"/>" style="padding-right:10px;">Edit</a>
												<a  href="#" title=""><img src="resources/images/icons/icon_delete.png" alt="Delete" /></a><a onclick='return confirmation()' href="<c:out value="deletequadraplevisual?quadrupleno=${quadraplevisualdetails.quadrapleno}"/>&patient_id=${quadraplevisualdetails.patient_id}"/> Remove</a>
											</td> 
									
												
											
								</tr> 	</c:forEach>
								<tr><td><a  class="submit_btn" style="color: white" href="<c:out value="editpatientdetails?patient_id=${quadraplevisualdetails.patient_id}" />">Cancel</a></td></tr>
							   
							    	</c:if>
        							
							    <c:if test="${fn:length(quadraplevisualform.quadraplevisualdetails) == 0}">	
							    	<tr class="row1">
							    	<td colspan="7" width="100%"><center><b></b></center></td>
							    	</tr>
							    	</c:if>
					<tr><td colspan="6">  
<%-- 	<div class="extrabottom">
              <ul class="pagination">
         
              <c:if test="${currentpage!=1&&currentpage!=null}">
             <li class="page_unselect"><a href="viewpatient_page?page=${currentpage - 1}" >Prev</a></li> 
               </c:if>
              
             <c:forEach var="count" begin="1" end="${noofrows}"> 
               <c:forEach begin="1" end="${noofpages}" var="i">
                <c:choose>
                    <c:when test="${currentpage eq i}">
                      <li class="page"><a class="paging_select"><c:out value="${i}"></c:out></a></li>
                     </c:when>
                    <c:otherwise>
                        <li class="page_unselect"><a href="viewpatient_page?page=${i}"><c:out value="${i}"></c:out></a></li>
                    </c:otherwise>
                </c:choose>
            </c:forEach>          
            <c:if test="${currentpage!=noofpages}">
              <li class="page_unselect"><a href="viewpatient_page?page=${currentpage+1}">Next</a></li> 
                 </c:if>
              <c:choose>
              <c:when test="${button=='viewall'}">
                  <li class="page"><a href="viewallpatient" class="paging_select">ViewAll</a></li>
             </c:when>
                <c:otherwise>
                  <li class="page"><a href="viewpatient" class="paging_select">Back</a></li>
              </c:otherwise>
              </c:choose>

              </div>
              </td>
              </tr>
						
        					
						</table> --%>
					</div>
				</td>
			</tr>
		</table> 
	
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