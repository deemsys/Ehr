<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>

 <link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
  <link rel="stylesheet" href="/resources/css/style.css" />
 <script src="resources/js/jquery.min.js"></script> 
 <script src="resources/js/jquery-ui.js"></script>
 <script src="resources/js/jquey-1.9.1.js"></script>
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
<div id="right_content" >
<form action="insertperrychiropractic" method="POST">

<table cellpadding="0" cellspacing="0" border="0"  width="70%" class="margin_table">
       <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
		<div class="status success" style="display: none;">
            <p class="closestatus"><a title="Close" href="">x</a></p>
            <p><img alt="Success" src="images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr> 
      <tr>
        
        	  </tr>
        	  </table>
        	  
        	
        	
        	
        	<div>
	             
 <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 583px; "><tr><td>
	            <div class="contentbox">
	            
				 <p align="left"><h2><center>PERRY CHIROPRACTIC & THERAPY CENTER OF CANTON, INC.</h2></p> <br><p align="center"> Dr.Charles T. Yang, DC, DABFP<br>4933 West Tuscarawas Street <br>Canton, Ohio 44708<br>Phone:(330) 477-3036 <br>Fax:(330) 477-3037  </center></p>
				<h4 align="center">Form Cover Letter For Insurance Company, Copy To Attorney</h4> 
				<div align="right"><p ><h4 ><u>SENT BY CERTIFIED MAIL</u><br>
				PLEASE READ:THIS IS NOTICE TO YOU OF&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>AN ATTACHED ASSIGNMENT OF&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
				&nbsp;&nbsp;&nbsp;&nbsp;INSURANCE COVERAGE  FOR AN EXISTING LOSS <br>
				<br>
				PLEASE OPEN CLAIM IN ACCORD WITH&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</br> 
				BELOW&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br><br>
				COPY TO PATIENT'S ATTORNEY.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4></div>
              <br>
              <table align="center" cellpadding="0" cellspacing="0" border="0"   width="70%"  ">
              <tr>
              <td style="width: 212px; "><span class="err">*</span>Name of Insurance Company: </td>
              <td><input type="text" class="input_txtbx1" name="insurance" id="insurance"><span class="err"><form:errors path="Perrychiropractic.insurance"></form:errors></span></td>
              </tr>
              </table>
              <br>
               <table align="center" cellpadding="0" cellspacing="0" border="0" width="70%" style="width: 639px; ">
              <tr>
              <td style="width: 212px; "><span class="err"></span>Address </td>
              <td><input type="text" class="input_txtbx1" name="address" id="Address"><span class="err"><form:errors path="Perrychiropractic.address"></form:errors></span></td>
              </tr>
              </table>
              <br>
                <table align="center" cellpadding="0" cellspacing="0" border="0" width="70%" style="width: 639px; ">
              <tr>
              <td style="width: 212px; "><span class="err"></span></td>
              <td><input type="text" class="input_txtbx1" name="address1" id="Address"><span class="err"><form:errors path="Perrychiropractic.address1"></form:errors></span></td>
              </tr>
              </table>
              
              <br>
               <table align="center" cellpadding="0" cellspacing="0" border="0" width="70%" style="width: 639px; ">
              <tr>
              <td style="width: 212px; "><span class="err"></span>Regarding: </td>
              <td><input type="text" class="input_txtbx1" name="reg" ><span class="err"><form:errors path="Perrychiropractic.reg"></form:errors></span></td>
              </tr>
              </table>
              <br>
               
               <table align="center" cellpadding="0" cellspacing="0" border="0" width="70%" style="width: 639px; ">
              <tr>
              <td style="width: 212px; "><span class="err"></span>Patient's Name/ Name of Person Entitled To Coverage</td>
              <td><input type="text" class="input_txtbx1" name="nameofperson" id="nameofperson"><span class="err"><form:errors path="Perrychiropractic.nameofperson"></form:errors></span></td>
              </tr>
              </table>
              <br>
               <table align="center" cellpadding="0" cellspacing="0" border="0" width="70%">
              <tr>
              <td style="width: 212px; "><span class="err"></span>Date of Accident: </td>
              <td><input type="text" class="input_txtbx1" name="dateofaccident" id="datepicker"><span class="err"><form:errors path="Perrychiropractic.dateofaccident"></form:errors></span></td>
              </tr>
              </table>
              <br>
               
              
              
              
              <br>
             
              
              
              
                             
              <p align="left">Dear Madam or Sir:</p> 
              <br>
              
             
              <p align="left"><input type="text" class="input_txtbx1" name="subject" id="dearsir">
   has sought medical treatment from this clinic.  This patient has been injured to an extent where the patient has determined that they cannot afford to pay for treatment on a fee for service basis.  We would definitely prefer to simply render the required treatment on a fee for service basis.  However, because fees for service presents a hardship to this patient, we have agreed to postpone payment for treatment pursuant to the attached medical proceeds assignment.</p>
        	 <br>
        	 <p align="left">You are most likely aware of West Broad Chiropractic v. American Family Insurance, (2009) 122 Ohio St.3d 497, 2009-Ohio-3506.  In this recent case, the Ohio Supreme Court held that a medical provider could not bring a civil action against a third party insurer for ignoring a patient's assignment of a portion of expected proceeds from a tort claim, because at the time the patient made the assignment, the patient could not yet transfer the right to sue for settlement proceeds. </p>
