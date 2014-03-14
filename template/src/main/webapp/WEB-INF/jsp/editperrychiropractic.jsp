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
 $(function() {
           $( "#datepicker1" ).datepicker();
         });
</script>
</head>
 <body>
<div id="right_content">
<form action="insertperrychiropractic" method="POST">

<table cellpadding="0" cellspacing="0" border="0" height="100" width="60%" class="margin_table">
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
        	<c:set value="${perrychiropracticform.perrychiropracticdetails[0]}" var="perrychiropracticdetails"> </c:set>
	            <div class="headings altheading">
	             <h2>PERRY CHIROPRACTIC & THERAPY CENTER OF CANTON, INC.</h2> 
	            </div>
	            <div class="contentbox">
	             <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr ><td width="290"></td>
              <td ><b>Dr. Charles T. Yang, DC, DABFP</b></td>
              </tr>
              <tr ><td width="290"></td>
              <td ><b>4933 West Tuscarawas Street </b></td>
              </tr>
               <tr ><td width="290"></td>
              <td ><b> 
Canton, Ohio 44708
</b></td>
              </tr>
              <tr ><td width="290"></td>
              <td ><b>(330) 477-3036 Phone</b></td>
              </tr>
             
              <tr ><td width="290"></td>
              <td ><b>(330) 477-3037 Fax  </b></td>
              </tr>
               </table>
                 <br>
                 <br>       
              
       		<table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr><p align="center"><b>Form Cover Letter For Insurance Company, Copy To Attorney</b>
              </p>
              </tr>
               <tr ><td width="70%"></td>
              <td ><b>SENT BY CERTIFIED MAIL</b></td>
              </tr>
              <tr ><td width="70%"></td>
              <td ><b>PLEASE READ:  THIS IS NOTICE TO YOU OF</b></td>
              </tr>
              <tr ><td width="70%"></td>
              <td ><b>AN ATTACHED ASSIGNMENT OF </b></td>
              </tr>
               <tr ><td width="70%"></td>
              <td ><b>INSURANCE COVERAGE  FOR AN EXISTING </b></td>
              </tr>
               <tr ><td width="70%"></td>
              <td ><b> LOSS </b></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr ><td width="70%"></td>
              <td ><b> PLEASE OPEN CLAIM IN ACCORD WITH  </b></td>
              </tr>
               <tr ><td width="70%"></td>
              <td ><b> BELOW.  </b></td>
              </tr>
              </table>
              <br>
              <br>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              
               <tr ><td width="70%"></td>
              <td ><b>COPY TO PATIENT'S ATTORNEY.

 </b></td>
              </tr>
              </table>
              
              <br>
              <br>
              		<table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="50%"><span class="err"></span>Name of Insurance Company:</td>
              <td ><input type="hidden" name="perryid" value="${perrychiropracticdetails.perryid }"><input type="text" class="input_txtbx1" name="insurance"  value="${perrychiropracticdetails.insurance}" id="insurance" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="50%"><span class="err"></span>Address:</td>
              <td ><input type="text" class="input_txtbx1" name="address" value="${perrychiropracticdetails.address}"  id="address" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="50%"><span class="err"></span></td>
              <td ><input type="text" class="input_txtbx1" name="address1"  value="${perrychiropracticdetails.address1}"   id="address1" /><span class="err"><form:errors path="Faxcover.faxno"></form:errors></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="50%"><span class="err"></span>Regarding:</td>
              <td ><input type="text" class="input_txtbx1" name="reg"  value="${perrychiropracticdetails.reg}"  id="reg" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="50%"><span class="err"></span>Patient's Name/ Name of Person Entitled To Coverage: </td>
              <td ><input type="text" class="input_txtbx1" name="nameofperson" value="${perrychiropracticdetails.nameofperson}"   id="nameofperson" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="25" width="50%"><span class="err"></span>Date of Accident: </td>
              <td ><input type="text" class="input_txtbx1" name="dateofaccident"  value="${perrychiropracticdetails.dateofaccident}" id="datepicker" /><span class="err"><form:errors path="Hardshipagreement.date"></form:errors></td>
              </tr>
              </table>
              
              <br>
              <br>       
              
                          
         	
              
       	<table cellpadding="0" cellspacing="0" border="0" width="100%">
       	<tr>
       	<td>
       	<p align="left">
       	Dear Madam or Sir:
     </p>
     <br>
     
  <p><input type="text" class="input_txtbx1" name="subject" value="${perrychiropracticdetails.subject}"   id="subject" />has sought medical treatment from this clinic.  This patient has been injured to an extent where the patient has determined that they cannot afford to pay for treatment on a fee for service basis.  We would definitely prefer to simply render the required treatment on a fee for service basis.  However, because fees for service presents a hardship to this patient, we have agreed to postpone payment for treatment pursuant to the attached medical proceeds assignment. </p>	
 <br>
     

