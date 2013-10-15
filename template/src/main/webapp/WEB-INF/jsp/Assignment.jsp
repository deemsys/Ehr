<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<link rel="stylesheet" href="/resources/css/style.css" />
<link rel="stylesheet" href="resources/css/jquery-ui.css" type="text/css" />
 <script src="resources/js/jquery-1.9.1.js"></script>
  <script src="resources/js/jquery-ui.js"></script>
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
	  $(function() {
		    $( "#datepicker2" ).datepicker();
		  });
  
  </script>
</head>
<body>
<div id="right_content">
<form action="Assignment" method="POST">

<table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table">
<c:if test="${success==true}">
        <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
            <div id="success_statusbar" class="status success">
            <p class="closestatus"><a title="Close" href="">x</a></p>
            <p><img alt="Success" src="resources/images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr>
    </c:if>  


      <tr>
      <td valign="top" align="left">
        	<div>
	            <div class="headings altheading">
	              <h2>Authorization To Release Records/Assignment Of Benefits</h2>
	            </div>
            <div class="contentbox">
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
  				<tr>
    				<td align="left" valign="top" width="100%" style="padding-right:25px;">
                        
                        <table cellpadding="0" cellspacing="0" border="0" width="50%">
                        <tr>
                        <div align="justify">
				                <p id="mypar">&nbsp;This agreement made this the: <input type="text" class="input_txtbx1" id="inp_id" name="Day" /><span class="err"><form:errors path="Assignment.Day"></form:errors></span>
				                  	  
				                  	day of <input type="text" class="input_txtbx1" id="inp_id" name="month" /><span class="err"><form:errors path="Assignment.month"></form:errors></span>
				                  	2013 between <input type="text" class="input_txtbx1" id="inp_id" name="year" /><span class="err"><form:errors path="Assignment.year"></form:errors></span>
				                  	(claimant) and <input type="text" class="input_txtbx1" id="inp_id" name="center" /> <span class="err"><form:errors path="Assignment.center"></form:errors></span>constitutes an irrevocable and binding agreement between the parties as follows:
Claimant was involved in an accident on or about the <input type="text" class="input_txtbx1" id="inp_id" name="day1" /><span class="err"><form:errors path="Assignment.day1"></form:errors></span>
day of <input type="text" class="input_txtbx1" id="inp_id" name="month1" /> <span class="err"><form:errors path="Assignment.month1"></form:errors></span>and I therein incurred injuries for which I have sought medical treatment from PCTC.</p>

