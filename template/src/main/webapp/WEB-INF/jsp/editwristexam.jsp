<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp"></jsp:include>
<html>
<head>
 <script src="resources/js/jquery.min.js"></script> 
 <script src="resources/js/jquery-ui.js"></script>
 <script src="resources/js/jquey-1.9.1.js"></script>
<script>
$(function() {
    //$( "#draggable" ).draggable({ revert: "not valid" });
    
    $(window).load(function(){    
    $('input:checkbox[name=other]').each(function() 
{    
    if($(this).is(':checked'))
    var other=$(this).val();     
       if(other=="other")
    {
    document.getElementById("otherdefict").style.display="block";
    }
    else
    {document.getElementById("otherdefict").style.display="none";
    }  
});
   
    $('input:checkbox[name=others]').each(function() 
{    
    if($(this).is(':checked'))
    var others=$(this).val();     
       if(others=="other")
    {
    document.getElementById("othervalue").style.display="block";
    }
    else
    {document.getElementById("othervalue").style.display="none";
    }  
});   
   

  

    
   
    });
    });

</script>
<script type="text/javascript">
	function softtissuevalidate() {
		if (document.getElementById('softtissuess').checked) {
			document.getElementById('softtissue').style.display = "none";
			document.getElementById('softtissue1').style.display = "none";
			document.getElementById('softtissue2').style.display = "none";
		} else if (document.getElementById('softtissues').checked) {
			document.getElementById('softtissue').style.display = "block";
			document.getElementById('softtissue1').style.display = "block";
			document.getElementById('softtissue2').style.display = "block";
		}
	}

	function neurologicalvalidate() {
		if (document.getElementById('neurologicalunremarkable').checked) {
			document.getElementById('neurological').style.display = "none";

		} else if (document.getElementById('neurologicalexcept').checked) {
			document.getElementById('neurological').style.display = "block";
		}
	}
	function Checksymptom(val) {
		var element = document.getElementById('legother');

		if (val == 'other')
			element.style.display = 'block';
		else
			element.style.display = 'none';
	}
	function Checksymptom1(val) {
		var element = document.getElementById('legother1');

		if (val == 'other')
			element.style.display = 'block';
		else
			element.style.display = 'none';
	}
	function visible(val) {
		if (document.getElementById('other').checked) {
			var element = document.getElementById('otherdefict');
			element.style.display = 'block';
		} else {
			var element = document.getElementById('otherdefict');
			element.style.display = 'none';
		}

	}

	function shortlegvalidate(val) {
		if (document.getElementById('leftvalue').checked) {
			var element = document.getElementById('shortlegleft');
			element.style.display = 'block';
		} else {
			var element = document.getElementById('shortlegleft');
			element.style.display = 'none';
		}
	}
	function shortlegvalidate1(val) {
		if (document.getElementById('shortlegcheck').checked) {
			var element = document.getElementById('shortlegright');
			element.style.display = 'block';
		} else {
			var element = document.getElementById('shortlegright');
			element.style.display = 'none';
		}
	}
	function othervisible(val) {
		if (document.getElementById('others').checked) {
			var element = document.getElementById('othervalue');
			element.style.display = 'block';
		} else {
			var element = document.getElementById('othervalue');
			element.style.display = 'none';
		}

	}
</script>

<link rel="stylesheet" href="resources/css/jquery-ui.css"
	type="text/css" />
<link rel="stylesheet" href="/resources/css/style.css" />
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/jquery-ui.js"></script>
<script src="resources/js/jquey-1.9.1.js"></script>
<script type="text/javascript">
	$(function() {
		$("#tabs").tabs();

		// fix the classes
		$(".tabs-bottom .ui-tabs-nav, .tabs-bottom .ui-tabs-nav > *")
				.removeClass("ui-corner-all ui-corner-top").addClass(
						"ui-corner-bottom");

		// move the nav to the bottom
		$(".tabs-bottom .ui-tabs-nav").appendTo(".tabs-bottom");
	});
