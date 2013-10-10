<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
		
<%@ page contentType="text/html" %>
<%@ taglib prefix="tab" uri="http://ditchnet.org/jsp-tabs-taglib" %>
		
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<head>				
	<tab:tabConfig />
</head>

<jsp:include page="header.jsp"></jsp:include>

<tab:tabContainer id="autoaccident-container" skin="Invisible">
<tab:tabPane id="auto1" tabTitle="autoaccident1">
		<table cellpadding="0" cellspacing="0" border="0" width="100%">
                 <tr class="row1">
                  <td valign="middle" align="left" class="input_txt"><span class="err">*</span>What is the claim number of your accident</td>
				  <td valign="top" align="left" class="input_txt">
				  <input type="text" class="input_txtbx1" id="inp_id" name="claimnumber" />
				  </td>
				  </tr>
				  </table>
	</tab:tabPane>

	<tab:tabPane id="auto2" tabTitle="autoaccident2">
		<c:out value="Bar is cooler!" />
	</tab:tabPane>

</tab:tabContainer>

<div>
	<tab:prevTabButton tabContainerId="autoaccident-container">PREV</tab:prevTabButton>
	<tab:nextTabButton tabContainerId="autoaccident-container">NEXT</tab:nextTabButton>
</div>