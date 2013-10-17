<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp"></jsp:include>
<div id="right_content">



<form method="post" action="">
  <div id="right_content">
    <table cellpadding="0" cellspacing="0" border="0" width="98%" class="margin_table">
      <tr>
        <td valign="top" align="left" style="padding:5px 0 10px 0;"></td>
      </tr>
      <tr>
        <td valign="top" align="left"><div>
            <div class="headings altheading">
              <h2>Patient Details</h2>
            </div>
            <div class="contentbox">
              <table cellpadding="0" cellspacing="0" border="0" width="100%">
            
            
            
  
             <c:forEach items="${PatientDetailsForm.patientDetails}" var="patientDetails" varStatus="status">
                   <tr class="row2">
                  <td width="15%" valign="middle" align="left" >Name </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Name}</td>
                </tr>
              <tr class="row1">
                  <td width="15%" valign="middle" align="left" > Date </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Date}</td>
                </tr>
		
		<tr class="row2">
                  <td width="15%" valign="middle" align="left" > StreetAddress </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.StreetAddress}</td>
                </tr>
		<tr class="row1">
                  <td width="15%" valign="middle" align="left" > City </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.City}</td>
                </tr>
                
                <tr class="row2">
                  <td width="15%" valign="middle" align="left" > State</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.State}</td>
                </tr>
                
                <tr class="row1">
                  <td width="15%" valign="middle" align="left" > ZipCode </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.ZipCode}</td>
                </tr>
                <tr class="row1">
                  <td width="15%" valign="middle" align="left" > Homephone </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Homephone}</td>
                </tr>
                <tr class="row1">
                  <td width="15%" valign="middle" align="left" > Pager</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Pager}</td>
                </tr>
                <tr class="row1">
                  <td width="15%" valign="middle" align="left" > MobileNumber </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.MobileNumber}</td>
                </tr><tr class="row1">
                  <td width="15%" valign="middle" align="left" > DateOfBirth</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.DateOfBirth}</td>
                </tr><tr class="row1">
                  <td width="15%" valign="middle" align="left" > SocialSecurityNumber </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.SocialSecurityNumber}</td>
                </tr>
                <tr class="row2">
                  <td width="15%" valign="middle" align="left" > Gender </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                    
                    <c:choose>
                    <c:when test="${patientDetails.Gender==0}">
                     <td width="84%" valign="top" align="left" >Male</td>
                    </c:when>                
                    <c:when test="${patientDetails.Gender==1}">
                     <td width="84%" valign="top" align="left" >Female</td>
                    </c:when>
                    <c:otherwise>
                     <td width="84%" valign="top" align="left" >Transgender</td>
                    </c:otherwise>
                  </c:choose>
                  </tr>
                  
                  <tr class="row1">
                  <td width="15%" valign="middle" align="left" >MaritalStatus </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                    
                    <c:choose>
                    <c:when test="${patientDetails.MaritalStatus==0}">
                     <td width="84%" valign="top" align="left" >Single</td>
                    </c:when>                
                    <c:when test="${patientDetails.MaritalStatus==1}">
                     <td width="84%" valign="top" align="left" >Married</td>
                    </c:when>
                    <c:otherwise>
                     <td width="84%" valign="top" align="left" >Divorced</td>
                    </c:otherwise>
                  </c:choose>
                  <tr class="row2">
                  <td width="15%" valign="middle" align="left" > Student </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                    
                    <c:choose>
                    <c:when test="${patientDetails.Student==0}">
                     <td width="84%" valign="top" align="left" >FullTime</td>
                    </c:when>                
                    <c:when test="${patientDetails.Student==1}">
                     <td width="84%" valign="top" align="left" >PartTime</td>
                    </c:when>
                    <c:otherwise>
                     <td width="84%" valign="top" align="left" ></td>
                    </c:otherwise>
                  </c:choose>
                  
                  
                </tr><tr class="row1">
                  <td width="15%" valign="middle" align="left" >EmployerName</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.EmployerName}</td>
                </tr>
              <tr class="row2">
                  <td width="15%" valign="middle" align="left" >Occupation</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Occupation}</td>
                </tr><tr class="row1">
                  <td width="15%" valign="middle" align="left" > EmployerAddress</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.EmployerAddress}</td>
                </tr>
              <tr class="row2">
                  <td width="15%" valign="middle" align="left" >WorkPhone</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Workphone}</td>
                </tr><tr class="row1">
                  <td width="15%" valign="middle" align="left" >EmployerCity</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.EmployerCity}</td>
                </tr>
                <tr class="row2">
                  <td width="15%" valign="middle" align="left" >State</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Estate}</td>
                </tr>
                <tr class="row1">
                  <td width="15%" valign="middle" align="left" >Zip</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Ezip}</td>
                </tr>
                <tr class="row2">
                  <td width="15%" valign="middle" align="left" >Spouse's or significant others name</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.SpousesName}</td>
                </tr>
                <tr class="row1">
                  <td width="15%" valign="middle" align="left" >Spouses Employer</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.SpousesEmp}</td>
                </tr>
                <tr class="row2">
                  <td width="15%" valign="middle" align="left" >EmployerCity</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.EmployerCity}</td>
                </tr>
              <tr class="row1">
                  <td width="15%" valign="middle" align="left" >Spouse's Workphone</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Spousesph}</td>
                </tr><tr class="row2">
                  <td width="15%" valign="middle" align="left" > Name and Phone # of Nearest Friend/ Relative Not Living With You:</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Name_phone}</td>
                </tr>
              <tr class="row1">
                  <td width="15%" valign="middle" align="left" > Have you ever had chiropractic care? </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Chiropratic_care}</td>
                </tr>   
              <tr class="row2">
                  <td width="15%" valign="middle" align="left" >Please Describe Your Symptoms Briefly:<br> Symptoms</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Symptoms}</td>
                </tr>
                <tr class="row1">
                  <td width="15%" valign="middle" align="left" >Pain Scale </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Painscale}</td>
                </tr>
                <tr class="row2">
                  <td width="15%" valign="middle" align="left" > Symptom1:</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Symptom1}</td>
                </tr>
              <tr class="row1">
                  <td width="15%" valign="middle" align="left" >Pain Scale1 </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Painscale1}</td>
                </tr>
                <tr class="row2">
                  <td width="15%" valign="middle" align="left" >Symptom2 </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Symptom2}</td>
                </tr>
                <tr class="row1">
                  <td width="15%" valign="middle" align="left" >Pain Scale2 </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Painscale2}</td>
                </tr>
                      
              <tr class="row2">
                  <td width="15%" valign="middle" align="left" >Are These Symptoms Due to an Accident?</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Symptom_Accident}</td>
                </tr>
                <tr class="row1">
                  <td width="15%" valign="middle" align="left" >Type Of Accident </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Type_Of_Accident}</td>
                </tr>
                <tr class="row2">
                  <td width="15%" valign="middle" align="left" >Date Of Accident </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Date_Of_Accident}</td>
                </tr>
                <tr class="row1">
                  <td width="15%" valign="middle" align="left" >Accident Reported</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Accident_Reported}</td>
                </tr>
                <tr class="row2">
                  <td width="15%" valign="middle" align="left" >Medical Treatment for this Condition:<br>When </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.When}</td>
                </tr>
                <tr class="row1">
                  <td width="15%" valign="middle" align="left" >Where</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Where}</td>
                </tr>
                <tr class="row2">
                  <td width="15%" valign="middle" align="left" >Have You Retained an Attorney for this Accident </td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                    
                    <c:choose>
                    <c:when test="${patientDetails.Attorney_accident==0}">
                     <td width="84%" valign="top" align="left" >Yes</td>
                    </c:when>                
                    <c:when test="${patientDetails.Attorney_accident==1}">
                     <td width="84%" valign="top" align="left" >No</td>
                    </c:when>
                    <c:otherwise>
                     <td width="84%" valign="top" align="left" ></td>
                    </c:otherwise>
                  </c:choose>
                  </tr>
                <tr class="row1">
                  <td width="15%" valign="middle" align="left" >Name Of Attorney</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Date_Of_Accident}</td>
                </tr>
                
                <tr class="row2">
                  <td width="15%" valign="middle" align="left" >phone</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Phone_Number}</td>
                </tr>
                <tr class="row1">
                  <td width="15%" valign="middle" align="left" >Name of Person at Fault for the Accident:</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Fault_accident}</td>
                </tr>
                <tr class="row2">
                  <td width="15%" valign="middle" align="left" >Insurance Company of the at Fault Person</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Insurance}</td>
                </tr>
              <tr class="row1">
                  <td width="15%" valign="middle" align="left" >Phone</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Insurance_phone}</td>
                </tr>
              <tr class="row2">
                  <td width="15%" valign="middle" align="left" >Name And phone of your auto insurance</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Name_ph}</td>
                </tr>
              <tr class="row1">
                  <td width="15%" valign="middle" align="left" >Policy#</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Policy}</td>
                </tr>
              <tr class="row2">
                  <td width="15%" valign="middle" align="left" >Name of Your Health Insurance</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Name_health}</td>
                </tr>
              <tr class="row1">
                  <td width="15%" valign="middle" align="left" >Phone</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Health_phone}</td>
                </tr>
                <tr class="row2">
                  <td width="15%" valign="middle" align="left" >Have You Ever Been Involved in a Previous Auto or Work Accident</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Prev_accident}</td>
                </tr>
                <tr class="row1">
                  <td width="15%" valign="middle" align="left" >When</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Prev_When}</td>
                </tr>
              <tr class="row1">
                  <td width="15%" valign="middle" align="left" >Anemia</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Anemia}</td>
                </tr>
              <tr class="row1">
                  <td width="15%" valign="middle" align="left" >Surgeries or Major Illnesses You Have Had</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Illness}</td>
                </tr>
              <tr class="row1">
                  <td width="15%" valign="middle" align="left" >Dates</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Dates}</td>
                </tr>
              <tr class="row1">
                  <td width="15%" valign="middle" align="left" >Medications You are Currently Taking and Why</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Medications}</td>
                </tr>
                 <tr class="row1">
                  <td width="15%" valign="middle" align="left" >Do You</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Drink}</td>
                </tr>
                 <tr class="row1">
                  <td width="15%" valign="middle" align="left" >Do You Work Around Hazardous Substances</td>
                  <td width="1%" valign="middle" align="left" >  :</td>
                   <c:choose>
                    <c:when test="${patientDetails.Hazordous==0}">
                     <td width="84%" valign="top" align="left" >Yes</td>
                    </c:when>                
                    <c:when test="${patientDetails.Hazordous==1}">
                     <td width="84%" valign="top" align="left" >No</td>
                    </c:when>
                    <c:otherwise>
                     <td width="84%" valign="top" align="left" ></td>
                    </c:otherwise>
                  </c:choose>
                </tr>
                 <tr class="row1">
                  <td width="15%" valign="middle" align="left" >Females Only:<br>Are you pregnant</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                   <c:choose>
                    <c:when test="${patientDetails.Female==0}">
                     <td width="84%" valign="top" align="left" >Yes</td>
                    </c:when>                
                    <c:when test="${patientDetails.Female==1}">
                     <td width="84%" valign="top" align="left" >No</td>
                    </c:when>
                    <c:otherwise>
                     <td width="84%" valign="top" align="left" ></td>
                    </c:otherwise>
                  </c:choose>
                </tr>
              
              <tr class="row1">
                  <td width="15%" valign="middle" align="left" >Dr</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Dr}</td>
                </tr>
                <tr class="row1">
                  <td width="15%" valign="middle" align="left" >Patient</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Patient}</td>
                </tr>
                <tr class="row1">
                  <td width="15%" valign="middle" align="left" >Signature</td>
                    <td width="1%" valign="middle" align="left" >  :</td>
                  <td width="84%" valign="top" align="left" >${patientDetails.Sign}</td>
                </tr>
            </c:forEach>
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
              </table>
          
            </div>
          </div>
          </td>
      </tr>
      </table>
      </div>
</form>





<jsp:include page="footer.jsp"></jsp:include>