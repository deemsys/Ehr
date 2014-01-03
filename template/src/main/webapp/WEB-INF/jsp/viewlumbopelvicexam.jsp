<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp"></jsp:include>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript" src="js/ajaxpaging.js"></script>
<script src="resources/js/jquery_checkbox.js" type="text/javascript"></script>
<script src="resources/js/jquery.ui.dialog.js" type="text/javascript"></script>
<script src="resources/js/jquery.ui.position.js" type="text/javascript"></script>
<div id="right_content">
	
    	<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      		
			<tr>
			<c:if test="${success==true}">
        <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
            <div id="success_statusbar" class="status success">
            <p class="closestatus"><a title="Close" href="viewradiologicreport">x</a></p>
            <p><img alt="Success" src="resources/images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr>
    </c:if>
    </tr>
      		<tr>
        		<td valign="top" align="left">
			        <div class="headings altheading">
			          <h2>View Lumbopelvic Exam</h2>
			        </div>
			        <div class="contentbox">
			      <!--   <form action="findPatients" method="GET">  --> 
			      <form action="lumbopelvicexam" method="POST"> 
						<table cellpadding="0" cellspacing="0" border="0" width="100%">
				     <tr class="title">
								
								
         						<td valign="top" align="left" width="35%">Patient Name</td>
					         	<td valign="top" align="left" width="35%">Date</td>
					         	<td></td>
					         	<td></td>
					         	
          			</tr>
							<!-- getting addAttibute value -->
						<c:if test="${fn:length(lumbopelvicexamForm.lumbopelvicexam) gt 0}">
        				  <c:forEach items="${lumbopelvicexamForm.lumbopelvicexam}" var="lumbopelvicexam" varStatus="status">
        				       				<tr class="row1">
        				       				
								        <td valign="top" align="left"  width="10%"> <a href="lumbopelvicexamlist?lumbopelvicexamid=${lumbopelvicexam.lumbopelvicexamid}">${lumbopelvicexam.pname}</a></td>
											<td valign="top" align="left" width="15%">${lumbopelvicexam.date}</td>
											
												<td valign="top" align="left">
											<%--  <c:if test="${currentuser.adminuser[0].editradiologicreport==1}"> --%>
												<a href="#" title="" ><img src="resources/images/icons/icon_edit.png" alt="Edit" /></a><a href="<c:out value="editlumbopelvicexam?lumbopelvicexamid=${lumbopelvicexam.lumbopelvicexamid}"/>" style="padding-right:10px;">Reexam</a>
											<%-- 	 </c:if>
 --%>												<%--<c:if test="${currentuser.adminuser[0].deleteparticipant==1}"> --%>

 
											<a href="#" title=""><img src="resources/images/icons/icon_delete.png" alt="Delete" /></a><a href="<c:out value="deletelumbopelvicexam?lumbopelvicexamid=${lumbopelvicexam.lumbopelvicexamid}"/>" onclick="return confirmation()">Remove</a>
											<%-- </c:if> --%>
											</td>	
										
								</tr>
							    	</c:forEach>
							    	</c:if>
							    <c:if test="${fn:length(lumbopelvicexamForm.lumbopelvicexam) == 0}">	
							    	<tr class="row1">
							    	<td colspan="7" width="100%"><center><b>No Participants Found!!!</b></center></td>
							    	</tr>
							    	</c:if>
							 </table>
								 </form>
							 </div>
							 </td>
							 </tr>
							 </table>
							 </div>




<script language="javascript">

function confirmation() {
	var answer = confirm("Are you Sure You Want to Delete  Patient Lumbopelvicexam ?");
	if (answer){
		return true;
	}
	else{
		return false;
	}
}

</script>

<jsp:include page="footer.jsp"></jsp:include>	
