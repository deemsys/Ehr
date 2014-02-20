<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
<script src="resources/js/jquery.min.js"></script>
 <script src="resources/js/jquery-ui.js"></script>
 <script src="resources/js/jquery-1.9.1.js"></script>
 <STYLE type="text/css">
  P#mypar {font-style:calibri;
  line-height:18px;}
  
  </STYLE>
 <script>
 $(function() {
           $( "#datepicker" ).datepicker();
         });
 
</script>
</head>
 <body>
<div id="right_content">
<form action="updatenoticeassignment" method="POST">
 <c:forEach items="${noticeassignmentform.noticeassignmentdetails}" var="noticeassignmentdetails" varStatus="status">
	     	
<table cellpadding="0" cellspacing="0" border="0" height="100" width="70%" class="margin_table">
       <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
		<div class="status success" style="display: none;">
            <p class="closestatus"><a title="Close" href="">x</a></p>
            <p><img alt="Success" src="images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr> 
      <tr>
        <td valign="top" align="center">
        	<div>
	            <div class="headings altheading">
	             <h2>CHIROPRACTIC THERAPY CENTER</h2> 
	            </div>
	            <div class="contentbox">
	             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr ><td width="260"></td>
              <td ><b>Dr. Darrin A. Pordash, D.C.</b></td>
              </tr>
              <tr ><td width="260"></td>
              <td ><b>5190 Detroit Road</b></td>
              </tr>
               <tr ><td width="260"></td>
              <td ><b>The Sheffield Village Plaza</b></td>
              </tr>
              <tr ><td width="260"></td>
              <td ><b>Sheffield Village, OH 44035</b></td>
              </tr>
             
              <tr ><td width="260"></td>
              <td ><b>Phone (440) 934-3099 Fax (440) 934-3107 </b></td>
              </tr>
             </table>
              <table> <tr>
              <td width="90"></td><br>
              <td><p><b>PLEASE READ:THIS IS NOTICE TO YOU OF AN ASSIGNMENT</b></p>
              </td></tr></table>
             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr >
              <td height="20" width="180"><span class="err">*</span>Name Of Insurance Company:</td>
              <td ><input type="hidden" name="noticeid" value="${noticeassignmentdetails.noticeid }"><c:out value="${noticeassignmentdetails.nameofins}"/></td>
              <td height="40" width="110" ><span class="err">&nbsp;&nbsp;*</span>Name Of Attorney:</td>
              <td >&nbsp;&nbsp;<c:out value="${noticeassignmentdetails.nameofattorney}"/></td>
              </tr>
              </table>
                <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td  width="180"><span class="err">*</span>Address</td>
              <td  height="20" ><c:out value="${noticeassignmentdetails.address1}"/>
            </td>   <td height="10" width="106" ><span class="err">*</span>Address:</td>
              <td height="15" width="140"><c:out value="${noticeassignmentdetails.address4}"/>
              </tr>
              <tr><td height="10" width="180"></td>
              <td height="20">
            
             <c:out value="${noticeassignmentdetails.address2}"/>
              </td> 
               <td height="10" width="106" ><span class="err"></span></td>
               <td height="15" width="190"><c:out value="${noticeassignmentdetails.address5}"/></td>
               </tr>
              <tr><td   width="180"></td>
              <td height="20">
             <c:out value="${noticeassignmentdetails.address3}"/>
              </span></td> <td height="10" width="106" ><span class="err"></span></td>
               <td height="15" width="190"><c:out value="${noticeassignmentdetails.address6}"/></td>
               </tr></table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td  width="180"><span class="err">*</span>Regarding:</td>
              <td ><c:out value="${noticeassignmentdetails.regarding}"/></td>                   
          </tr> 
          <tr>
            <td height="40" width="180"><span class="err">*</span>PatientName:</td>
              <td ><c:out value="${noticeassignmentdetails.patientname}"/></td>                      
          </tr> 
          <tr>
            <td height="30" width="180"><span class="err">*</span>Date Of Accident:</td>
              <td ><c:out value="${noticeassignmentdetails.dateofaccident}"/></td>                      
          </tr> 
          <tr>
            <td height="20" width="180"><span class="err">*</span>Today'sDate:</td>
              <td ><c:out value="${noticeassignmentdetails.todaysdate}"/></td>                      
          </tr> <br>  
            </table>
            
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><td hight="20" width="250"><br><br><p align="left" id="mypar"><b><h4>Dear Madam/Sir:</h4></b></p></td></tr>
       		  </table>
       		
       		<table>
       		 <tr>
       		 <td><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${noticeassignmentdetails.letter}"/>has sought medical treatment from this clinic.  This patient has been injured to an
