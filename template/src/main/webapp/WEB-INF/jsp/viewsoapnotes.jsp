<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp"></jsp:include>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript" src="js/ajaxpaging.js"></script>
<script src="resources/js/jquery_checkbox.js" type="text/javascript"></script>
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
			          <h2>View Soap Notes</h2>
			        </div>
			        <div class="contentbox">
			      <!--   <form action="findPatients" method="GET">  --> 
			      <form action="soapnotes" method="POST"> 
						<table cellpadding="0" cellspacing="0" border="0" width="100%">
				     <tr class="title">
									<td valign="top" align="left" width="10%">Patient Name</td>
					</tr>
					<c:out value="${fn:length(soapnotesForm.soapnotes)}"></c:out>
					<c:if test="${fn:length(soapnotesForm.soapnotes) gt 0}">
        				  <c:forEach items="${soapnotesForm.soapnotes}" var="soapnotes" varStatus="status">
        				       				<tr class="row1">
        				       				
								        <td valign="top" align="left"  width="10%"> <a href="soapNotesList?soapid=${soapnotes.soapid}">${soapnotes.pname}</a></td>
								        
										<td valign="top" align="left">
											<%--  <c:if test="${currentuser.adminuser[0].editradiologicreport==1}"> --%>
												<a href="#" title="" ><img src="resources/images/icons/icon_edit.png" alt="Edit" /></a><a href="<c:out value="editsoapnotes?soapid=${soapnotes.sopaid}"/>" style="padding-right:10px;">Edit</a>
											<%-- 	 </c:if>
 --%>												<%--<c:if test="${currentuser.adminuser[0].deleteparticipant==1}"> --%>
											<a href="#" title=""><img src="resources/images/icons/icon_delete.png" alt="Delete" /></a><a href="<c:out value="deletesoapnotes?soapid=${soapnotes.soapid}"/>" onclick="return confirmation()">Remove</a>
											<%-- </c:if> --%>
											</td>	
										
							</tr>
							</c:forEach>
							</c:if>
							 <c:if test="${fn:length(soapnotesForm.soapnotes) == 0}">	
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
	var answer = confirm("Are you Sure You Want to Delete  Patient SoapNotes ?")
	if (answer){
		return true;
	}
	else{
		return false;
	}
}					
</script>					