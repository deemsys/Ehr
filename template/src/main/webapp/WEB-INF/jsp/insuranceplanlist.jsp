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
            <p class="closestatus"><a title="Close" href="insuranceplanlist">x</a></p>
            <p><img alt="Success" src="resources/images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr>
    </c:if>
    </tr>
      		<tr>
        		<td valign="top" align="left">
			        <div class="headings altheading">
			          <h2>Hardship Agreement List</h2>
			        </div>
			        <div class="contentbox">
			      <!--   <form action="findPatients" method="GET">  --> 
			      <form action="insuranceplan" method="POST"> 
						<table cellpadding="0" cellspacing="0" border="0" width="100%">
				     <tr class="title">
								
								<td valign="center" align="right" width="10%"><input type="checkbox" value="" name="chkAll"></td>
         						<td valign="top" align="left" width="10%">Patient Name</td>
					         	<td valign="top" align="left" width="15%">Date of Accident</td>
					         	<td valign="top" align="left" width="20%">Subscriber/Enrollee No</td>
					         	<td valign="top" align="left" width="20%">Name of Insurance Company</td>
								
								<td valign="top" align="left" width="10%">Action</td>
          			</tr>
							<!-- getting addAttibute value -->
							<%-- <c:set value="${hardshipagreementform.hardshipagreement[0]}" var="Hardshipagreement"> </c:set> --%>
						<c:if test="${fn:length(insuranceplanform.insuranceplan) gt 0}">
        				  <c:forEach items="${insuranceplanform.insuranceplan}" var="Insuranceplan" varStatus="status">
        				       				<tr class="row1">
        				       				<td valign="center" align="right" width="10%"></td>
								            <td valign="top" align="left"  width="10%"><a href="viewinsuranceplan?no=${Insuranceplan.no}">${Insuranceplan.pat_name}</a></td>
											<td valign="top" align="left" width="10%">${Insuranceplan.accident_date}</td>
											<td valign="top" align="left" width="10%">${Insuranceplan.enrollee}</td>
											<td valign="top" align="left" width="10%">${Insuranceplan.insure_comp}</td>
											
											<td valign="top" align="left" width="10%">
											<a href="#" title="" ><img src="resources/images/icons/icon_edit.png" alt="Edit" /></a><a href="<c:out value="editinsuranceplan?no=${Insuranceplan.no}"/>" style="padding-right:10px;">Edit</a>
											<a href="#" title=""><img src="resources/images/icons/icon_delete.png" alt="Delete" /></a><a href="<c:out value="deleteinsuranceplan?no=${Insuranceplan.no}"/>" onclick="return confirmation()">Remove</a>
											</td>
										
								</tr>
							    	</c:forEach>
							    	</c:if>
							    <c:if test="${fn:length(insuranceplanform.insuranceplan) == 0}">	
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
	<script type="text/javascript">
	function confirmation() 
	{
	var answer = confirm("Are you Sure You Want to Delete Participant ?")
	if (answer){
		return true;
	}
	else{
		return false;
	}
}
	</script>
<jsp:include page="footer.jsp"></jsp:include>