<br>
<p>However, a different recent Ohio Supreme Court case confirms the validity of the attached assignment. Pilkington North America, Inc. v. Travelers Casualty & Surety Company (2005) 112 Ohio St. 3d 482, 861 N.E.2d 121  held that someone who is entitled to insurance coverage under a policy can assign future coverage payments from that insurance company, after a specific loss event has already occurred.  In the Pilkington case, the insurance company argued against this assignment, saying that its policy did not permit an assignment of any rights in the policy. The Ohio Supreme Court disagreed, and held that the anti-assignment provision in the policy did not apply to an assignment of coverage amounts for a loss that the insured person had already experienced.  Because of this decision, a person entitled to coverage under your policy with your insured can assign the right to pursue coverage amounts for an accident that has already occurred, over to someone he or she owes money.
</p>
<p>In accord with the direct language of Pilkington, we are entitled, by written consent from the above patient:
<br>1. 	To open a claim with your company.<br>
<br>2. 	To communicate with your company, and obtain information from your company about the status of this claim.
<br><br>3. 	The patient cannot cancel this claim or receive payment for the claim, and neither can counsel for the patient. Any attempt to do this by the patient or counsel will be regarded as tortious or illegal interference.
<br>The Pilkington case is not in conflict with the West Broad case:  As the Ohio Supreme Court makes clear in Pilkington, when a person entitled to coverage assigns over coverage for an auto accident that has already occurred, the patient is assigning a current contract right (called 'chose in action'€™) over to his or medical provider - that is, the current contract right to sue the insurance company for coverage amounts for an auto accident that has already occurred.
<br>We want to stress that we are not providing this information to you in advance for provocation; much to the contrary, we are trying to do everything possible at this point to reduce the possibility of any later disagreement. 
<br>We hope that you understand that we are covering these issues in advance, so that our Clinic can provide the care that responds to our patient's medical complaints and symptoms.  We do not want to do this, and yet end up with nothing in the end.  The legal detail which we have provided in this letter reflects our advance consultation with our own legal counsel.  
	<br>The patient has provided specific instructions that direct payment for outstanding treatment fees should be made to this clinic. Please again note that the patient cannot cancel the claim for coverage from your company - €”and neither can the attorney for the patient. If you disregard this Assignment, in whole or in part, we will seek recovery of our outstanding treatment fees directly from your company, even if it requires commencement of suit.  However, we do not expect this type of problem.  We want to stress that it is our primary objective to provide the immediate treatment this patient needs for injuries, despite financial circumstances which limit the patient's ability to pay for treatment when received.
	<br><b>Please advise us in writing if you will not honor this Assignment.  Please note that this does not mean or imply that your obligation to pay us is subject to your consent.  It is not.  We are simply seeking to determine your intentions now so that we may protect ourselves before a default in our treatment fees.  If we do not receive a response, we will act in reliance that you will comply with its instructions.
        	 </b></p>
        	<p align="right">Sincerely,<br><br><br>Perry Chiropractic & Therapy Center of Canton, Inc.<br>
                                                                                                         Dr. Charles T. Yang D.C.
        	<br><br></p>
        	 <table align="center" cellpadding="0" cellspacing="0" border="0" width="70%">
              <tr>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input type="submit" class="submit_btn" value="Save"></td>
              <td>&nbsp;&nbsp;</td>
             <td><a href="viewperrychiropractic" style="color:white" class="submit_btn">Cancel</a></td>
              <td>&nbsp;&nbsp;</td>
        	  </tr>
        	  </table>
        	
        	
        	
        	
        	
        	</tr></td>
        	</table>
        	  </div>
        	  </div>
        	 
        	  </form>
        	  </div>
        	  </body>
        	  </html>
        	  <jsp:include page="footer.jsp"></jsp:include>