</script>
<script type="text/javascript">
	var currentTab = 0;
	$(function() {
		$("#tabs").tabs({
			select : function(e, i) {
				currentTab = i.index;
			}
		});
	});
	$("#btnNext").live("click", function() {
		var tabs = $('#tabs').tabs();
		var c = $('#tabs').tabs("length");
		currentTab = currentTab == (c - 1) ? currentTab : (currentTab + 1);
		tabs.tabs('select', currentTab);
		$("#btnPrevious").show();
		if (currentTab == (c - 1)) {
			$("#btnNext").hide();
		} else {
			$("#btnNext").show();
		}
	});
	$("#btnPrevious").live("click", function() {
		var tabs = $('#tabs').tabs();
		var c = $('#tabs').tabs("length");
		currentTab = currentTab == 0 ? currentTab : (currentTab - 1);
		tabs.tabs('select', currentTab);
		if (currentTab == 0) {
			$("#btnNext").show();
			$("#btnPrevious").hide();
		}
		if (currentTab < (c - 1)) {
			$("#btnNext").show();
		}
	});
</script>

<STYLE type="text/css">
P#mypar {
	font-style: calibri;
	line-height: 18px;
}
</STYLE>
<script>
	$(function() {
		$("#datepicker").datepicker();
	});
</script>
<script>
          function isNumberKey(evt)
          {
             var charCode = (evt.which) ? evt.which : event.keyCode
             if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;

             return true;
          }  
          
          </script>

 <script>
          function isNumberKey(evt)
          {
             var charCode = (evt.which) ? evt.which : event.keyCode
             if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;

             return true;
          }  
          
          </script> 
  

