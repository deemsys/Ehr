<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp"></jsp:include>
<div id="right_content">
	<form action="viewpatient?page=1" name="dashboard" method="POST">
		<table cellpadding="0" cellspacing="0" border="0" width="98%"
			class="margin_table">

			<tr>
				<td valign="top" align="left"><div>
						<div class="headings altheading">
							<h2>Patient Information</h2>
						</div>
						<div class="contentbox">
							<table cellpadding="0" cellspacing="0" border="0" width="100%">
								<tr class="title">
									<td valign="top" align="left" width="10%">Name</td>
									<td valign="top" align="left" width="15%">Mobile Number</td>
									<td valign="top" align="left" width="10%">City</td>
									<td valign="top" align="left" width="10%">State</td>
									<td valign="top" align="left" width="15%">Action</td>
									


								</tr>

								<!-- Display Admin Userd here  Suresh--> 
									<c:forEach items="${PatientDetailsForm.patientdetails}" var="patientdetails" varStatus="status">
							       		<tr class="row1" onmouseover="mouse_event(this,"row_hover");" onmouseout="mouse_event(this,"row1");">
								           	<td valign="top" align="left"  width="10%">${patientdetails.Name}</td>
											<td valign="top" align="left" width="15%">${patientdetails.MobileNumber}</td>
											<td valign="top" align="left" width="10%">${patientdetails.City}</td>
											<td valign="top" align="left" width="10%">${patientdetails.State}</td>
											
										</tr>
							    	</c:forEach>
						    	

								<tr><td colspan="7">  <div class="extrabottom">
              						<ul class="pagination">
                						<li class="text"><input type="submit" name="view" value="View All" class="submit_btn"></li>
                						<li class="text"></li>
                					</ul></div></td></tr>

								</table>

								<div style="clear: both;"></div>
								</div>
								</div>
								</td>
								</tr>
								<tr>
									<td valign="top" align="left">&nbsp;</td>
								</tr>
								
							</table>
							</form>
						</div>
<jsp:include page="footer.jsp"></jsp:include>