extent where the patient has determined that they cannot afford to pay for treatment on a fee for service basis.
We would definitely prefer to simply render the required treatment on a fee for service basis. However, because
 fees for service presents a hardship to this patient, we have agreed to postpone payment for treatment pursuant to the attached agreement assignment.
 </p>
       		 </td></tr>
       		 <tr><td>
       		 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The assignment is being used solely to accommodate this patient. Our financial interest has not been 
increased from a fee for service basis by our agreement to postpone collection of treatment fees; in fact, this method is less desirable to us than fee for service.
       		   </p>
       		 </td>
       		 </tr>
       		 <tr><td>
       		 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; However, we cannot agree to postpone our fees and extend unsecured credit over the entire treatment 
period or longer. On some prior occasions, patients have received settlement proceeds directly from an insurer or
 from legal counsel, and have immediately claimed to be unable to pay for postponed treatment fees, or have filed 
for protection of creditors.
       		 </p>
       		 </td>
       		 </tr>
       		 <tr><td>
       		 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The patient has provided specific instructions that direct payment for outstanding treatment fees should be
 made to this clinic. In the unlikely event that a person distributing proceeds from this patient's claim disregards the assignment, in whole or in part, and pays the patient directly, we would be forced to look for payment from that
 person, if payment is not immediately received from the patient. However, we do not expect this type of problem.
 We want to stress that it is our primary objective to provide the immediate treatment this patient needs for injuries, despite financial circumstances which limit the patient's ability to pay for treatment when received.
       		  
       		 </p>
       		 </td>
       		 </tr>
       		 <tr><td>
       		 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Upon completion of treatment, all exam sheets, doctor's notes, x-ray reports, and billing statements for our patient will be submitted to your office
       		  </p>
       		 </td></tr>
       		
        	 
               <tr><td>
       		 <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please advise us in writing by <c:out value="${noticeassignmentdetails.letter1}"/> if you will not honor our Assignment. If we 
do not receive a response, we will act in reliance that you will comply with it's instructions.
       		 </p></td></tr></table>
             <table>   <tr > <br>  <td width="400"></td> 
             <td>
              <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sincerly,</b></td><br>
              </tr>
            <tr >
            <td ></td>
            <td>
           <p> <b>
               Dr. Darrin A. Pordash, D.C., B.A.C. 
            </b></p>
            </td></tr>
             <tr >
            <td ></td>
            <td>
           <p> <b>
               Chiropractic Therapy Center
            </b></p>
            </td></tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr >
       		  <td valign="right" align="right" class="input_txt"><span class="err">*</span>Treating Physician
             <c:out value="${noticeassignmentdetails.treatingphysician}"/></td>
              </tr><br>
              </table>
              <table><tr> <td><input type="submit" class="submit_btn" value="Save"></td>
               <td><a href="responseattorney"style="color:white" class="submit_btn">Cancel</a></td>
              </tr></table>
              </div>
        	  </div>
        	  </td>
        	  </tr>
        	  </table>
        	  </c:forEach>
        	  </form>
        	  </div>
        	  </body>
        	  </html>
        	  <jsp:include page="footer.jsp"></jsp:include>