<P id="mypar"> Claimant herby directs any and all insurance carriers, attorneys, 
agencies, companies, individuals, and/or other legal entities (“payers.”), 
which may elect to pay or be obligated o pay benefits to me regardless of the issue of liability, 
for any medical conditions, accidents, injuries, or illnesses, past or future (“condition”), to pay directly to, 
and exclusively in the name of Perry Chiropractic and Therapy Center, such sums as may be owing to PCTC, for charges
 incurred by me. These charges include but are not limited to the following: charges for treatment, narrative reports, depositions, 
 testimony, and any other charges incurred by me at PCTC.
                       </p>
  <p id="mypar"> Claimant grants a contractual lien to Perry Chiropractic and Therapy Center with respect to my charges. Compliance herewith is requisite with notice by facsimile, letter, or telephone contact. 
                       This Agreement shall not be construed as an election by PCTC to claim protection under any statutory lien law. </p>
                       
                       <p id="mypar">For the purposes of the Agreement, “benefits” include, but are not limited to any of the following: proceeds from any settlement, judgment, of verdict; any proceeds from commercial health or group insurance; disability benefits; workers compensation benefits; medical payments befits; personal injury protection; lost wage benefits; lost service benefits; no-fault coverage; uninsured and underinsured motorist coverage; third-party liability distributions; malpractice proceeds; attorney retainer agreements; and any other benefits or proceeds payable to me for the purposes stated  herein, regardless of whether such proceeds are related to my accident.</justify></p>
                       <p id="mypar">In the event that claimant retains one or successive attorneys to represent them in this matter, claimant directs each attorney to issue a letter of protection to this office regarding their charges. Such letter shall be written to protect the full amount due and owing PCTC. Further, such letter shall indicate without reservation that any and all sums received by said attorney shall be subject to this agreement regardless of the source of such funds. Claimant agrees that the letter issued by said attorney cannot be revoked or modified without the express, written consent of this office. Claimant further directs each and every of my attorneys to provide immediate notice PCTC upon request any and all information regarding their personal injury case. Claimant directs his attorney(s) to provide to this office upon written or oral request any and all information regarding their personal injury case. Also agree that Claimant's attorney shall provide to PCTC upon request a full accounting of any and all funds their attorney may receive. In the event that claimants attorney fail to provide any information as required herein or as requested, the attorney did not follow claimant’s explicit instructions. Claimant’s attorney(s) obligation hereunder is valid upon the receipt of a copy of this agreement.</justify></p>
                       <p id="mypar">Claimant directs all payers to release any information regarding my treatment pertinent to my case(s)to all payers as defined above to facilitate collection under this Agreement.</p>
                       <p id="mypar">PCTC and Claimant agree that PCTC may file a copy of this Agreement; together with any applicable charges, with any or all payers, regardless of whether a claim has been established with said payers. Claimant authorizes PCTC to endorse/sign my name on any and all checks listing me as a payee which are presented to this Office for payment of an account relating to me, my spouse, or any of my dependents. Claimant authorizes PCTC to apply any credit balance or charges incurred by me to any other outstanding charges still owed by me, my spouse, or my dependents, regardless of whether these other charged are related to my condition.</p>
                       <p id="mypar">Agreement does not prevent PCTC form making an immediate demand for payment or forestall collection efforts. Claimant hereby identifies PCTC for any costs or fees incurred as a result of the effort to collect on claimant’s outstanding balance due. Claimant remains responsible for payment for and reimbursement of all costs of such collection efforts, including but not limited to, court costs and attorney fees. </p>
                       <p id="mypar">This Agreement shall not be modified or revoked without the mutual written consent of PCTC and claimant. </p>
                       <p id="mypar">Claimant agrees that each and every provision of this Agreement is reasonable necessary for the protection of the rights and interests of PCTC and claimant. Should any provision of this Agreement be found to be invalid, illegal or unenforceable, or for any reason cease to be binding on any party hereto, all other portions and provisions of this Agreement shall, nevertheless, remain in full force and effect.</p>
                       
                       <p id="mypar"><b>*NOTE TO ALL PAYERS HEREUNDER, FAILURE TO FOLLOW THE EXPRESS WRITTEN INSTRUCTION OF THE CLAIMANT HEREUNDER MAY RESULT IN A BREACH OF THIS AGREEMENT. A BREACH OF THIS AGREEMENT BY THE CLAIMANT HEREUNDER BY AND THROUGH YOUR ACTIONS IS AN INTENTIONAL INTERFERENCE WITH THIS CONTRACT AND PCTC WILL PURSUE ANY PAYER FOR THAT INTERFERENCE.</b></p>
                       
                       </tr>
                       <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>PatientName: </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="patientname" /><br><span class="err"><form:errors path="Assignment.patientname"></form:errors>
				                  	</tr>
				                  	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Patient Signature:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="patientsign" /><span class="err"><form:errors path="Assignment.patientsign"></form:errors>
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Date:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="datepicker" name="patientdate" /><br><span class="err"><form:errors path="Assignment.patientdate"></form:errors>
				                  	</tr> 
				                  	
				                  	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Name of Custodial Parent or Legal Guardian :  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="parentname" /><br><span class="err"><form:errors path="Assignment.parentname"></form:errors>
				                  	</tr> 
				                  	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Parent/Guardian Signature:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="parentsign" /><span class="err"><form:errors path="Assignment.parentsign"></form:errors>
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Date:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="datepicker1" name="parentdate" /><br><span class="err"><form:errors path="Assignment.parentdate"></form:errors>
				                  	</tr> 
				                  	
				                  	<tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Perry Chiropractic and Therapy Center Representative:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="inp_id" name="representative" /><span class="err"><form:errors path="Assignment.representative"></form:errors>
				                  	<td valign="middle" align="left" class="input_txt"><span class="err">*</span>Date:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	<input type="text" class="input_txtbx1" id="datepicker2" name="representativedate" /><br><span class="err"><form:errors path="Assignment.representativedate"></form:errors>
				                  	</tr>
				                  	 <tr>
				  <td valign="top" align="center">&nbsp;</td>
				                <td valign="top" align="center"><br><input type="submit" class="submit_btn2" value="Submit"></td>
				  </tr>
				  </div>
                        </table>
                       
                        </td>
                      
                        </tr> 
                        </table>
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