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
									<td valign="top" align="left" width="15%">DateOfBirth</td>
									


								</tr>

								<!-- Display Admin Userd here  Suresh--> 
									<c:forEach items="${PatientDetailsForm.patientDetails}" var="patientDetails" varStatus="status">
							       		<tr class="row1">
								           	<td valign="top" align="left"  width="10%"><a href="patientDetails?id=${patientDetails.Patient_id}">${patientDetails.Name}</a></td>
											<td valign="top" align="left" width="15%">${patientDetails.MobileNumber}</td>
											<td valign="top" align="left" width="10%">${patientDetails.City}</td>
											<td valign="top" align="left" width="10%">${patientDetails.State}</td>
											<td valign="top" align="left" width="10%">${patientDetails.DateOfBirth}</td>
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