</head>
<body>
<br><br>
	<div id="tabs">
		<ul>
			<li><a href="#tabs-1">1</a></li>
			<li><a href="#tabs-2">2</a></li>
		</ul>
		<div id="tabs-1">

			<form action="updatewristexam" method="POST">
				<div id="right_content">
					<table cellpadding="0" cellspacing="0" border="0" width="98%"
						class="margin_table">
						<tr>
							<td valign="top" align="left">
								<div>
									<div class="headings altheading">
										<center>
											<h2>WRIST AND HAND REEXAM</h2>
										</center>
										<br />

									</div>


									<div class="contentbox">
										<c:set value="${wristexamform.wristexamdetails[0]}"
											var="wristexamdetails" />
										<table cellpadding="0" cellspacing="0" border="0">
											<tr>
												<td width="130"><span class="err">*</span>Patient Name:</td>
												<td width="200"><input type="hidden" name="wristexamno"
													value="${wristexamdetails.wristexamno}" /><input
													type="text" value="${wristexamdetails.pname}" name="pname">
													<br><span class="err"><form:errors path="wristexamdetails.pname"></form:errors>
													</td>
												<td width="650"></td>
												<td width="50"><span class="err" >*</span>Date:&nbsp;</td>
												<td width="200"><input type="text" name="date"
													value="${wristexamdetails.date}" id="datepicker"><br><span class="err"><form:errors path="wristexamdetails.date"></form:errors></td>
											</tr>
										</table>
										</br>
										<div>
											<b style="font-size: 14px">OBSERVATION / APPEARANCE /
												MOOD / ORIENTATION </b>
										</div>
										<table>
											<tr>



											</tr>
											<tr height="10"></tr>
											<tr>
												<td>Muscle Symmetry:</td>
												<td width="28"></td>
												<td ><input type="text"
													value="${wristexamdetails.muscle}" name="muscle"></td>
												<td width="48"></td>
												<td width="135">Swelling / Discoloration:</td>
												<td width="40"><input type="text"
													value="${wristexamdetails.swelling}" name="swelling"></td>

												<td width="49"></td>
												<td width="139">Dominant Hand</td>
												<td><input type="radio" value="left"
													name="dominanthand"
													<c:if test="${wristexamdetails.dominanthand=='left'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;<input
													type="radio" value="right" name="dominanthand"
													<c:if test="${wristexamdetails.dominanthand=='right'}"> <c:out value="checked"></c:out></c:if>>&nbsp;&nbsp;&nbsp;Right</td>
												<td width="75"></td>
												<td width="130">A & O:</td>
												<td><select name="ao"><option
															<c:if test="${wristexamdetails.ao=='excellent'}"></c:if>
															<c:out value="selected"></c:out>>excellent</option>
														<option
															<c:if test="${wristexamdetails.ao=='good'}"></c:if>
															<c:out value="selected"></c:out>>good</option>
														<option
															<c:if test="${wristexamdetails.ao=='fair'}"></c:if>
															<c:out value="selected"></c:out>>fair</option>
														<option
															<c:if test="${wristexamdetails.ao=='severe'}"></c:if>
															<c:out value="selected"></c:out>>severe</option></select></td>
											</tr>
										</table>
										<br>
										<table style="border: 10">
											<tr>
												<td><b style="font-size: 14px">PALPATION / SOFT
														TISSUE DYSFUNCTION </b></td>
												<td width="40"></td>
												<td align="left"><input type="checkbox"
													value="Unremarkable" name="dysfunction" id="functional"
													<c:if test="${wristexamdetails.dysfunction=='Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if>>All
													Soft Tissue Unremarkable</td>
												<td width="180"></td>
											</tr>
										</table>
										
										<table>
											<tr>
												<td width="129">Thenar Eminence:</td>
												<td><input type="radio" value="left" <c:if test="${wristexamdetails.thenareminence=='left'}"> <c:out value="checked"></c:out></c:if>="" name="thenareminence">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td>
												<td width="140"><input type="radio" value="right" <c:if test="${wristexamdetails.thenareminence=='left'}"> <c:out value="checked"></c:out></c:if>="" name="thenareminence">&nbsp;&nbsp;&nbsp;Right</td>

												<td width="130">Flexor Carpi Radialis:</td>
												<td><input type="radio" value="left" <c:if test="${wristexamdetails.flexorcarpiradialis=='left'}"> <c:out value="checked"></c:out></c:if>="" name="flexorcarpiradialis">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td>&nbsp;&nbsp;&nbsp;
												<td width="110"><input type="radio" value="right" <c:if test="${wristexamdetails.flexorcarpiradialis=='right'}"> <c:out value="checked"></c:out></c:if>="" name="flexorcarpiradialis">&nbsp;&nbsp;&nbsp;Right</td>
												<td width="35"></td>
												<td width="120">Common Flexors:</td>
												<td><input type="radio" value="left" <c:if test="${wristexamdetails.commonflexors=='left'}"> <c:out value="checked"></c:out></c:if>="" name="commonflexors">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;
													<input type="radio" value="right" <c:if test="${wristexamdetails.commonflexors=='right'}"> <c:out value="checked"></c:out></c:if>="" name="commonflexors">&nbsp;&nbsp;&nbsp;Right</td>
												<td width="73"></td>
												<td width="120">Hypothenar Eminence:</td>
												<td><input type="radio" value="left" <c:if test="${wristexamdetails.hypothenareminence=='left'}"> <c:out value="checked"></c:out></c:if>="" name="hypothenareminence">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;
													<input type="radio" value="right" <c:if test="${wristexamdetails.hypothenareminence=='right'}"> <c:out value="checked"></c:out></c:if>="" name="hypothenareminence">&nbsp;&nbsp;&nbsp;Right</td>
											</tr>
											<tr height="10"></tr>
											<tr>
												<td width="129">Extensor Carpi Radialis:</td>
												<td><input type="radio" value="left" <c:if test="${wristexamdetails.extensorcarpiradialis=='left'}"> <c:out value="checked"></c:out></c:if>="" name="extensorcarpiradialis">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td>
												<td width="110"><input type="radio" value="right" <c:if test="${wristexamdetails.extensorcarpiradialis=='right'}"> <c:out value="checked"></c:out></c:if>="" name="extensorcarpiradialis">&nbsp;&nbsp;&nbsp;Right</td>
												<td width="130">Common Extensor:</td>
												<td><input type="radio" value="left" <c:if test="${wristexamdetails.commonextensor=='left'}"> <c:out value="checked"></c:out></c:if>="" name="commonextensor">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td>
												<td width="110"><input type="radio" value="right" <c:if test="${wristexamdetails.commonextensor=='right'}"> <c:out value="checked"></c:out></c:if>="" name="commonextensor">&nbsp;&nbsp;&nbsp;Right</td>
												<td></td>
												<td>Abductor Pollius Longus:</td>
												<td><input type="radio" value="left" <c:if test="${wristexamdetails.abductorpolliuslongus=='left'}"> <c:out value="checked"></c:out></c:if>="" name="abductorpolliuslongus">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;
													<input type="radio" value="right" <c:if test="${wristexamdetails.abductorpolliuslongus=='right'}"> <c:out value="checked"></c:out></c:if>="" name="abductorpolliuslongus">&nbsp;&nbsp;&nbsp;Right</td>
												<td></td>
												<td>Abductor Pollicis Brevis:</td>
												<td><input type="radio" value="left" <c:if test="${wristexamdetails.abductorpollicisbrevis=='left'}"> <c:out value="checked"></c:out></c:if>="" name="abductorpollicisbrevis">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;
													<input type="radio" value="right" <c:if test="${wristexamdetails.abductorpollicisbrevis=='right'}"> <c:out value="checked"></c:out></c:if>="" name="abductorpollicisbrevis">&nbsp;&nbsp;&nbsp;Right</td>
											</tr>

										</table></br>



										<table>
											<tr>
												<td width="129">Extensor Pollicis Brevis:</td>
												<td><input type="radio" value="left"
													<c:if test="${wristexamdetails.extensorpollicisbrevis=='left'}"> <c:out value="checked"></c:out></c:if>
													name="extensorpollicisbrevis">&nbsp;&nbsp;&nbsp;Left&nbsp;&nbsp;&nbsp;</td>
												<td width="140"><input type="radio" value="right"
													<c:if test="${wristexamdetails.extensorpollicisbrevis=='right'}"> <c:out value="checked"></c:out></c:if>
													name="extensorpollicisbrevis">&nbsp;&nbsp;&nbsp;Right</td>
												<td width="130">Other / Note:</td>
												<td><textarea rows="5" cols="50" name="note">${wristexamdetails.note}</textarea></td>

											</tr>
										</table>
										</br>
										<table style="border: 10">
											<tr>
												<td><b style="font-size: 14px">FUNCTIONAL RANGE OF
														MOTION </b></td>
												<td width="98"></td>
												<td><input type="checkbox" value="Unremarkable"
													name="functional" id="functional"
													<c:if test="${wristexamdetails.functional=='Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if>>Unremarkable

												</td>
												<td width="230"></td>
												<td><b style="font-size: 14px">ORTHOTPEDIC TESTING
												</b></td>
												<td width="160"></td>
												<td><input type="checkbox" name="orthotpedic"
													<c:if test="${wristexamdetails.orthotpedic=='Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if>
													value="Unremarkable">Unremarkable</td>
											</tr>
										</table>
										</br>
										<table>
											<tr>
												<td width="140" valign="top">(* Pain Elicited)</td>
												<td width="180" valign="top">Normal</td>
												<td align="center">Actual</br>
												</br>
													Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right
												</td>
												<td></td>
												<td width="70"></td>
												<td ></td>
												<td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>


											</tr>
											<tr height="10"></tr>
											<tr>
												<td>Wrist Flexion:</td>
												<td>80</td>
												<td><input type="text" size="5"
													value="${wristexamdetails.flexionleft}" name="flexionleft" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;&nbsp;&nbsp;<input
													size="5" type="text"
													value="${wristexamdetails.flexionright}"
													name="flexionright" onkeypress="return isNumberKey(event);"></td>
												<td width="210"></td>
												<td>Allen's (Vasculature):</td>
												<td width="160"></td>
												<td><input size="5" type="text"
													value="${wristexamdetails.allenleft}" name="allenleft">&nbsp;&nbsp;&nbsp;&nbsp;<input
													type="text" size="5" value="${wristexamdetails.allenright}"
													name="allenright"></td>
											</tr>
											<tr>
												<td>Wrist Extension:</td>
												<td>80</td>
												<td><input size="5" type="text"
													value="${wristexamdetails.extensionleft}"
													name="extensionleft" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;&nbsp;&nbsp;<input
													size="5" type="text"
													value="${wristexamdetails.extensionright}"
													name="extensionright" onkeypress="return isNumberKey(event);"></td>
												<td width="90"></td>
												<td>Phalen's (Median N):</td>
												<td width=""></td>
												<td><input type="text" size="5"
													value="${wristexamdetails.phalenleft}" name="phalenleft">&nbsp;&nbsp;&nbsp;&nbsp;<input
													type="text" size="5"
													value="${wristexamdetails.phalenright}" name="phalenright"></td>
											</tr>
											<tr>
												<td>Wrist Ulnar Deviation:</td>
												<td>90</td>
												<td><input size="5" type="text"
													value="${wristexamdetails.ulnarleft}" name="ulnarleft" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;&nbsp;&nbsp;<input
													size="5" type="text" value="${wristexamdetails.ulnarright}"
													name="ulnarright" onkeypress="return isNumberKey(event);"></td>
												<td width="90"></td>
												<td>Reverse Phalens (Median N):</td>
												<td width=""></td>
												<td><input type="text" size="5"
													value="${wristexamdetails.reverseleft}" name="reverseleft">&nbsp;&nbsp;&nbsp;&nbsp;<input
													size="5" type="text"
													value="${wristexamdetails.reverseright}"
													name="reverseright"></td>
											</tr>
											<tr>
												<td>Wrist Radial Deviation:</td>
												<td>90</td>
												<td><input size="5" type="text"
													value="${wristexamdetails.radialleft}" name="radialleft" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;&nbsp;&nbsp;<input
													size="5" type="text"
													value="${wristexamdetails.radialright}" name="radialright" onkeypress="return isNumberKey(event);"></td>
												<td width="90"></td>
												<td>Finkelstein's (Tenosynovitis):</td>
												<td ></td>
												<td><input type="text" size="5"
													value="${wristexamdetails.tenosynovitisleft}"
													name="tenosynovitisleft">&nbsp;&nbsp;&nbsp;&nbsp;<input
													size="5" type="text"
													value="${wristexamdetails.tenosynovitisright}"
													name="tenosynovitisright"></td>
											</tr>
											</tr>
											<tr>
												<td>Pronation / Supination :</td>
												<td>180</td>
												<td><input type="text" size="5"
													value="${wristexamdetails.pronationleft}"
													name="pronationleft" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;&nbsp;&nbsp;<input
													size="5" type="text"
													value="${wristexamdetails.pronationright}"
													name="pronationright" onkeypress="return isNumberKey(event);">
												<td width="90"></td>
												<td>Tinnel's:</td>
												<td ></td>
												<td><input type="text" size="5"
													value="${wristexamdetails.tinnelsleft}" name="tinnelsleft">&nbsp;&nbsp;&nbsp;&nbsp;<input
													type="text" size="5"
													value="${wristexamdetails.tinnelsright}"
													name="tinnelsright"></td>
												</td>
											</tr>
											<tr>
												<td></td>
												<td></td>
												<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
												<td width="90"></td>
												<td>ULTT:</td>
												<td ></td>
												<td><input type="text" size="5"
													value="${wristexamdetails.ulttleft}" name="ulttleft">&nbsp;&nbsp;&nbsp;&nbsp;<input
													size="5" type="text" value="${wristexamdetails.ulttright}"
													name="ulttright"></td>
											</tr>


										</table>
							</td>
						</tr>
					</table>
				</div>
		</div>
		<div id="tabs-2">

			<div id="right_content">

				<table cellpadding="0" cellspacing="0" border="0" width="100%"
					class="margin_table">
					<tr>
						<td valign="top" align="left">
							<div>
								<div class="headings altheading">
									<center>
										<h2>WRIST AND HAND REEXAM</h2>
									</center>
									<br />

								</div>
								<div class="contentbox">
									<table cellpadding="0" cellspacing="0" border="0">


										<tr>
											<td width="130"><b style="font-size: 14px">NEUROLOGICAL</b></td>
											<td width="246"><input type="checkbox"
												<c:if test="${wristexamdetails.neurological=='Neurological Testing Unremarkable'}"> <c:out value="checked=checked"></c:out></c:if>
												id=neurologicalunremarkable name="neurological"
												value="Neurological Testing Unremarkable">Neurological
												Testing Unremarkable</td>

										</tr>
									</table>
									</br>
									<table id="neurological">
										<tr>
											<td width="120"><b>Level</b></td>
											<td width="250"><b> Sensory </b></td>
											<td width="100"><b>Level</b></td>
											<td width="250"><b> Motor / Strength </b></td>
											<td width="100"><b>Level</b></td>
											<td width="250"><b> Reflexes</b> (Muscle Spindles)</td>
										</tr>
										<tr height="10"></tr>
										<tr>
											<td width="30"></td>
											<td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>
											<td width="30"></td>
											<td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>
											<td width="30"></td>
											<td>Left&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Right</td>
										</tr>
										<tr height="10"></tr>

										<tr>
											<td>C5</td>
											<td><input size="5" type="text"
												value="${wristexamdetails.latdeltoidleft}"
												name="latdeltoidleft" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;&nbsp;&nbsp;<input
												size="5" type="text"
												value="${wristexamdetails.latdeltoidright}"
												name="latdeltoidright" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;(Lat deltoid)</td>
											<td>C5</td>
											<td><input type="text" name="shdleft"
												value="${wristexamdetails.shdleft}" size="5" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;&nbsp;&nbsp;<input
												size="5" type="text" value="${wristexamdetails.shdright}"
												name="shdright" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;(Shd ABD)</td>
											<td>C5</td>
											<td><input type="text" name="bicepsleft"
												value="${wristexamdetails.bicepsleft}" size="5" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;&nbsp;&nbsp;<input
												type="text" value="${wristexamdetails.bicepsright}"
												name="bicepsright" size="5" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;(Biceps)</td>
										</tr>
										<tr>
											<td>C6</td>
											<td><input type="text" name="latarmleft"
												value="${wristexamdetails.latarmleft}" size="5" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;&nbsp;&nbsp;<input
												size="5" type="text" value="${wristexamdetails.latarmright}"
												name="latarmright" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;(Lat arm/hand)</td>
											<td>C6</td>
											<td><input type="text" name="elbflexleft"
												value="${wristexamdetails.elbflexleft}" size="5" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;&nbsp;&nbsp;<input
												size="5" type="text"
												value="${wristexamdetails.elbflexright}" name="elbflexright" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;(Elb
												flex/wrist ext)</td>
											<td>C6</td>
											<td><input type="text" name="brachioradleft"
												value="${wristexamdetails.brachioradleft}" size="5" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;&nbsp;&nbsp;<input
												type="text" value="${wristexamdetails.brachioradright}"
												name="brachioradright" size="5" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;(Brachiorad)</td>
										</tr>
										<tr>
											<td>C7</td>
											<td><input type="text" size="5"
												value="${wristexamdetails.thirdleft}" name="thirdleft" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;&nbsp;&nbsp;<input
												size="5" type="text" value="${wristexamdetails.thirdright}"
												name="thirdright" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;(3rd digit)</td>
											<td>C7</td>
											<td><input type="text"
												value="${wristexamdetails.elbextleft}" name="elbextleft"
												size="5" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5"
												type="text" value="${wristexamdetails.elbextright}"
												name="elbextright" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;(Elb ext/wrist
												flex)</td>
											<td>C7</td>
											<td><input type="text"
												value="${wristexamdetails.tricepsleft}" name="tricepsleft"
												size="5" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;&nbsp;&nbsp;<input size="5"
												type="text" value="${wristexamdetails.tricepsright}"
												name="tricepsright" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;(Triceps)</td>
										</tr>
										<tr>
											<td>C8</td>
											<td><input type="text" size="5"
												value="${wristexamdetails.medforearmleft}"
												name="medforearmleft" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;&nbsp;&nbsp;<input
												type="text" size="5"
												value="${wristexamdetails.medforearmright}"
												name="medforearmright" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;(Med
												forearm/hand)</td>
											<td>C8</td>
											<td><input type="text" name="digitflexionleft"
												value="${wristexamdetails.digitflexionleft}" size="5" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;&nbsp;&nbsp;<input
												size="5" value="${wristexamdetails.digitflexionright}"
												type="text" name="digitflexionright" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;(Digit
												flexion)</td>
											<td></td>
										</tr>
										<tr>
											<td>T1</td>
											<td><input size="5" type="text"
												value="${wristexamdetails.medelbowleft}" name="medelbowleft" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;&nbsp;&nbsp;<input
												size="5" type="text"
												value="${wristexamdetails.medelbowright}"
												name="medelbowright" onkeypress="return isNumberKey(event);">&nbsp;&nbsp;(Med elbow/arm)</td>
											<td>T1</td>
											<td><input type="text" name="digitabdleft"
												value="${wristexamdetails.digitabdleft}" size="5" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;&nbsp;&nbsp;<input
												size="5" type="text"
												value="${wristexamdetails.digitabdright}"
												name="digitabdright" onkeypress="return isNumberKey(event);">/5&nbsp;&nbsp;(Digit abd/add)</td>
											<td>
											<td>&nbsp;(2+/5 is Normal)</td>
											</td>
										</tr>
										<tr>
											<td></td>
											<td>(""-"" is Normal)</td>
											<td></td>
											<td>(5/5 is Normal)</td>
											<td></td>
											<td></td>
										</tr>



									</table>
									</br>
									<table width="100%">
										<tr>
											<td width="350"><b style="font-size: 14px">FUNCTIONAL
													DEFICIT: </b></td>
											<td width="100"><input type="checkbox"
												<c:if test="${wristexamdetails.typing=='Typing / Writing'}"> <c:out value="checked=checked"></c:out></c:if>
												name="typing" value="Typing / Writing">Typing /
												Writing</td>
											<td width="110"><input type="checkbox" name="driving"
												<c:if test="${wristexamdetails.driving=='Driving'}"> <c:out value="checked=checked"></c:out></c:if>
												value="Driving"> Driving</td>
											<td><input type="checkbox" id="other" name="other"
												value="other" onclick="visible('this.value')"
												<c:if test="${wristexamdetails.other=='other'}"> <c:out value="checked=checked"></c:out></c:if>>Other</td>
											<td><input type="text" name="otherdefict"
												id="otherdefict" value="${wristexamdetails.otherdefict}"
												style="display: none"></td>
											<td width="300"></td>
										</tr>

									</table>
									<table>
										<tr>
											<td width="350"><b style="font-size: 14px">ASSESSMENT
													/ ADDITIONAL COMMENTS: </b></td>
											<td><textarea rows="5" cols="50" name="comments">${wristexamdetails.comments}</textarea>
											</td>
										</tr>
										<tr height="10"></tr>
										<tr>
											<td>Patient's Status for being a candidate for
												conservative care:</td>
											<td><select name="patientstatus">
													<option
														<c:if test="${wristexamdetails.patientstatus=='Excellent'}"> <c:out value="selected"></c:out></c:if>>Excellent</option>
													<option
														<c:if test="${wristexamdetails.patientstatus=='Good'}"> <c:out value="selected"></c:out></c:if>>
														Good</option>
													<option
														<c:if test="${wristexamdetails.patientstatus=='Fair'}"> <c:out value="selected"></c:out></c:if>>
														Fair</option>
													<option
														<c:if test="${wristexamdetails.patientstatus=='Poor'}"> <c:out value="selected"></c:out></c:if>>Poor</option>
											</select></td>
										</tr>
									</table>
									</br>
									<table width="100%">
										<tr>
											<td width="400"><b style="font-size: 14px">DIAGNOSIS:
											</b></td>
											<td width="250">1)&nbsp;&nbsp;&nbsp;<input type="text"
												value="${wristexamdetails.diagnosis1}" name="diagnosis1"></td>
											<td width="250">2)&nbsp;&nbsp;&nbsp;<input type="text"
												value="${wristexamdetails.diagnosis2}" name="diagnosis2"></td>
											<td width="250">3)&nbsp;&nbsp;&nbsp;<input type="text"
												value="${wristexamdetails.diagnosis3}" name="diagnosis3"></td>
											<td width="250">4)&nbsp;&nbsp;&nbsp;<input type="text"
												value="${wristexamdetails.diagnosis4}" name="diagnosis4"></td>
										</tr>
										<tr height="10"></tr>
										<tr>
											<td></td>
											<td width="250">5)&nbsp;&nbsp;&nbsp;<input type="text"
												name="diagnosis5" value="${wristexamdetails.diagnosis5}"></td>
											<td width="250">6)&nbsp;&nbsp;&nbsp;<input type="text"
												value="${wristexamdetails.diagnosis6}" name="diagnosis6"></td>
										</tr>
									</table>
									</br>
									<div>
										<b style="font-size: 14px">PLAN:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><input
											type="text" name="times" value="${wristexamdetails.times}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										Times/week for&nbsp;&nbsp;&nbsp;&nbsp; </b><input type="text"
											value="${wristexamdetails.weeks}" name="weeks">&nbsp;&nbsp;&nbsp;&nbsp;
										weeks to address the above functional & structural deficits.
										Treatment will consist of the following:
									</div>
									</br>
									<table>
										<tr>
											<td width="95"></td>
											<td width="160"><input type="checkbox"
												<c:if test="${wristexamdetails.spinaldecompression=='Spinal Decompression'}"> <c:out value="checked=checked"></c:out></c:if>
												name="spinaldecompression" value="Spinal Decompression">Spinal
												Decompression</td>
											<td width="100"><input type="checkbox"
												name="chiropractic"
												<c:if test="${wristexamdetails.chiropractic=='Chiropractic'}"> <c:out value="checked=checked"></c:out></c:if>
												value="Chiropractic">Chiropractic</td>
											<td width="150"><input type="checkbox"
												name="physicaltherapy"
												<c:if test="${wristexamdetails.physicaltherapy=='Physical Therapy'}"> <c:out value="checked=checked"></c:out></c:if>
												value="Physical Therapy">Physical Therapy</td>
											<td width="150"><input type="checkbox"
												<c:if test="${wristexamdetails.bracing=='Orthotics/Bracing'}"> <c:out value="checked=checked"></c:out></c:if>
												name="bracing" value="Orthotics/Bracing">Orthotics/Bracing</td>
											<td width="150"><input type="checkbox" name="modalities"
												<c:if test="${wristexamdetails.modalities=='Modalities'}"> <c:out value="checked=checked"></c:out></c:if>
												value="Modalities">Modalities</td>
											<td width="150"><input type="checkbox"
												name="supplementation"
												<c:if test="${wristexamdetails.supplementation=='Supplementation'}"> <c:out value="checked=checked"></c:out></c:if>
												value="Supplementation">Supplementation</td>
											<td><input type="checkbox" name="hep"
												<c:if test="${wristexamdetails.hep=='HEP'}"> <c:out value="checked=checked"></c:out></c:if>
												value="HEP">HEP</td>
										</tr>
										<tr height="10"></tr>
										<tr>
											<td width="95"></td>
											<td width="160"><input type="checkbox"
												name="radiographic"
												<c:if test="${wristexamdetails.radiographic=='Radiographic X-Ray'}"> <c:out value="checked=checked"></c:out></c:if>
												value="Radiographic X-Ray">Radiographic X-Ray</td>
											<td width="100"><input type="checkbox" name="mri"
												<c:if test="${wristexamdetails.mri=='MRI'}"> <c:out value="checked=checked"></c:out></c:if>
												value="MRI">MRI</td>
											<td width="150"><input type="checkbox" name="scan"
												<c:if test="${wristexamdetails.scan=='CT Scan'}"> <c:out value="checked=checked"></c:out></c:if>
												value="CT Scan">CT Scan</td>
											<td width="150"><input type="checkbox" name="conduction"
												<c:if test="${wristexamdetails.conduction=='Nerve Conduction'}"> <c:out value="checked=checked"></c:out></c:if>
												value="Nerve Conduction">Nerve Conduction</td>
											<td width="150"><input type="checkbox" name="emg"
												<c:if test="${wristexamdetails.emg=='EMG'}"> <c:out value="checked=checked"></c:out></c:if>
												value="EMG">EMG</td>
											<td width="150"><input type="checkbox"
												<c:if test="${wristexamdetails.outsiderefferal=='Outside Referral'}"> <c:out value="checked=checked"></c:out></c:if>
												name="outsiderefferal" value="Outside Referral">Outside
												Referral</td>
											<td><input type="checkbox"
												<c:if test="${wristexamdetails.dc=='D/C'}"> <c:out value="checked=checked"></c:out></c:if>
												name="dc" value="D/C">D/C</td>
										</tr>
										<tr height="10"></tr>
										<tr>
											<td width="95"></td>
											<td width="160"><input type="checkbox" id="others"
												name="others"
												<c:if test="${wristexamdetails.others=='other'}"> <c:out value="checked=checked"></c:out></c:if>
												value="other" onclick="othervisible('this.value')">Other</td>
											<td><input type="text" name="othervalue"
												value="${wristexamdetails.othervalue}" id="othervalue"
												style="display: none"></td>
										</tr>

									</table>
									</br>
									<div>
										<B style="font-size: 14px"><span class="err">*</span>PHYSICIAN SIGNATURE:</B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
											type="text" value="${wristexamdetails.signature}"
											name="signature"><span class="err"><form:errors path="wristexamdetails.signature"></form:errors>
									</div>


								<table align="right"><tr><td><input type="submit" value="Save" class="submit_btn"></td><td> <a href="viewwristexamdetails" style="color: white" class="submit_btn" onclick="myclose()">Cancel</a></td></tr></table>
<script>
 function myclose()
 {
	 window.close();
 }
 </script>
								</div>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>











	</form>

	</div>





</body>
</html>



