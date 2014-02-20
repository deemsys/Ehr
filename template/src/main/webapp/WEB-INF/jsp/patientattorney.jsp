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
        
        	               <div class="contentbox">
        	             
 <table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table" style="width: 583px; "><tr><td>
	            <div class="contentbox">
	             <p align="left"><h2><center>I.-e.   Form Cover Letter For Patient's Attorney</h2></p> <br>
	             <p align="center"><h4 align="center">Put This On Clinic Letterhead</h4> </p><br>
	             
	             
	             </td></tr>
	             <tr><td>
	             <p align="right"></p><h4 align="right"><u>SENT BY CERTIFIED MAIL</u><br></h4></td></tr>
	             <tr><td> <p align="right"></p><h4 align="right">Notice of Clinic's claim of an interest subject to</h4> 
	             <p align="right"></p><h4 align="right">safekeeping in trust account.</h4> 
	             <p align="right"></p><h4 align="right">Ohio Rules of Professional Conduct.  Rule 1.15.</h4> 
	             
	             
	             </td></tr>
	             <tr><td>
	             <table align="center" cellpadding="0" cellspacing="0" border="0"   width="70%"  ">
              <tr>
              <td style="width: 212px; "><span class="err"></span> Name of Patient's Attorney</td>
              <td><input type="text" class="input_txtbx1" name="name" id="name"><span class="err"><form:errors path="Perrychiropractic.insurance"></form:errors></span></td>
              </tr>
              </table>
              <br>
	             </td></tr>
	             <tr><td>
	              <table align="center" cellpadding="0" cellspacing="0" border="0"   width="70%"  ">
              <tr>
              <td style="width: 212px; "><span class="err"></span>Address </td>
              <td><input type="text" class="input_txtbx1" name="address" id="address"><span class="err"><form:errors path="Perrychiropractic.insurance"></form:errors></span></td>
              </tr>
              </table>
              <br></td></tr>
               <tr><td>
               <table align="center" cellpadding="0" cellspacing="0" border="0"   width="70%"  ">
              <tr>
              <td style="width: 212px; "><span class="err"></span>Patient's Name </td>
              <td><input type="text" class="input_txtbx1" name="patientname" id="patientname"><span class="err"><form:errors path="Perrychiropractic.insurance"></form:errors></span></td>
              </tr>
              </table>
              <br></td></tr>
              
	           <tr><td>
               <table align="center" cellpadding="0" cellspacing="0" border="0"   width="70%"  ">
              <tr>
              <td style="width: 212px; "><span class="err"></span>Date of Accident </td>
              <td><input type="text" class="input_txtbx1" name="date" id="date"><span class="err"><form:errors path="Perrychiropractic.insurance"></form:errors></span></td>
              </tr>
              </table>
              <br></td></tr>            
	             
	            <tr><td>
	            
	            <p align="left"> Dear Madam or Sir:  </p>
	            
	            </td></tr> 
	            
	             <tr><td>
	            <p align="left"> <input type="text" class="input_txtbx1" name="dearsir" id="dearsir">has sought medical treatment from this clinic.  This patient (your client) has been injured to an extent where the patient has determined that they cannot afford to pay for treatment on a fee for service basis.  We would definitely prefer to simply render the required treatment on a fee for service basis.  However, because fees for service presents a hardship to this patient, we have agreed to postpone payment for treatment, but in direct reliance on the continuing commitment the patient has made to us in the attached Treatment Fee Agreement and Instructions to Attorney. </p>
	            
	                        
	            	            
	            </td></tr> 
	            
	             <tr><td>
	             
	              In the unlikely event that your client later refuses to permit you to pay our treatment fees out of settlement or judgment proceeds, please hold any disputed proceeds in your trust account, and bring the matter to our attention.
	             
	              </td></tr>
	             
	              <tr><td>
	             
	             You are most likely aware of West Broad Chiropractic v. American Family Insurance, (2009) 122 Ohio St.3d 497, 2009-Ohio-3506.  In this recent case, the Ohio Supreme Court held that a medical provider could not bring a civil action against a third party insurer for ignoring a patient’s assignment of a portion of expected proceeds from a tort claim, because at the time the patient made the assignment, the patient could not then transfer the right to sue for settlement proceeds. 
	             
	             </td></tr>
	             <tr><td>
	             The West Broad case may lead some counsel to believe that, if a client later demands all net proceeds on settlement, then counsel is required to disregard any advance instruction or directive that their client provides to them regarding payment to a medical provider. As is covered in detail below, this is not true. Existing ethics rules independently require counsel to hold funds for safekeeping, where a patient promised to make payment to a medical provider or specifically instructed counsel to pay a medical provider out of proceeds at the conclusion of a tort case. 
	             
	             
	             </td></tr>
        
        
        <tr><td>
        
        Rule 1.15 “Safekeeping Funds and Property” of the Ohio Rules of Professional Conduct prohibits a lawyer from distributing property to his or her client which he or she knows or has reason to know a third person has an interest.  Rule 1.15, Ohio Rules of Professional Conduct, effective February 1, 2007.  
        
        
        </td></tr>
        
        <tr><td>
        
        The Supreme Court of Ohio, Board of Commissioners on Grievances and Discipline issued Opinion 2007-7, which interprets Rule 1.15 and states in part:  
        
        <tr><td>
         
         <tr><td>
         
            “Examples of lawful claims of third persons subject to safekeeping by a lawyer are as follows:
         
         
         </td></tr>
        
          <tr><td>
          
          <p align="left">•   A lawful claim includes a written agreement signed by a client promising payment or authorizing the lawyer to make payment to the medical provider from the proceeds of a settlement or judgment.”  Opinion  2007-7, pg. 4. </p>
        
         </td></tr>
         
         
          <tr><td>
           <p align="left">The attached Treatment Fee Agreement and Instructions to Attorney that our patient signed is very specifically  1. “…a written agreement signed by a client promising payment…from the proceeds of a settlement or judgment; and, 2.“…a written agreement signed by a client…authorizing the lawyer to make payment to the medical provider from the proceeds of a settlement or judgment.”
           </p></td></tr>
           
            <tr><td>
            <p align="left">Please be assured that the Clinic does not expect you to pay the Clinic’s outstanding treatment fees out of a settlement of judgment if the patient objects to that, in whole or in part.  Please hold that amount in your trust account while the Clinic and patient discuss any dispute. This simply follows the requirements of Rule 1.15 and Opinion 2007-7.
            
            </p>
            
            </td></tr>
            <tr><td>
            <p align="left">Opinion 2007-7 provides the following further ethical directions: </p>
            
            <p align="center">“Under Rule 1.15(d) and (e), when a dispute arises, what are a lawyer’s safekeeping duties to a client and a third person claiming interest in funds in the lawyer’s possession and how should a dispute be resolved?”   Opinion  2007-7 at pg. 2.</p>
            
            </td></tr>
             <tr><td>
             
             
             
             <p align="center">*  *  *</p>
             </td></tr>
             
             <tr><td>
             
             <p align="center">“When there is no dispute as to funds in a lawyer’s possession, the lawyer’s ethical duty under Rule 1.15(d) is to promptly notify and deliver the funds to which a client or third person is entitled.</p>
             </td></tr>
             
             <tr><td>
             <p align="center">When a lawyer knows there is a dispute between a client and a third person who has a lawful claim under applicable law to the funds in the lawyer’s possession, the lawyer’s ethical duty under Rule 1.15(e) is to notify both the client and the third person and to hold the disputed funds in a trust account until the dispute is resolved.  The lawyer must promptly deliver all portions of funds that are not disputed.</p></td></tr>
             
             <tr><td>
              <p align="center">When a lawyer is unclear as to whether a third person has a lawful claim and the client is disputing the third person’s claim, the lawyer’s ethical duty is to notify both the client and the third person and hold the disputed funds in a trust account until the dispute is resolved.  The lawyer must promptly deliver all portions of funds that are not disputed.”  Opinion  2007-7 at pg. 9.
              </p></td></tr>
              
             <tr><td><p align="left">At a minimum, you are only required to hold disputed funds until the patient and the Clinic resolve any dispute; nothing more:
             </p></td></tr>
             
             <tr><td><p align="center">“Ideally, a lawyer will try to resolve any known disputes between a client and a third person before disputed funds come into the lawyer’s possession.  But, when a dispute arises as to funds in a lawyer’s possession, a lawyer should encourage the client and the third person to resolve the dispute through discussion.  If appropriate, a lawyer may suggest to the client and the third person that they mediate or arbitrate the dispute.  A lawyer should not unilaterally assume to arbitrate a dispute between a client and a third person.”   Opinion 2007-7 at pg. 10
             </p></td></tr>
             <tr><td><p align="center">We hope that you understand that we are covering these issues in advance, whether they will ever apply or not, so that our Clinic can provide the care that responds to our patient’s medical complaints and symptoms.  We do not want to do this, and yet end up with nothing in the end.  The legal detail which we have provided in this letter reflects our advance consultation with our own legal counsel.  
             </p></td></tr>
            <tr><td><p align="center">We want to stress that it is our primary objective to provide the immediate treatment this patient needs for injuries, despite financial circumstances which prevent the patient’s ability to pay for treatment when received.	Please let us know if you will not,  at a minimum,  hold the funds at the conclusion of this case, as set out above ?  
            </p></td></tr>
            
              <tr><td><p align="center">We are simply seeking to determine your intentions now so that we may protect ourselves before a default in our treatment fees.  
              </p></td></tr>
              
              <tr><td><p align="center">We attach a short letter of protection which has been reviewed and authorized by our patient.  If you will sign it and return it to us in the enclosed return envelope, this would also adequately confirm our request above.
              </p></td></tr>
              
              <tr><td><p align="right">Sincerely,
              </p></td></tr>
              <tr><td></td></tr><tr><td><p align="right">Name of Clinic<br>Treating Physician</p></td></tr>
              
              
              </tr></td>
        	</table>
        	  </div>
        	  
        	  
        	  
        	 
        	  </form>
        	  </div>
        	  </body>
        	  </html>
        	  <jsp:include page="footer.jsp"></jsp:include>
              
              
             
             
             
             
             
             
             
             
             
             
             

             
             
             
             
             
           