<p>You are most likely aware of West Broad Chiropractic v. American Family Insurance, (2009) 122 Ohio St.3d 497, 2009-Ohio-3506.  In this recent case, the Ohio Supreme Court held that a medical provider could not bring a civil action against a third party insurer for ignoring a patient's assignment of a portion of expected proceeds from a tort claim, because at the time the patient made the assignment, the patient could not yet transfer the right to sue for settlement proceeds. 

</p>
 <br>
     
<p>
However, a different recent Ohio Supreme Court case confirms the validity of the attached assignment. Pilkington North America, Inc. v. Travelers Casualty & Surety Company (2005) 112 Ohio St. 3d 482, 861 N.E.2d 121  held that someone who is entitled to insurance coverage under a policy can assign future coverage payments from that insurance company, after a specific loss event has already occurred.  In the Pilkington case, the insurance company argued against this assignment, saying that its policy did not permit an assignment of any rights in the policy. The Ohio Supreme Court disagreed, and held that the anti-assignment provision in the policy did not apply to an assignment of coverage amounts for a loss that the insured person had already experienced.  Because of this decision, a person entitled to coverage under your policy with your insured can assign the right to pursue coverage amounts for an accident that has already occurred, over to someone he or she owes money.



</p>
 <br>
   <p align="center">In accord with the direct language of Pilkington, we are entitled, by written consent from the above patient:
   
   
   
   </p>  
     <br>
   <p align="left">  
     
     1. 	To open a claim with your company.

     
   </p>  
     <br>
<p align="left"> 2. 	To communicate with your company, and obtain information from your company about the status of this claim.



</p>  
     <br>
     
  <p align="left">   
     
     
    3. 	The patient cannot cancel this claim or receive payment for the claim, and neither can counsel for the patient. Any attempt to do this by the patient or counsel will be regarded as tortious or illegal interference.
 </p>  
     <br>
     
   <p>  
     The Pilkington case is not in conflict with the West Broad case:  As the Ohio Supreme Court makes clear in Pilkington, when a person entitled to coverage assigns over coverage for an auto accident that has already occurred, the patient is assigning a current contract right (called a 'chose in action') over to his or medical provider -that is, the current contract right to sue the insurance company for coverage amounts for an auto accident that has already occurred.
     
     </p>  
     <br>
     
     <p>
     
     We want to stress that we are not providing this information to you in advance for provocation; much to the contrary, we are trying to do everything possible at this point to reduce the possibility of any later disagreement. 
     
     </p>
     <br>
     <p>
     We hope that you understand that we are covering these issues in advance, so that our Clinic can provide the care that responds to our patient's medical complaints and symptoms.  We do not want to do this, and yet end up with nothing in the end.  The legal detail which we have provided in this letter reflects our advance consultation with our own legal counsel.  
     
     </p>
     <br>
     <p>
     
     The patient has provided specific instructions that direct payment for outstanding treatment fees should be made to this clinic. Please again note that the patient cannot cancel the claim for coverage from your company-and neither can the attorney for the patient. If you disregard this Assignment, in whole or in part, we will seek recovery of our outstanding treatment fees directly from your company, even if it requires commencement of suit.  However, we do not expect this type of problem.  We want to stress that it is our primary objective to provide the immediate treatment this patient needs for injuries, despite financial circumstances which limit the patient's ability to pay for treatment when received.
     </p>
     <br>
     
     <p>
     
     <b>
     Please advise us in writing if you will not honor this Assignment.  Please note that this does not mean or imply that your obligation to pay us is subject to your consent.  It is not.  We are simply seeking to determine your intentions now so that we may protect ourselves before a default in our treatment fees.  If we do not receive a response, we will act in reliance that you will comply with its instructions.
    </b> </p>
     <br>
     
     
     
     
     
       </td>
       	
       	</tr>
       		
       		
       		 </table>
       		 <br>
       		<table cellpadding="0" cellspacing="0" border="0" width="100%"><tr> 
       		 <td height="25" width="70%"><span class="err"></span></td>
       		  <td height="25" width="50%"><span class="err"></span>Sincerely,</td></tr>
        	  </table>
           <br>
           <br>
           <table cellpadding="0" cellspacing="0" border="0" width="100%"><tr> 
       		 <td ><p align="right"> Perry Chiropractic & Therapy Center of Canton, Inc       </p></td>
       		<tr>
       		<td>
       		<p align="right">
       		
       		  
       		  
       		    Dr. Charles T. Yang D.C. 
       		    </p></td></tr>     		         		  
        	  </table>
           
           
            
            <table><tr> <td><input type="submit" class="submit_btn" value="update"></td>
               <td><a href="viewperrychiropractic"style="color:white" class="submit_btn">Cancel</a></td>
              </tr></table>
              </div>
        	  </div>
        	  </td>
        	  </tr>
        	  </table>
        	  </form>
        	  </div>
        	  </body>
        	  </html>
        	  <jsp:include page="footer.jsp"></jsp:include>
        	 