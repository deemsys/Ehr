<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp"></jsp:include>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript" src="js/ajaxpaging.js"></script>
<script src="resources/js/jquery_checkbox.js" type="text/javascript"></script>
<script src="resources/js/jquery.ui.dialog.js" type="text/javascript"></script>
<script src="resources/js/jquery.ui.position.js" type="text/javascript"></script>
<br><br>
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
			          <h2>View Thoracic Exams</h2>
			        </div>
			        <div class="contentbox">
			      <!--   <form action="findPatients" method="GET">  --> 
			      <form action="thoracicexam" method="POST"> 
						<table cellpadding="0" cellspacing="0" border="0" width="100%">
				     <tr class="title">
								
								
         						<td valign="top" align="left" width="25%">Patient Id</td>
         						<td valign="top" align="left" width="25%">Patient Name</td>
					         	<td valign="top" align="left" width="25%">Date</td>
					            <td valign="top" align="left" width="25%">Action</td>
					         	
          			</tr>
							<!-- getting addAttibute value -->
						<c:if test="${fn:length(thoracicexamForm.thoracicexam) gt 0}">
        				  <c:forEach items="${thoracicexamForm.thoracicexam}" var="thoracicexam" varStatus="status">
        				       				<tr class="row1">
        				       				
								        <td valign="top" align="left"  width="10%"> <a href="thoracicexamlist?thoracicexamid=${thoracicexam.thoracicexamid}">${thoracicexam.thoracicexamid}</a></td>
											<td valign="top" align="left" width="15%">${thoracicexam.pname}</td>
											<td valign="top" align="left" width="15%">${thoracicexam.date}</td>
											
												<td valign="top" align="left">
											<%--  <c:if test="${currentuser.adminuser[0].editradiologicreport==1}"> --%>
												<a href="#" title="" ><img src="resources/images/icons/icon_edit.png" alt="Edit" /></a><a href="<c:out value="editthoracicexam?thoracicexamid=${thoracicexam.thoracicexamid}"/>" style="padding-right:10px;">Reexam</a>
											<%-- 	 </c:if>
 --%>												<%--<c:if test="${currentuser.adminuser[0].deleteparticipant==1}"> --%>

 
											<a href="#" title=""><img src="resources/images/icons/icon_delete.png" alt="Delete" /></a><a href="<c:out value="deletethoracicexam?thoracicexamid=${thoracicexam.thoracicexamid}"/>" onclick="return confirmation()">Remove</a>
											<%-- </c:if> --%>
											</td>	
										
								</tr>
							    	</c:forEach>
							    	</c:if>
							    <c:if test="${fn:length(thoracicexamForm.thoracicexam) == 0}">	
							    	<tr class="row1">
							    	<td colspan="7" width="100%"><center><b>No Participants Found!!!</b></center></td>
							    	</tr>
							    	</c:if>
							    						    						    						    						    						    	<tr><td colspan="6">  
	<div class="extrabottom">
              <ul class="pagination">
         
              <c:if test="${currentpage!=1&&currentpage!=null}">
             <li class="page_unselect"><a href="viewthoracicexam_page?page=${currentpage - 1}" >Prev</a></li> 
               </c:if>
              
             <%-- <c:forEach var="count" begin="1" end="${noofrows}">  --%>
               <c:forEach begin="1" end="${noofpages}" var="i">
                <c:choose>
                    <c:when test="${currentpage eq i}">
                      <li class="page"><a class="paging_select"><c:out value="${i}"></c:out></a></li>
                     </c:when>
                    <c:otherwise>
                        <li class="page_unselect"><a href="viewthoracicexam_page?page=${i}"><c:out value="${i}"></c:out></a></li>
                    </c:otherwise>
                </c:choose>
            </c:forEach>          
            <c:if test="${currentpage!=noofpages}">
              <li class="page_unselect"><a href="viewthoracicexam_page?page=${currentpage+1}">Next</a></li> 
                 </c:if>
              <c:choose>
              <c:when test="${button=='viewall'}">
                  <li class="page"><a href="viewallthoracicexam" class="paging_select">ViewAll</a></li>
             </c:when>
                <c:otherwise>
                  <li class="page"><a href="viewthoracicexam" class="paging_select">Back</a></li>
              </c:otherwise>
              </c:choose>
							 </table>
								 </form>
							 </div>
							 </td>
							 </tr>
							 </table>
							 </div>




<script language="javascript">

function confirmation() {
	var answer = confirm("Are you Sure You Want to Delete  Patient from Thoracic exam ?");
	if (answer){
		return true;
	}
	else{
		return false;
	}
}

</script>

<jsp:include page="footer.jsp"></jsp:include>	
