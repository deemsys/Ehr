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
            <p class="closestatus"><a title="Close" href="treatminorist">x</a></p>
            <p><img alt="Success" src="resources/images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr>
    </c:if>
    </tr>
      		<tr>
        		<td valign="top" align="left">
			        <div class="headings altheading">
			          <h2>Consent To Treat Minor List</h2>
			        </div>
			        <div class="contentbox">
			      <!--   <form action="findPatients" method="GET">  --> 
			      <form action="hardshipagreement" method="POST"> 
						<table cellpadding="0" cellspacing="0" border="0" width="100%">
				     <tr class="title">
								
								<td valign="center" align="right" width="10%"><input type="checkbox" value="" name="chkAll"></td>
         						<td valign="top" align="left" width="10%">Patient sign</td>
					         	<td valign="top" align="left" width="10%">Age</td>
					         	<td valign="top" align="left" width="10%">Guardian</td>
								<td valign="top" align="left" width="10%">Doctor Name</td>
								<td valign="top" align="left" width="10%">Action</td>
          			</tr>
							<!-- getting addAttibute value -->
							<%-- <c:set value="${hardshipagreementform.hardshipagreement[0]}" var="Hardshipagreement"> </c:set> --%>
						<c:if test="${fn:length(treatminordetailsform.minorDetails) gt 0}">
        				  <c:forEach items="${treatminordetailsform.minorDetails}" var="Minordetails" varStatus="status">
        				       				<tr class="row1">
        				       				<td valign="center" align="right" width="10%"></td>
								            <td valign="top" align="left"  width="10%"><a href="viewtreatminor?minor_no=${Minordetails.minor_no}">${Minordetails.signed}</a></td>
											<td valign="top" align="left" width="10%">${Minordetails.age}</td>
											<td valign="top" align="left" width="10%">${Minordetails.guardian}</td>
											<td valign="top" align="left" width="10%">${Minordetails.drname}</td>
											
											<td valign="top" align="left" width="10%">
											<a href="#" title="" ><img src="resources/images/icons/icon_edit.png" alt="Edit" /></a><a href="<c:out value="edittreatminor?minor_no=${Minordetails.minor_no}"/>" style="padding-right:10px;">Edit</a>
											<a href="#" title=""><img src="resources/images/icons/icon_delete.png" alt="Delete" /></a><a href="<c:out value="deletetreatminor?minor_no=${Minordetails.minor_no}"/>" onclick="return confirmation()">Remove</a>
											</td>
										
								</tr>
							    	</c:forEach>
							    	</c:if>
							    <c:if test="${fn:length(treatminordetailsform.minorDetails) == 0}">	
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