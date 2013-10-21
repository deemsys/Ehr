<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
<link rel="stylesheet" href="/resources/css/style.css" />

<STYLE type="text/css">
   P#mypar {font-style:calibri;
   line-height:18px;}
   
   </STYLE>
</head>
<body>
<div id="right_content">
<form action="medicalrecords" method="POST">

<table cellpadding="0" cellspacing="0" border="0" width="50%" class="margin_table">
 
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
	              <h2>Release Of Medical Records Authorization</h2>
	            </div>
            <div class="contentbox">
            <table cellpadding="0" cellspacing="0" border="0" width="100%">
            <c:set value="${MedicalRecords.medicalrecords[0]}" var="medicalrecords"> </c:set>
  				<tr>
  				    <p id="mypar">&nbsp;I, ${medicalrecords.name}
				                &nbsp;&nbsp;give my permission to release Medical Information, Records, X-ray Reports, or the following &nbsp;&nbsp;${medicalrecords.medicalinformation} &nbsp;&nbsp;to Lorain Injury Center, <br>Dr. Darrin Pordash D.C.<br>
				                5190 Deroit Rd.<br>
                                Sheffield Village, Ohio 44035<br>
                                Fax 440-934-3107  </p>
                         <tr class="row1">
				                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>Patient Signature:  </td>
				                  <td valign="top" align="left" class="input_txt">
				                  	${medicalrecords.patientsignature}
				                  	</td>
				                  	</tr>
				                  	<tr>
				  <td valign="top" align="center">&nbsp;</td>
				                <td valign="top" align="center"><br><input type="button" class="submit_btn" value="Edit"></td>
				   <td valign="top" align="center"><br><input type="button" class="submit_btn" value="Delete"></td>
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