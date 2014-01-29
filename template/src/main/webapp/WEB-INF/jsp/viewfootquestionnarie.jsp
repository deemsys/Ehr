<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp"></jsp:include>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript" src="js/ajaxpaging.js"></script>
<script src="resources/js/jquery_checkbox.js" type="text/javascript"></script>
<br><br>
<div id="right_content">
	
    	<table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      		
			<tr>
			<c:if test="${success==true}">
        <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
            <div id="success_statusbar" class="status success">
            <p class="closestatus"><a title="Close" href="viewhipquestionnaire">x</a></p>
            <p><img alt="Success" src="resources/images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr>
    </c:if>
    </tr>
      		<tr>
        		<td valign="top" align="left">
			        <div class="headings altheading">
			          <h2>VIEW FOOT QUESTIONNARIE</h2>
			        </div>
			        <div class="contentbox">
			      <!--   <form action="findPatients" method="GET">  --> 
			      <form action="footquestionnarie" method="POST"> 
						<table cellpadding="0" cellspacing="0" border="0" width="100%">
				     <tr class="title">
								
								<td valign="top" align="left" width="10%">ID</td>
         						<!-- <td valign="top" align="left" width="10%">Patient Name</td>	 -->				         	
					         	<td valign="top" align="left" width="10%">Date</td>
							<td valign="top" align="left" width="10%">Action</td>
          			</tr>
							<!-- getting addAttibute value -->
						<c:if test="${fn:length(footquestionnarieForm.footquestionnariedetails) gt 0}">
        				 <c:forEach items="${footquestionnarieForm.footquestionnariedetails}" var="footquestionnariedetails" varStatus="status">
        				       				<tr class="row1">
        				       				<td valign="top" align="left" width="10%"><a href="footquestionnarielist?footquestionno=${footquestionnariedetails.footquestionno}">${footquestionnariedetails.footquestionno}</a></td>
								           <%--  <td valign="top" align="left"  width="10%"><a href="hipexamlist?hipquestionno=${hipquestionnairedetails.hipquestionno}">${hipquestionnairedetails.pname}</a></td> --%>
											
											<td valign="top" align="left" width="10%">${footquestionnariedetails.date}</td>
											
											<td valign="top" align="left" width="10%">
											<a href="#" title="" ><img src="resources/images/icons/icon_edit.png" alt="Edit" /></a><a href="<c:out value="editfootquestionnarie?footquestionno=${footquestionnariedetails.footquestionno}"/>" style="padding-right:10px; ">Edit</a>
											<a href="#" title=""><img src="resources/images/icons/icon_delete.png" alt="Delete" /></a><a href=" <c:out value="deletefootquestionnarie?footquestionno=${footquestionnariedetails.footquestionno}"/>" onclick="return confirmation() ">Remove</a>
											</td>
										
								</tr>
							    	</c:forEach>
							    </c:if>	
							    <c:if test="${fn:length(footquestionnarieForm.footquestionnariedetails) == 0}">	
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