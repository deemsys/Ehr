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
<form action="" method="POST">
 <c:forEach items="${responseattorneyform.responseattorneydetail}" var="responseattorneydetail" varStatus="status">
<table cellpadding="0" cellspacing="0" border="0" width="70%" class="margin_table">
       <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;">&nbsp;
		<div class="status success" style="display: none;">
            <p class="closestatus"><a title="Close" href="">x</a></p>
            <p><img alt="Success" src="images/icons/icon_success.png"><span>Success!</span>.</p>
          </div>
      </tr> 
      <tr>
        <td valign="top" align="left">
        	<div>
	            <div class="headings altheading">
	             <h2>Form Letter - Response to Attorney</h2>
	        </div>
	            <div class="contentbox">
	            <p align="right"><b> SENT BY CERTIFIED MAIL</b></p>
	           <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr>
              <td height="50" width="120"><span class="err">*</span>Name Of Attorney:</td>
              <td ><input type="hidden" name="responseid" value="${responseattorneydetail.responseid }"><c:out value="${responseattorneydetail.name}"/></td>
              </tr>
              <tr>
              <td height="20" width="120"><span class="err">*</span>Address:</td>
              <td ><c:out value="${responseattorneydetail.address}"/></td>
              </tr>
              <tr>
              <td height="20" width="120"></td>
              <td><c:out value="${responseattorneydetail.address1}"/></td></tr>
            
              <tr>  <td height="30" width="120"></td><td><c:out value="${responseattorneydetail.address2}"/></td></tr>
             <tr>
              <td height="30" width="120"><span class="err">*</span>Regarding:</td>
              <td ><c:out value="${responseattorneydetail.regarding}"/></td>
              </tr>
                <tr>
              <td height="30" width="120"><span class="err">*</span>Patients's Name:</td>
              <td ><c:out value="${responseattorneydetail.patientname}"/></td>
              </tr>
                <tr>
              <td height="30" width="120"><span class="err">*</span>Date Of Accident:</td>
              <td ><c:out value="${responseattorneydetail.dateofaccident}"/></td>
              </tr>
              </table>
              
              
              <br>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
        	  <tr><br><p id="mypar">Dear Sir/Madam:</p></tr>
       		  </table>
       		  <table cellpadding="0" cellspacing="0" border="0" width="100%">
       		  <tr>
        	  <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;We have previously provided you with a Treatment Fee Agreement and Instructions to Attorney signed by our patient and a detailed cover letter which explained the legal basis for it. You have communicated to us that we are required to bill our patient's health insurance.  </p>
              <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;We are not required to bill our patient's health insurance.  R.C. 1751.60 does not apply to a medical provider who is not under contract with a patient's health care insurer.  We do not have a provider agreement with our patient's health care insurer.  </p>
              <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;You have stated that Ohio Revised Code Chapter 3902 contains sections that still would require us to bill our patient's health care insurer, despite the fact that we have no provider agreement with that insurer.  R.C. §3902.13 does provide for an order of benefits, including a patient's health insurance coverage, for those types of insurance that are covered by Chapter 3902.  We have used the Treatment Fee Agreement and Instructions to Attorney to secure eventual payment from the proceeds of the alleged tortfeasor's motor vehicle liability insurer and an assignment of our patient's right to payment from the patient's motor vehicle liability insurer.  Motor vehicle insurance is regulated under Chapter 3937, and it is not regulated by or included in Chapter 3902.  Chapter 3902 regulates "life insurance and annuities, credit life insurance and credit disability insurance, and sickness and accident insurance, and subscriber policies or certificates of health insuring corporations".  Sickness and accident insurance is regulated under Chapter 3923, and Chapter 3923 specifically excludes motor vehicle liability insurance.</p>
              <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;After receiving advice from our own legal counsel, we are satisfied that there is no statutory, regulatory, or case law authority for the position that we are required to bill our patient's health insurance, where we have no provider agreement with that heath insurer. </p>
               <p id="mypar">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please provide a reference to any specific legal authority which you believe demonstrates otherwise, and we will be happy to review it.</p>>
              </tr>
              </table>
              <br>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
       		  <tr >
       		  <td valign="right" align="right" class="input_txt"><span class="err">*</span>Sincerly,</td>
              </tr>
              </table>
              <br>
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr >
       		  <td valign="right" align="right" class="input_txt"><span class="err">*</span>Name of Clinic:
              <c:out value="${responseattorneydetail.nameofclinic}"/></td>
              </tr>
              </table>
              <br>
               <table cellpadding="0" cellspacing="0" border="0" width="100%">
              <tr >
       		  <td valign="right" align="right" class="input_txt"><span class="err">*</span>Treating Physician:
             <c:out value="${responseattorneydetail.treatingphysician}"/></td>
              </tr>
              </table>
              
              <br>
              <table>
              <tr>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><input type="submit" class="submit_btn" value="Save"></td>
              <td>&nbsp;&nbsp;</td>
              <td><input type="reset" class="submit_btn" value="Cancel"></td>
              <td>&nbsp;&nbsp;</td>
        	  </tr>
        	  </table>
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