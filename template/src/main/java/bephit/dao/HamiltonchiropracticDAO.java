package bephit.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.sql.DataSource;

import bephit.model.Hamilton;
import bephit.model.Hamiltonchiropractic;
import bephit.model.RadiologicReport;
import bephit.model.SoapNotes;
 



public class HamiltonchiropracticDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public int setHamiltonchiropractic(Hamiltonchiropractic hamiltonchiropractic,Hamilton hamilton)
	{
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		int flag=0;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		//List<ParticipantsDetails> participants = new ArrayList<ParticipantsDetails>();
	    try{
	    	 DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	    	 Date date = new Date();
	    	 //System.out.println(dateFormat.format(date));
	    	 /*draweral`,`thompsonsr`,`thompsonsl`,`tinelsar`,`tinelsal`,`strunskysr`,`strunskysl`,`homansr`,`homansl`,`claudication_testr`,`claudication_testl`) VALUES ('"+hamiltonchiropractic.getHacheck()+"','"+hamiltonchiropractic.getHa()+"','"+hamiltonchiropractic.getNeckcheck()+"','"+hamiltonchiropractic.getNeck()+"','"+hamiltonchiropractic.getMbcheck()+"','"+hamiltonchiropractic.getMb()+"','"+hamiltonchiropractic.getRibscheck()+"','"+hamiltonchiropractic.getRibs()+"','"+hamiltonchiropractic.getShouldercheck()+"','"+hamiltonchiropractic.getShoulder()+"','"+hamiltonchiropractic.getElbowcheck()+"','"+hamiltonchiropractic.getElbow()+"','"+hamiltonchiropractic.getHandcheck()+"','"+hamiltonchiropractic.getHand()+"','"+hamiltonchiropractic.getWristcheck()+"','"+hamiltonchiropractic.getWrist()+"','"+hamiltonchiropractic.getLbpcheck()+"','"+hamiltonchiropractic.getLbp()+"','"+hamiltonchiropractic.getHipcheck()+"','"+hamiltonchiropractic.getHip()+"','"+hamiltonchiropractic.getLegcheck()+"','"+hamiltonchiropractic.getLeg()+"','"+hamiltonchiropractic.getKneecheck()+"','"+hamiltonchiropractic.getKnee()+"','"+hamiltonchiropractic.getFootcheck()+"','"+hamiltonchiropractic.getFoot()+"','"+hamiltonchiropractic.getAnklecheck()+"','"+hamiltonchiropractic.getAnkle()+"','"+hamiltonchiropractic.getSuddenly()+"','"+hamiltonchiropractic.getGradually()+"','"+hamiltonchiropractic.getHours()+"','"+hamiltonchiropractic.getDays()+"','"+hamiltonchiropractic.getDate()+"','"+hamiltonchiropractic.getReason()+"','"+hamiltonchiropractic.getAcute()+"','"+hamiltonchiropractic.getSubacute()+"','"+hamiltonchiropractic.getChronic()+"','"+hamiltonchiropractic.getLyingdown()+"','"+hamiltonchiropractic.getSitting()+"','"+hamiltonchiropractic.getStanding()+"','"+hamiltonchiropractic.getBending()+"','"+hamiltonchiropractic.getRest()+"','"+hamiltonchiropractic.getOtherb()+"','"+hamiltonchiropractic.getOthere()+"','"+hamiltonchiropractic.getIce()+"','"+hamiltonchiropractic.getHeat()+"','"+hamiltonchiropractic.getMassage()+"','"+hamiltonchiropractic.getAspirin()+"','"+hamiltonchiropractic.getOtherdone()+"','"+hamiltonchiropractic.getOtherit()+"','"+hamiltonchiropractic.getBendingworse()+"','"+hamiltonchiropractic.getTwisting()+"','"+hamiltonchiropractic.getLifting()+"','"+hamiltonchiropractic.getWalking()+"','"+hamiltonchiropractic.getActivity()+"','"+hamiltonchiropractic.getOtherworse()+"','"+hamiltonchiropractic.getOtherfeel()+"','"+hamiltonchiropractic.getSharp()+"','"+hamiltonchiropractic.getSevere()+"','"+hamiltonchiropractic.getDull()+"','"+hamiltonchiropractic.getBurning()+"','"+hamiltonchiropractic.getNagging()+"','"+hamiltonchiropractic.getThrobbing()+"','"+hamiltonchiropractic.getNumb()+"','"+hamiltonchiropractic.getTingling()+"','"+hamiltonchiropractic.getStiff()+"','"+hamiltonchiropractic.getStabbing()+"','"+hamiltonchiropractic.getCramping()+"','"+hamiltonchiropractic.getOtherdescribe()+"','"+hamiltonchiropractic.getOtherpain()+"','"+hamiltonchiropractic.getConstant()+"','"+hamiltonchiropractic.getIntermittent()+"','"+hamiltonchiropractic.getLocal()+"','"+hamiltonchiropractic.getDiffuse()+"','"+hamiltonchiropractic.getRadiates()+"','"+hamiltonchiropractic.getOtherradiates()+"','"+hamiltonchiropractic.getMild()+"','"+hamiltonchiropractic.getModerate()+"','"+hamiltonchiropractic.getSeverepain()+"','"+hamiltonchiropractic.getCrippling()+"','"+hamiltonchiropractic.getAm()+"','"+hamiltonchiropractic.getPm()+"','"+hamiltonchiropractic.getOthertime()+"','"+hamiltonchiropractic.getOtherdn()+"','"+hamiltonchiropractic.getBetter()+"','"+hamiltonchiropractic.getSame()+"','"+hamiltonchiropractic.getWorse()+"','"+hamiltonchiropractic.getYes()+"','"+hamiltonchiropractic.getNo()+"','"+hamiltonchiropractic.getDay()+"','"+hamiltonchiropractic.getWork()+"','"+hamiltonchiropractic.getSleep()+"','"+hamiltonchiropractic.getOtherdaily()+"','"+hamiltonchiropractic.getOthercondition()+"','"+hamiltonchiropractic.getSameass()+"','"+hamiltonchiropractic.getImproved()+"','"+hamiltonchiropractic.getWorseass()+"','"+hamiltonchiropractic.getPlateau()+"','"+hamiltonchiropractic.getPreinjury()+"','"+hamiltonchiropractic.getSlight()+"','"+hamiltonchiropractic.getModeratly()+"','"+hamiltonchiropractic.getGreat()+"','"+hamiltonchiropractic.getChiropractic()+"','"+hamiltonchiropractic.getEms()+"','"+hamiltonchiropractic.getIceplan()+"','"+hamiltonchiropractic.getHeatplan()+"','"+hamiltonchiropractic.getNimmo()+"','"+hamiltonchiropractic.getUltrasound()+"','"+hamiltonchiropractic.getManualtraction()+"','"+hamiltonchiropractic.getMassageplan()+"','"+hamiltonchiropractic.getNeuromuscular()+"','"+hamiltonchiropractic.getStretching()+"','"+hamiltonchiropractic.getStrengthening()+"','"+hamiltonchiropractic.getRemobilization()+"','"+hamiltonchiropractic.getRehab()+"','"+hamiltonchiropractic.getModificat()+"','"+hamiltonchiropractic.getRelease()+"','"+hamiltonchiropractic.getRefer()+"','"+hamiltonchiropractic.getDecreasepain()+"','"+hamiltonchiropractic.getDecreasespam()+"','"+hamiltonchiropractic.getIncreaserom()+"','"+hamiltonchiropractic.getImproveadl()+"','"+hamiltonchiropractic.getImprovesubluxations()+"','"+hamiltonchiropractic.getFullactivity()+"','"+hamiltonchiropractic.getReturntowork()+"','"+hamiltonchiropractic.getRenewsports()+"','"+hamiltonchiropractic.getJacksonsr()+"','"+hamiltonchiropractic.getJacksonsl()+"','"+hamiltonchiropractic.getJacksonslo()+"','"+hamiltonchiropractic.getForamin_compr()+"','"+hamiltonchiropractic.getForamin_compl()+"','"+hamiltonchiropractic.getForamin_complo()+"','"+hamiltonchiropractic.getShoulder_deprr()+"','"+hamiltonchiropractic.getShoulder_deprl()+"','"+hamiltonchiropractic.getShoulder_deprlo()+"','"+hamiltonchiropractic.getGeorgesr()+"','"+hamiltonchiropractic.getGeorgesl()+"','"+hamiltonchiropractic.getGeorgeslo()+"','"+hamiltonchiropractic.getOdonor()+"','"+hamiltonchiropractic.getOdonol()+"','"+hamiltonchiropractic.getOdonolo()+"','"+hamiltonchiropractic.getBakody_signr()+"','"+hamiltonchiropractic.getBakody_signl()+"','"+hamiltonchiropractic.getBakody_signlo()+"','"+hamiltonchiropractic.getDistraction_testr()+"','"+hamiltonchiropractic.getDistraction_testl()+"','"+hamiltonchiropractic.getDistraction_testlo()+"','"+hamiltonchiropractic.getValsalvalr()+"','"+hamiltonchiropractic.getValsalval()+"','"+hamiltonchiropractic.getValsalvalo()+"','"+hamiltonchiropractic.getSpinal_percuss()+"','"+hamiltonchiropractic.getGripdynamomright()+"','"+hamiltonchiropractic.getGripdynamomleft()+"','"+hamiltonchiropractic.getAdsonsr()+"','"+hamiltonchiropractic.getAdsonsl()+"','"+hamiltonchiropractic.getAdsonslo()+"','"+hamiltonchiropractic.getRustsignr()+"','"+hamiltonchiropractic.getRustsignl()+"','"+hamiltonchiropractic.getRustsignlo()+"','"+hamiltonchiropractic.getSpinal_percusst()+"','"+hamiltonchiropractic.getAdams_testr()+"','"+hamiltonchiropractic.getAdams_testl()+"','"+hamiltonchiropractic.getSheppal_signr()+"','"+hamiltonchiropractic.getSheppal_signl()+"','"+hamiltonchiropractic.getSoto_hallr()+"','"+hamiltonchiropractic.getSoto_halll()+"','"+hamiltonchiropractic.getCompression_testr()+"','"+hamiltonchiropractic.getCompression_testl()+"','"+hamiltonchiropractic.getCompression_testlo()+"','"+hamiltonchiropractic.getAntalgiar()+"','"+hamiltonchiropractic.getAntalgial()+"','"+hamiltonchiropractic.getSpinal_percusslr()+"','"+hamiltonchiropractic.'"+hamiltonchiropractic.getValsalvalr()+"','"+hamiltonchiropractic.getValsalvall()+"','"+hamiltonchiropractic.getMinors_signr()+"','"+hamiltonchiropractic.getMinors_signl()+"','"+hamiltonchiropractic.getBraggards_testr()+"','"+hamiltonchiropractic.getBraggards_testl()+"','"+hamiltonchiropractic.getSlrr()+"','"+hamiltonchiropractic.getSlrl()+"','"+hamiltonchiropractic.getWlrr()+"','"+hamiltonchiropractic.getWlrl()+"','"+hamiltonchiropractic.getHooversr()+"','"+hamiltonchiropractic.getHooversl()+"','"+hamiltonchiropractic.getDbl_leg_raiser()+"','"+hamiltonchiropractic.getDbl_leg_raisel()+"','"+hamiltonchiropractic.getLong_leg_testr()+"','"+hamiltonchiropractic.getLong_leg_testl()+"','"+hamiltonchiropractic.getAnvil_testr()+"','"+hamiltonchiropractic.getAnvil_testl()+"','"+hamiltonchiropractic.getThomasr()+"','"+hamiltonchiropractic.getThomasl()+"','"+hamiltonchiropractic.getMilgrams_testr()+"','"+hamiltonchiropractic.getThomasl()+"','"+hamiltonchiropractic.getObersr()+"','"+hamiltonchiropractic.getObersl()+"','"+hamiltonchiropractic.getIlliaccompr()+"','"+hamiltonchiropractic.getIlliaccompl()+"','"+hamiltonchiropractic.getYeomansr()+"','"+hamiltonchiropractic.getYeomansl()+"','"+hamiltonchiropractic.getAllis_signr()+"','"+hamiltonchiropractic.getAllis_signl()+"','"+hamiltonchiropractic.getDugasr()+"','"+hamiltonchiropractic.getDugasl()+"','"+hamiltonchiropractic.getSupraspinatusr()+"','"+hamiltonchiropractic.getCodmansr()+"','"+hamiltonchiropractic.getCodmansl()+"','"+hamiltonchiropractic.getSpeeds_testr()+"','"+hamiltonchiropractic.getSpeeds_testl()+"','"+hamiltonchiropractic.getYergasonsr()+"','"+hamiltonchiropractic.getYergasonsl()+"','"+hamiltonchiropractic.getTinelser()+"','"+hamiltonchiropractic.getTinelsel()+"','"+hamiltonchiropractic.getLingaminstabr()+"','"+hamiltonchiropractic.getLingaminstabl()+"','"+hamiltonchiropractic.getGolfers_elbowr()+"','"+hamiltonchiropractic.getGolfers_elbowl()+"','"+hamiltonchiropractic.getTennis_elbowr()+"','"+hamiltonchiropractic.getGolfers_elbowl()+"','"+hamiltonchiropractic.getTinelsr()+"','"+hamiltonchiropractic.getTinelsel()+"','"+hamiltonchiropractic.getPhalensr()+"','"+hamiltonchiropractic.getPhalensl()+"','"+hamiltonchiropractic.getFinkelsteins_testr()+"','"+hamiltonchiropractic.getFinkelsteins_testl()+"','"+hamiltonchiropractic.getBraceletr()+"','"+hamiltonchiropractic.getBraceletl()+"','"+hamiltonchiropractic.getAllensr()+"','"+hamiltonchiropractic.getAllensl()+"','"+hamiltonchiropractic.getValgus_varusr()+"','"+hamiltonchiropractic.getValgus_varusl()+"','"+hamiltonchiropractic.getPat_ballr()+"','"+hamiltonchiropractic.getPat_balll()+"','"+hamiltonchiropractic.getDrawerr()+"','"+hamiltonchiropractic.getDrawerl()+"','"+hamiltonchiropractic.getVal_varusr()+"','"+hamiltonchiropractic.getVal_varusl()+"','"+hamiltonchiropractic.getApleysr()+"','"+hamiltonchiropractic.getApleysl()+"','"+hamiltonchiropractic.getDrawerar()+"','"+hamiltonchiropractic.getDraweral()+"','"+hamiltonchiropractic.getThompsonsr()+"','"+hamiltonchiropractic.getThompsonsl()+"','"+hamiltonchiropractic.getTinelsar()+"','"+hamiltonchiropractic.getTinelsal()+"','"+hamiltonchiropractic.getStrunskysr()+"','"+hamiltonchiropractic.getStrunskysl()+"','"+hamiltonchiropractic.getHomansr()+"','"+hamiltonchiropractic.getHomansl()+"','"+hamiltonchiropractic.getClaudication_testr()+"','"+hamiltonchiropractic.getClaudication_testl()+"')";*/ 
	         String cmd="INSERT INTO `tbl_hamiltonchiropractic`(patient_id,`lumbopelvic`,`lumboright`,`lumboleft`,`cervical`,`cervicalright`,`cervicalleft`,`thoracic`,`thoracicright`,`thoracicleft`,`hacheck`,`ha`,`haa`,`neckcheck`,`neck`,`necka`,`mbcheck`,`mb`,`mba`,`ribscheck`,`ribs`,`ribsa`,`shouldercheck`,`shoulder`,`shouldera`,`elbowcheck`,`elbow`,`elbowa`,`handcheck`,`hand`,`handa`,`wristcheck`,`wrist`,`wrista`,`lbpcheck`,`lbp`,`lbpa`,`hipcheck`,`hip`,`hipa`,`legcheck`,`leg`,`lega`,`kneecheck`,`knee`,`kneea`,`footcheck`,`foot`,`foota`,`anklecheck`,`ankle`,`anklea`,`suddenly`,`gradually`,`hours`,`days`,`date`,`reason`,`acute`,`subacute`,`chronic`,`lyingdown`,`sitting`,`standing`,`bending`,`rest`,`otherb`,`othere`,`ice`,`heat`,`massage`,`aspirin`,`otherdone`,`otherit`,`bendingworse`,`twisting`,`lifting`,`walking`,`activity`,`otherworse`,`otherfeel`,`sharp`,`severe`,`dull`,`burning`,`nagging`,`throbbing`,`numb`,`tingling`,`stiff`,`stabbing`,`cramping`,`otherdescribe`,`otherpain`,`constant`,`intermittent`,`local`,`diffuse`,`radiates`,`otherradiates`,`mild`,`moderate`,`severepain`,`crippling`,`am`,`pm`,`othertime`,`otherdn`,`better`,`same`,`worse`,`yes`,`no`,`day`,`work`,`sleep`,`otherdaily`,`othercondition`,`sameass`,`improved`,`worseass`,`plateau`,`preinjury`,`slight`,`moderatly`,`great`,`chiropractic`,`ems`,`iceplan`,`heatplan`,`nimmo`,`ultrasound`,`manualtraction`,`massageplan`,`neuromuscular`,`stretching`,`strengthening`,`remobilization`,`improvesubluxations`,`rehab`,`modificat`,`care`,`refer`,`decreasepain`,`decreasespam`,`increaserom`,`improveadl`,`fullactivity`,`returntowork`,`renewsports`,`jacksonsr`,`jacksonsl`,`jacksonslo`,`foramin_compr`,`foramin_compl`,`foramin_complo`,`shoulder_deprr`,`shoulder_deprl`,`shoulder_deprlo`,`georgesr`,`georgesl`,`georgeslo`,`odonor`,`odonol`,`bakody_signr`,`bakody_signl`,`bakody_signlo`,`distraction_testr`,`distraction_testl`,`valsalvar`,`valsalval`,`valsalvalo`,`spinal_percuss`,`gripdynamomright`,`gripdynamomleft`,`adsonsr`,`adsonsl`,`adsonslo`,`rustsignr`,`rustsignl`,`rustsignlo`,`spinal_percusst`,`adams_testr`,`adams_testl`,`sheppal_signr`,`sheppal_signl`,`soto_hallr`,`soto_halll`,`compression_testr`,`compression_testl`,`compression_testlo`,`antalgiar`,`antalgial`,`spinal_percusslr`,`valsalvalr`,`valsalvall`,`minors_signr`,`minors_signl`,`braggards_testr`,`braggards_testl`,`slrr`,`slrl`,`wlrr`,`wlrl`,`hooversr`,`hooversl`,`dbl_leg_raiser`,`dbl_leg_raisel`,`long_leg_testr`,`long_leg_testl`,`anvil_testr`,`anvil_testl`,`thomasr`,`thomasl`,`milgrams_testr`,`milgrams_testl`,`obersr`,`obersl`,`illiaccompr`,`illiaccompl`,`yeomansr`,`yeomansl`,`allis_signr`,`allis_signl`,`dugasr`,`dugasl`,`supraspinatusr`,`supraspinatusl`,`codmansr`,`codmansl`,`speeds_testr`,`speeds_testl`,`yergasonsr`,`yergasonsl`,`tinelser`,`tinelsel`,`lingaminstabr`,`lingaminstabl`,`golfers_elbowr`,`golfers_elbowl`,`tennis_elbowr`,`tennis_elbowl`,`tinelsr`,`tinelsl`,`phalensr`,`phalensl`,`finkelsteins_testr`,`finkelsteins_testl`,`braceletr`,`braceletl`,`allensr`,`allensl`,`valgus_varusr`,`valgus_varusl`,`pat_ballr`,`pat_balll`,`drawerr`,`drawerl`,`val_varusr`,`val_varusl`,`apleysr`,`apleysl`,`ankdrawr`,`ankdrawl`,`ankthomr`,`ankthoml`,`anktinelr`,`anktinell`,`ankstrunkr`,`ankstrunkl`,`ankhomanr`,ankhomanl,ankclaudicr,ankclaudicl)VALUES ('"+hamiltonchiropractic.getPatient_id()+"','"+hamiltonchiropractic.getLumbopelvic()+"','"+hamiltonchiropractic.getLumboright()+"','"+hamiltonchiropractic.getLumboleft()+"','"+hamiltonchiropractic.getCervical()+"','"+hamiltonchiropractic.getCervicalright()+"','"+hamiltonchiropractic.getCervicalleft()+"','"+hamiltonchiropractic.getThoracic()+"','"+hamiltonchiropractic.getThoracicright()+"','"+hamiltonchiropractic.getThoracicleft()+"','"+hamiltonchiropractic.getHacheck()+"','"+hamiltonchiropractic.getHa()+"','"+hamiltonchiropractic.getHaa()+"','"+hamiltonchiropractic.getNeckcheck()+"','"+hamiltonchiropractic.getNeck()+"','"+hamiltonchiropractic.getNecka()+"','"+hamiltonchiropractic.getMbcheck()+"','"+hamiltonchiropractic.getMb()+"','"+hamiltonchiropractic.getMba()+"','"+hamiltonchiropractic.getRibscheck()+"','"+hamiltonchiropractic.getRibs()+"','"+hamiltonchiropractic.getRibsa()+"','"+hamiltonchiropractic.getShouldercheck()+"','"+hamiltonchiropractic.getShoulder()+"','"+hamiltonchiropractic.getShouldera()+"','"+hamiltonchiropractic.getElbowcheck()+"','"+hamiltonchiropractic.getElbow()+"','"+hamiltonchiropractic.getElbowa()+"','"+hamiltonchiropractic.getHandcheck()+"','"+hamiltonchiropractic.getHand()+"','"+hamiltonchiropractic.getHanda()+"','"+hamiltonchiropractic.getWristcheck()+"','"+hamiltonchiropractic.getWrist()+"','"+hamiltonchiropractic.getWrista()+"','"+hamiltonchiropractic.getLbpcheck()+"','"+hamiltonchiropractic.getLbp()+"','"+hamiltonchiropractic.getLbpa()+"','"+hamiltonchiropractic.getHipcheck()+"','"+hamiltonchiropractic.getHip()+"','"+hamiltonchiropractic.getHipa()+"','"+hamiltonchiropractic.getLegcheck()+"','"+hamiltonchiropractic.getLeg()+"','"+hamiltonchiropractic.getLega()+"','"+hamiltonchiropractic.getKneecheck()+"','"+hamiltonchiropractic.getKnee()+"','"+hamiltonchiropractic.getKneea()+"','"+hamiltonchiropractic.getFootcheck()+"','"+hamiltonchiropractic.getFoot()+"','"+hamiltonchiropractic.getFoota()+"','"+hamiltonchiropractic.getAnklecheck()+"','"+hamiltonchiropractic.getAnkle()+"','"+hamiltonchiropractic.getAnklea()+"','"+hamiltonchiropractic.getSuddenly()+"','"+hamiltonchiropractic.getGradually()+"','"+hamiltonchiropractic.getHours()+"','"+hamiltonchiropractic.getDays()+"','"+hamiltonchiropractic.getDate()+"','"+hamiltonchiropractic.getReason()+"','"+hamiltonchiropractic.getAcute()+"','"+hamiltonchiropractic.getSubacute()+"','"+hamiltonchiropractic.getChronic()+"','"+hamiltonchiropractic.getLyingdown()+"','"+hamiltonchiropractic.getSitting()+"','"+hamiltonchiropractic.getStanding()+"','"+hamiltonchiropractic.getBending()+"','"+hamiltonchiropractic.getRest()+"','"+hamiltonchiropractic.getOtherb()+"','"+hamiltonchiropractic.getOthere()+"','"+hamiltonchiropractic.getIce()+"','"+hamiltonchiropractic.getHeat()+"','"+hamiltonchiropractic.getMassage()+"','"+hamiltonchiropractic.getAspirin()+"','"+hamiltonchiropractic.getOtherdone()+"','"+hamiltonchiropractic.getOtherit()+"','"+hamiltonchiropractic.getBendingworse()+"','"+hamiltonchiropractic.getTwisting()+"','"+hamiltonchiropractic.getLifting()+"','"+hamiltonchiropractic.getWalking()+"','"+hamiltonchiropractic.getActivity()+"','"+hamiltonchiropractic.getOtherworse()+"','"+hamiltonchiropractic.getOtherfeel()+"','"+hamiltonchiropractic.getSharp()+"','"+hamiltonchiropractic.getSevere()+"','"+hamiltonchiropractic.getDull()+"','"+hamiltonchiropractic.getBurning()+"','"+hamiltonchiropractic.getNagging()+"','"+hamiltonchiropractic.getThrobbing()+"','"+hamiltonchiropractic.getNumb()+"','"+hamiltonchiropractic.getTingling()+"','"+hamiltonchiropractic.getStiff()+"','"+hamiltonchiropractic.getStabbing()+"','"+hamiltonchiropractic.getCramping()+"','"+hamiltonchiropractic.getOtherdescribe()+"','"+hamiltonchiropractic.getOtherpain()+"','"+hamiltonchiropractic.getConstant()+"','"+hamiltonchiropractic.getIntermittent()+"','"+hamiltonchiropractic.getLocal()+"','"+hamiltonchiropractic.getDiffuse()+"','"+hamiltonchiropractic.getRadiates()+"','"+hamiltonchiropractic.getOtherradiates()+"','"+hamiltonchiropractic.getMild()+"','"+hamiltonchiropractic.getModerate()+"','"+hamiltonchiropractic.getSeverepain()+"','"+hamiltonchiropractic.getCrippling()+"','"+hamiltonchiropractic.getAm()+"','"+hamiltonchiropractic.getPm()+"','"+hamiltonchiropractic.getOthertime()+"','"+hamiltonchiropractic.getOtherdn()+"','"+hamiltonchiropractic.getBetter()+"','"+hamiltonchiropractic.getSame()+"','"+hamiltonchiropractic.getWorse()+"','"+hamiltonchiropractic.getYes()+"','"+hamiltonchiropractic.getNo()+"','"+hamiltonchiropractic.getDay()+"','"+hamiltonchiropractic.getWork()+"','"+hamiltonchiropractic.getSleep()+"','"+hamiltonchiropractic.getOtherdaily()+"','"+hamiltonchiropractic.getOthercondition()+"','"+hamiltonchiropractic.getSameass()+"','"+hamiltonchiropractic.getImproved()+"','"+hamiltonchiropractic.getWorseass()+"','"+hamiltonchiropractic.getPlateau()+"','"+hamiltonchiropractic.getPreinjury()+"','"+hamiltonchiropractic.getSlight()+"','"+hamiltonchiropractic.getModeratly()+"','"+hamiltonchiropractic.getGreat()+"','"+hamiltonchiropractic.getChiropractic()+"','"+hamiltonchiropractic.getEms()+"','"+hamiltonchiropractic.getIceplan()+"','"+hamiltonchiropractic.getHeatplan()+"','"+hamiltonchiropractic.getNimmo()+"','"+hamiltonchiropractic.getUltrasound()+"','"+hamiltonchiropractic.getManualtraction()+"','"+hamiltonchiropractic.getMassageplan()+"','"+hamiltonchiropractic.getNeuromuscular()+"','"+hamiltonchiropractic.getStretching()+"','"+hamiltonchiropractic.getStrengthening()+"','"+hamiltonchiropractic.getRemobilization()+"','"+hamiltonchiropractic.getImprovesubluxations()+"','"+hamiltonchiropractic.getRehab()+"','"+hamiltonchiropractic.getModificat()+"','"+hamiltonchiropractic.getCare()+"','"+hamiltonchiropractic.getRefer()+"','"+hamiltonchiropractic.getDecreasepain()+"','"+hamiltonchiropractic.getDecreasespam()+"','"+hamiltonchiropractic.getIncreaserom()+"','"+hamiltonchiropractic.getImproveadl()+"','"+hamiltonchiropractic.getFullactivity()+"','"+hamiltonchiropractic.getReturntowork()+"','"+hamiltonchiropractic.getRenewsports()+"','"+hamiltonchiropractic.getJacksonsr()+"','"+hamiltonchiropractic.getJacksonsl()+"','"+hamiltonchiropractic.getJacksonslo()+"','"+hamiltonchiropractic.getForamin_compr()+"','"+hamiltonchiropractic.getForamin_compl()+"','"+hamiltonchiropractic.getForamin_complo()+"','"+hamiltonchiropractic.getShoulder_deprr()+"','"+hamiltonchiropractic.getShoulder_deprl()+"','"+hamiltonchiropractic.getShoulder_deprlo()+"','"+hamiltonchiropractic.getGeorgesr()+"','"+hamiltonchiropractic.getGeorgesl()+"','"+hamiltonchiropractic.getGeorgeslo()+"','"+hamiltonchiropractic.getOdonor()+"','"+hamiltonchiropractic.getOdonol()+"','"+hamiltonchiropractic.getBakody_signr()+"','"+hamiltonchiropractic.getBakody_signl()+"','"+hamiltonchiropractic.getBakody_signlo()+"','"+hamiltonchiropractic.getDistraction_testr()+"','"+hamiltonchiropractic.getDistraction_testl()+"','"+hamiltonchiropractic.getValsalvar()+"','"+hamiltonchiropractic.getValsalval()+"','"+hamiltonchiropractic.getValsalvalo()+"','"+hamiltonchiropractic.getSpinal_percuss()+"','"+hamiltonchiropractic.getGripdynamomright()+"','"+hamiltonchiropractic.getGripdynamomleft()+"','"+hamiltonchiropractic.getAdsonsr()+"','"+hamiltonchiropractic.getAdsonsl()+"','"+hamiltonchiropractic.getAdsonslo()+"','"+hamiltonchiropractic.getRustsignr()+"','"+hamiltonchiropractic.getRustsignl()+"','"+hamiltonchiropractic.getRustsignlo()+"','"+hamiltonchiropractic.getSpinal_percusst()+"','"+hamiltonchiropractic.getAdams_testr()+"','"+hamiltonchiropractic.getAdams_testl()+"','"+hamiltonchiropractic.getSheppal_signr()+"','"+hamiltonchiropractic.getSheppal_signl()+"','"+hamiltonchiropractic.getSoto_hallr()+"','"+hamiltonchiropractic.getSoto_halll()+"','"+hamiltonchiropractic.getCompression_testr()+"','"+hamiltonchiropractic.getCompression_testl()+"','"+hamiltonchiropractic.getCompression_testlo()+"','"+hamiltonchiropractic.getAntalgiar()+"','"+hamiltonchiropractic.getAntalgial()+"','"+hamiltonchiropractic.getSpinal_percusslr()+"','"+hamiltonchiropractic.getValsalvalr()+"','"+hamiltonchiropractic.getValsalvall()+"','"+hamiltonchiropractic.getMinors_signr()+"','"+hamiltonchiropractic.getMinors_signl()+"','"+hamiltonchiropractic.getBraggards_testr()+"','"+hamiltonchiropractic.getBraggards_testl()+"','"+hamiltonchiropractic.getSlrr()+"','"+hamiltonchiropractic.getSlrl()+"','"+hamiltonchiropractic.getWlrr()+"','"+hamiltonchiropractic.getWlrl()+"','"+hamiltonchiropractic.getHooversr()+"','"+hamiltonchiropractic.getHooversl()+"','"+hamiltonchiropractic.getDbl_leg_raiser()+"','"+hamiltonchiropractic.getDbl_leg_raisel()+"','"+hamiltonchiropractic.getLong_leg_testr()+"','"+hamiltonchiropractic.getLong_leg_testl()+"','"+hamiltonchiropractic.getAnvil_testr()+"','"+hamiltonchiropractic.getAnvil_testl()+"','"+hamiltonchiropractic.getThomasr()+"','"+hamiltonchiropractic.getThomasl()+"','"+hamiltonchiropractic.getMilgrams_testr()+"','"+hamiltonchiropractic.getMilgrams_testl()+"','"+hamiltonchiropractic.getObersr()+"','"+hamiltonchiropractic.getObersl()+"','"+hamiltonchiropractic.getIlliaccompr()+"','"+hamiltonchiropractic.getIlliaccompl()+"','"+hamiltonchiropractic.getYeomansr()+"','"+hamiltonchiropractic.getYeomansl()+"','"+hamiltonchiropractic.getAllis_signr()+"','"+hamiltonchiropractic.getAllis_signl()+"','"+hamiltonchiropractic.getDugasr()+"','"+hamiltonchiropractic.getDugasl()+"','"+hamiltonchiropractic.getSupraspinatusr()+"','"+hamiltonchiropractic.getSupraspinatusl()+"','"+hamiltonchiropractic.getCodmansr()+"','"+hamiltonchiropractic.getCodmansl()+"','"+hamiltonchiropractic.getSpeeds_testr()+"','"+hamiltonchiropractic.getSpeeds_testl()+"','"+hamiltonchiropractic.getYergasonsr()+"','"+hamiltonchiropractic.getYergasonsl()+"','"+hamiltonchiropractic.getTinelser()+"','"+hamiltonchiropractic.getTinelsel()+"','"+hamiltonchiropractic.getLingaminstabr()+"','"+hamiltonchiropractic.getLingaminstabl()+"','"+hamiltonchiropractic.getGolfers_elbowr()+"','"+hamiltonchiropractic.getGolfers_elbowl()+"','"+hamiltonchiropractic.getTennis_elbowr()+"','"+hamiltonchiropractic.getGolfers_elbowl()+"','"+hamiltonchiropractic.getTinelsr()+"','"+hamiltonchiropractic.getTinelsl()+"','"+hamiltonchiropractic.getPhalensr()+"','"+hamiltonchiropractic.getPhalensl()+"','"+hamiltonchiropractic.getFinkelsteins_testr()+"','"+hamiltonchiropractic.getFinkelsteins_testl()+"','"+hamiltonchiropractic.getBraceletr()+"','"+hamiltonchiropractic.getBraceletl()+"','"+hamiltonchiropractic.getAllensr()+"','"+hamiltonchiropractic.getAllensl()+"','"+hamiltonchiropractic.getValgus_varusr()+"','"+hamilton.getValgus_varusl()+"','"+hamilton.getPat_ballr()+"','"+hamilton.getPat_balll()+"','"+hamilton.getDrawerr()+"','"+hamilton.getDrawerl()+"','"+hamilton.getVal_varusr()+"','"+hamilton.getVal_varusl()+"','"+hamilton.getApleysr()+"','"+hamilton.getApleysl()+"','"+hamilton.getAnkdrawr()+"','"+hamilton.getAnkdrawl()+"','"+hamilton.getAnkthomr()+"','"+hamilton.getAnkthoml()+"','"+hamilton.getAnktinelr()+"','"+hamilton.getAnktinell()+"','"+hamilton.getAnkstrunkr()+"','"+hamilton.getAnkstrunkl()+"','"+hamilton.getAnkhomanr()+"','"+hamilton.getAnkhomanl()+"','"+hamilton.getAnkclaudicr()+"','"+hamilton.getAnkclaudicl()+"')";
	    	 System.out.println(cmd);
	    	 statement.execute(cmd);
	    	/* String cmd_getparticipantname="select fname from participants_table where participants_id='"+participant_id+"'";
	    	 resultSet=statement.executeQuery(cmd_getparticipantname);
	    	 String Desc="added participants"+Autoaccident.getClaimnumber();
	    	 if(resultSet.next())
			Desc=Desc+resultSet.getString(1);
	    	String cmd_activity="insert into admin_log_activity_table(admin_id,ip_address,admin_date_time,admin_desc) values('"+admin_id+"','127.0.0.1','"+dateFormat.format(date)+"','"+Desc+"')";
	    	System.out.println(cmd_activity);
	    	statement.execute(cmd_activity);*/
			flag=1;
	 }
	    catch(Exception e){
	    	System.out.println(e.toString());
	    	releaseStatement(statement);
	    	releaseConnection(con);
	    	flag=0;
	    	//return 0;
	    }finally{
	     	releaseStatement(statement);
	    	releaseConnection(con);	    
	    	
	    }
	    if(flag==1)
    		return 1;
    	else
    		return 0;
	    
	}

	public String usernamevalidation11(String pusername)
	{
		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;
		int flag=0;
		try {
			con = dataSource.getConnection();
			statement = con.createStatement();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
	    try{
	    	
	   System.out.println("delete from tbl_hamiltonchiropractic where patient_id='"+pusername+"'");
	  
	   System.out.println("delete from tbl_lumbopelvicexam where username='"+pusername+"'");
	   System.out.println("delete from tbl_cervicalexam where username='"+pusername+"'");
	   System.out.println("delete from tbl_thoracicexam where username='"+pusername+"'");
	   System.out.println("delete from shoulderexam where username='"+pusername+"'");
	   System.out.println("delete from tbl_elbowexam where username='"+pusername+"'");
	   System.out.println("delete from wristexam where username='"+pusername+"'");
	   System.out.println("delete from hipexam where username='"+pusername+"'");
	   System.out.println("delete from tbl_kneeexam where username='"+pusername+"'");
	   System.out.println("delete from footexam where username='"+pusername+"'");
	   
	   
	   statement.execute("delete from tbl_hamiltonchiropractic where patient_id='"+pusername+"'");
	  
	   statement.execute("delete from tbl_lumbopelvicexam where username='"+pusername+"'");
	   statement.execute("delete from tbl_cervicalexam where username='"+pusername+"'"); 
	   statement.execute("delete from tbl_thoracicexam where username='"+pusername+"'"); 
	   statement.execute("delete from shoulderexam where username='"+pusername+"'"); 
	   statement.execute("delete from tbl_elbowexam where username='"+pusername+"'"); 
	   statement.execute("delete from wristexam where username='"+pusername+"'"); 
	   statement.execute("delete from hipexam where username='"+pusername+"'"); 
	   statement.execute("delete from tbl_kneeexam where username='"+pusername+"'"); 
	   statement.execute("delete from footexam where username='"+pusername+"'"); 
	   
	    	 			
	    	 				
	    	 			
	    	 				flag=1;
	    	 				
	    	 		    }
	
	    catch(Exception e){
	    	System.out.println(e.toString());
	    	releaseStatement(statement);
	    	releaseConnection(con);
	    	flag=0;
	    	//return 0;
	    }finally{
	     	releaseStatement(statement);
	    	releaseConnection(con);	  
	    	return "";
	    	
	    }
	   
	    
	}
public List<Hamiltonchiropractic> getHamiltonchiropractic(){
	
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Hamiltonchiropractic> hamiltonchiropractic = new ArrayList<Hamiltonchiropractic>();
	
    try{
		resultSet = statement.executeQuery("select * from tbl_hamiltonchiropractic");
		while(resultSet.next()){
			hamiltonchiropractic.add( new Hamiltonchiropractic(resultSet.getString("initialexamid"),resultSet.getString("patient_id"),resultSet.getString("hacheck"),resultSet.getString("ha"),resultSet.getString("haa"), resultSet.getString("neckcheck"),resultSet.getString("neck"),resultSet.getString("necka"),resultSet.getString("mbcheck"),resultSet.getString("mb"),resultSet.getString("mba"),resultSet.getString("ribscheck"),resultSet.getString("ribs"),resultSet.getString("ribsa"),resultSet.getString("shouldercheck"),resultSet.getString("shoulder"),resultSet.getString("shouldera"),resultSet.getString("elbowcheck"), resultSet.getString("elbow"),resultSet.getString("elbowa"), resultSet.getString("handcheck"), resultSet.getString("hand"),resultSet.getString("handa"), resultSet.getString("wristcheck"), resultSet.getString("wrist"), resultSet.getString("wrista"), resultSet.getString("lbpcheck"), resultSet.getString("lbp"), resultSet.getString("lbpa"), resultSet.getString("hipcheck"), resultSet.getString("hip"), resultSet.getString("hipa"), resultSet.getString("legcheck"),resultSet.getString("leg"),resultSet.getString("lega"), resultSet.getString("kneecheck"), resultSet.getString("knee"),resultSet.getString("kneea"), resultSet.getString("footcheck"), resultSet.getString("foot"),resultSet.getString("foota"),  resultSet.getString("anklecheck"), resultSet.getString("ankle"),resultSet.getString("anklea"), resultSet.getString("suddenly"),resultSet.getString("gradually"), resultSet.getString("hours"), resultSet.getString("days"), resultSet.getString("date"), resultSet.getString("reason"),resultSet.getString("acute"),resultSet.getString("subacute"), resultSet.getString("chronic"), resultSet.getString("lyingdown"),resultSet.getString("sitting"),resultSet.getString("standing"),resultSet.getString("bending"),resultSet.getString("rest"),resultSet.getString("otherb"), resultSet.getString("othere"), resultSet.getString("ice"),resultSet.getString("heat"),resultSet.getString("massage"),resultSet.getString("aspirin"),resultSet.getString("otherdone"), resultSet.getString("otherit"), resultSet.getString("bendingworse"),resultSet.getString("twisting"),resultSet.getString("lifting"),resultSet.getString("walking"),resultSet.getString("activity"),resultSet.getString("otherworse"), resultSet.getString("otherfeel"), resultSet.getString("sharp"),resultSet.getString("severe"),resultSet.getString("dull"),resultSet.getString("burning"),resultSet.getString("nagging"),resultSet.getString("throbbing"),resultSet.getString("numb"), resultSet.getString("tingling"),resultSet.getString("stiff"),resultSet.getString("stabbing"),resultSet.getString("cramping"),resultSet.getString("otherdescribe"),resultSet.getString("otherpain"), resultSet.getString("constant"),resultSet.getString("intermittent"), resultSet.getString("local"),resultSet.getString("diffuse"),resultSet.getString("radiates"),resultSet.getString("otherradiates"), resultSet.getString("mild"),resultSet.getString("moderate"), resultSet.getString("severepain"),resultSet.getString("crippling"),resultSet.getString("am"), resultSet.getString("pm"),resultSet.getString("othertime"),resultSet.getString("otherdn"), resultSet.getString("better"),resultSet.getString("same"), resultSet.getString("worse"),resultSet.getString("yes"),resultSet.getString("no"),resultSet.getString("day"), resultSet.getString("work"), resultSet.getString("sleep"),resultSet.getString("otherdaily"), resultSet.getString("othercondition"), resultSet.getString("sameass"), resultSet.getString("improved"),resultSet.getString("worseass"),resultSet.getString("plateau"),resultSet.getString("preinjury"),resultSet.getString("slight"),resultSet.getString("moderatly"),resultSet.getString("great"),resultSet.getString("chiropractic"),resultSet.getString("ems"), resultSet.getString("iceplan"),resultSet.getString("heatplan"),resultSet.getString("nimmo"),resultSet.getString("ultrasound"),resultSet.getString("manualtraction"),resultSet.getString("massageplan"),resultSet.getString("neuromuscular"),resultSet.getString("stretching"),resultSet.getString("strengthening"),resultSet.getString("remobilization"),resultSet.getString("improvesubluxations"),resultSet.getString("rehab"),resultSet.getString("modificat"),resultSet.getString("care"),resultSet.getString("refer"), resultSet.getString("decreasepain"),resultSet.getString("decreasespam"),resultSet.getString("increaserom"),resultSet.getString("improveadl"),resultSet.getString("fullactivity"),resultSet.getString("returntowork"),resultSet.getString("renewsports"), resultSet.getString("jacksonsr"),resultSet.getString("jacksonsl"),resultSet.getString("jacksonslo"), resultSet.getString("foramin_compr"),resultSet.getString("foramin_compl"),resultSet.getString("foramin_complo"), resultSet.getString("shoulder_deprr"),resultSet.getString("shoulder_deprl"),resultSet.getString("shoulder_deprlo"), resultSet.getString("georgesr"),resultSet.getString("georgesl"),resultSet.getString("georgeslo"), resultSet.getString("odonor"),resultSet.getString("odonol"), resultSet.getString("bakody_signr"),resultSet.getString("bakody_signl"),resultSet.getString("bakody_signlo"), resultSet.getString("distraction_testr"),resultSet.getString("distraction_testl"), resultSet.getString("valsalvar"),resultSet.getString("valsalval"),resultSet.getString("valsalvalo"), resultSet.getString("spinal_percuss"), resultSet.getString("gripdynamomright"), resultSet.getString("gripdynamomleft"), resultSet.getString("adsonsr"),resultSet.getString("adsonsl"),resultSet.getString("adsonslo"), resultSet.getString("rustsignr"),resultSet.getString("rustsignl"),resultSet.getString("rustsignlo"), resultSet.getString("spinal_percusst"), resultSet.getString("adams_testr"),resultSet.getString("adams_testl"), resultSet.getString("sheppal_signr"),resultSet.getString("sheppal_signl"), resultSet.getString("soto_hallr"),resultSet.getString("soto_halll"), resultSet.getString("compression_testr"),resultSet.getString("compression_testl"),resultSet.getString("compression_testlo"), resultSet.getString("antalgiar"),resultSet.getString("antalgial"), resultSet.getString("spinal_percusslr"), resultSet.getString("valsalvalr"),resultSet.getString("valsalvall"), resultSet.getString("minors_signr"),resultSet.getString("minors_signl"), resultSet.getString("braggards_testr"),resultSet.getString("braggards_testl"), resultSet.getString("slrr"),resultSet.getString("slrl"), resultSet.getString("wlrr"),resultSet.getString("wlrl"), resultSet.getString("hooversr"),resultSet.getString("hooversl"), resultSet.getString("dbl_leg_raiser"),resultSet.getString("dbl_leg_raisel"), resultSet.getString("long_leg_testr"),resultSet.getString("long_leg_testl"), resultSet.getString("anvil_testr"),resultSet.getString("anvil_testl"), resultSet.getString("thomasr"),resultSet.getString("thomasl"), resultSet.getString("milgrams_testr"),resultSet.getString("milgrams_testl"), resultSet.getString("obersr"),resultSet.getString("obersl"), resultSet.getString("illiaccompr"),resultSet.getString("illiaccompl"), resultSet.getString("yeomansr"), resultSet.getString("yeomansl"),resultSet.getString("allis_signr"),resultSet.getString("allis_signl"), resultSet.getString("dugasr"),resultSet.getString("dugasl"), resultSet.getString("supraspinatusr"),resultSet.getString("supraspinatusl"), resultSet.getString("codmansr"),resultSet.getString("codmansl"), resultSet.getString("speeds_testr"), resultSet.getString("speeds_testl"),resultSet.getString("yergasonsr"),resultSet.getString("yergasonsl"), resultSet.getString("tinelser"),resultSet.getString("tinelsel"), resultSet.getString("lingaminstabr"),resultSet.getString("lingaminstabl"), resultSet.getString("golfers_elbowr"),resultSet.getString("golfers_elbowl"), resultSet.getString("tennis_elbowr"),resultSet.getString("tennis_elbowl"), resultSet.getString("tinelsr"),resultSet.getString("tinelsl"), resultSet.getString("phalensr"),resultSet.getString("phalensl"), resultSet.getString("finkelsteins_testr"),resultSet.getString("finkelsteins_testl"), resultSet.getString("braceletr"),resultSet.getString("braceletl"), resultSet.getString("allensr"),resultSet.getString("allensl"), resultSet.getString("valgus_varusr"),resultSet.getString("valgus_varusl"), resultSet.getString("pat_ballr"),resultSet.getString("pat_balll"), resultSet.getString("drawerr"),resultSet.getString("drawerl"), resultSet.getString("val_varusr"),resultSet.getString("val_varusl"), resultSet.getString("apleysr")));
			}
		
    }catch(Exception e){
    	releaseResultSet(resultSet);
    	releaseStatement(statement);
    	releaseConnection(con);
    }finally{
    	releaseResultSet(resultSet);
    	releaseStatement(statement);
    	releaseConnection(con);	    	
    }
    return hamiltonchiropractic;
	
	
}


public List<Hamilton> getHamilton(String initialexamid){
	
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Hamilton> hamilton = new ArrayList<Hamilton>();
	
    try{
		resultSet = statement.executeQuery("select * from tbl_hamiltonchiropractic");
		
		while(resultSet.next()){
			
			hamilton.add( new Hamilton(resultSet.getString("initialexamid"),resultSet.getString("patient_id"),resultSet.getString("valgus_varusl"),resultSet.getString("pat_ballr"),resultSet.getString("pat_balll"),resultSet.getString("drawerr"),resultSet.getString("drawerl"),resultSet.getString("val_varusr"),resultSet.getString("val_varusl"),resultSet.getString("apleysr"),resultSet.getString("apleysl"),resultSet.getString("ankdrawr"),resultSet.getString("ankdrawl"),resultSet.getString("ankthomr"),resultSet.getString("ankthoml"),resultSet.getString("anktinelr"),resultSet.getString("anktinell"),resultSet.getString("ankstrunkr"),resultSet.getString("ankstrunkl"),resultSet.getString("ankhomanr"),resultSet.getString("ankhomanl"),resultSet.getString("ankclaudicr"),resultSet.getString("ankclaudicl")));
		}
    }catch(Exception e){
    	releaseResultSet(resultSet);
    	releaseStatement(statement);
    	releaseConnection(con);
    }finally{
    	releaseResultSet(resultSet);
    	releaseStatement(statement);
    	releaseConnection(con);	    	
    }
    return hamilton;
	
	
}


public List<Hamiltonchiropractic> getHamiltonchiropracticpatientid(String patientid){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Hamiltonchiropractic> hamiltonchiropractic = new ArrayList<Hamiltonchiropractic>();
	System.out.println("select * from tbl_hamiltonchiropractic where patient_id='"+patientid+"'");
    try{
		resultSet = statement.executeQuery("select * from tbl_hamiltonchiropractic where patient_id='"+patientid+"'");
		while(resultSet.next()){
			hamiltonchiropractic.add( new Hamiltonchiropractic(resultSet.getString("initialexamid"),resultSet.getString("patient_id"),resultSet.getString("hacheck"),resultSet.getString("ha"),resultSet.getString("haa"), resultSet.getString("neckcheck"),resultSet.getString("neck"),resultSet.getString("necka"),resultSet.getString("mbcheck"),resultSet.getString("mb"),resultSet.getString("mba"),resultSet.getString("ribscheck"),resultSet.getString("ribs"),resultSet.getString("ribsa"),resultSet.getString("shouldercheck"),resultSet.getString("shoulder"),resultSet.getString("shouldera"),resultSet.getString("elbowcheck"), resultSet.getString("elbow"),resultSet.getString("elbowa"), resultSet.getString("handcheck"), resultSet.getString("hand"),resultSet.getString("handa"), resultSet.getString("wristcheck"), resultSet.getString("wrist"),resultSet.getString("wrista"), resultSet.getString("lbpcheck"), resultSet.getString("lbp"), resultSet.getString("lbpa"), resultSet.getString("hipcheck"), resultSet.getString("hip"),resultSet.getString("hipa"), resultSet.getString("legcheck"),resultSet.getString("leg"),resultSet.getString("lega"), resultSet.getString("kneecheck"), resultSet.getString("knee"),resultSet.getString("kneea"), resultSet.getString("footcheck"), resultSet.getString("foot"),resultSet.getString("foota"), resultSet.getString("anklecheck"), resultSet.getString("ankle"),resultSet.getString("anklea"), resultSet.getString("suddenly"),resultSet.getString("gradually"), resultSet.getString("hours"), resultSet.getString("days"), resultSet.getString("date"), resultSet.getString("reason"),resultSet.getString("acute"),resultSet.getString("subacute"), resultSet.getString("chronic"), resultSet.getString("lyingdown"),resultSet.getString("sitting"),resultSet.getString("standing"),resultSet.getString("bending"),resultSet.getString("rest"),resultSet.getString("otherb"), resultSet.getString("othere"), resultSet.getString("ice"),resultSet.getString("heat"),resultSet.getString("massage"),resultSet.getString("aspirin"),resultSet.getString("otherdone"), resultSet.getString("otherit"), resultSet.getString("bendingworse"),resultSet.getString("twisting"),resultSet.getString("lifting"),resultSet.getString("walking"),resultSet.getString("activity"),resultSet.getString("otherworse"), resultSet.getString("otherfeel"), resultSet.getString("sharp"),resultSet.getString("severe"),resultSet.getString("dull"),resultSet.getString("burning"),resultSet.getString("nagging"),resultSet.getString("throbbing"),resultSet.getString("numb"), resultSet.getString("tingling"),resultSet.getString("stiff"),resultSet.getString("stabbing"),resultSet.getString("cramping"),resultSet.getString("otherdescribe"),resultSet.getString("otherpain"), resultSet.getString("constant"),resultSet.getString("intermittent"), resultSet.getString("local"),resultSet.getString("diffuse"),resultSet.getString("radiates"),resultSet.getString("otherradiates"), resultSet.getString("mild"),resultSet.getString("moderate"), resultSet.getString("severepain"),resultSet.getString("crippling"),resultSet.getString("am"), resultSet.getString("pm"),resultSet.getString("othertime"),resultSet.getString("otherdn"), resultSet.getString("better"),resultSet.getString("same"), resultSet.getString("worse"),resultSet.getString("yes"),resultSet.getString("no"),resultSet.getString("day"), resultSet.getString("work"), resultSet.getString("sleep"),resultSet.getString("otherdaily"), resultSet.getString("othercondition"), resultSet.getString("sameass"), resultSet.getString("improved"),resultSet.getString("worseass"),resultSet.getString("plateau"),resultSet.getString("preinjury"),resultSet.getString("slight"),resultSet.getString("moderatly"),resultSet.getString("great"),resultSet.getString("chiropractic"),resultSet.getString("ems"), resultSet.getString("iceplan"),resultSet.getString("heatplan"),resultSet.getString("nimmo"),resultSet.getString("ultrasound"),resultSet.getString("manualtraction"),resultSet.getString("massageplan"),resultSet.getString("neuromuscular"),resultSet.getString("stretching"),resultSet.getString("strengthening"),resultSet.getString("remobilization"),resultSet.getString("improvesubluxations"),resultSet.getString("rehab"),resultSet.getString("modificat"),resultSet.getString("care"),resultSet.getString("refer"), resultSet.getString("decreasepain"),resultSet.getString("decreasespam"),resultSet.getString("increaserom"),resultSet.getString("improveadl"),resultSet.getString("fullactivity"),resultSet.getString("returntowork"),resultSet.getString("renewsports"), resultSet.getString("jacksonsr"),resultSet.getString("jacksonsl"),resultSet.getString("jacksonslo"), resultSet.getString("foramin_compr"),resultSet.getString("foramin_compl"),resultSet.getString("foramin_complo"), resultSet.getString("shoulder_deprr"),resultSet.getString("shoulder_deprl"),resultSet.getString("shoulder_deprlo"), resultSet.getString("georgesr"),resultSet.getString("georgesl"),resultSet.getString("georgeslo"), resultSet.getString("odonor"),resultSet.getString("odonol"), resultSet.getString("bakody_signr"),resultSet.getString("bakody_signl"),resultSet.getString("bakody_signlo"), resultSet.getString("distraction_testr"),resultSet.getString("distraction_testl"), resultSet.getString("valsalvar"),resultSet.getString("valsalval"),resultSet.getString("valsalvalo"), resultSet.getString("spinal_percuss"), resultSet.getString("gripdynamomright"), resultSet.getString("gripdynamomleft"), resultSet.getString("adsonsr"),resultSet.getString("adsonsl"),resultSet.getString("adsonslo"), resultSet.getString("rustsignr"),resultSet.getString("rustsignl"),resultSet.getString("rustsignlo"), resultSet.getString("spinal_percusst"), resultSet.getString("adams_testr"),resultSet.getString("adams_testl"), resultSet.getString("sheppal_signr"),resultSet.getString("sheppal_signl"), resultSet.getString("soto_hallr"),resultSet.getString("soto_halll"), resultSet.getString("compression_testr"),resultSet.getString("compression_testl"),resultSet.getString("compression_testlo"), resultSet.getString("antalgiar"),resultSet.getString("antalgial"), resultSet.getString("spinal_percusslr"), resultSet.getString("valsalvalr"),resultSet.getString("valsalvall"), resultSet.getString("minors_signr"),resultSet.getString("minors_signl"), resultSet.getString("braggards_testr"),resultSet.getString("braggards_testl"), resultSet.getString("slrr"),resultSet.getString("slrl"), resultSet.getString("wlrr"),resultSet.getString("wlrl"), resultSet.getString("hooversr"),resultSet.getString("hooversl"), resultSet.getString("dbl_leg_raiser"),resultSet.getString("dbl_leg_raisel"), resultSet.getString("long_leg_testr"),resultSet.getString("long_leg_testl"), resultSet.getString("anvil_testr"),resultSet.getString("anvil_testl"), resultSet.getString("thomasr"),resultSet.getString("thomasl"), resultSet.getString("milgrams_testr"),resultSet.getString("milgrams_testl"), resultSet.getString("obersr"),resultSet.getString("obersl"), resultSet.getString("illiaccompr"),resultSet.getString("illiaccompl"), resultSet.getString("yeomansr"), resultSet.getString("yeomansl"),resultSet.getString("allis_signr"),resultSet.getString("allis_signl"), resultSet.getString("dugasr"),resultSet.getString("dugasl"), resultSet.getString("supraspinatusr"),resultSet.getString("supraspinatusl"), resultSet.getString("codmansr"),resultSet.getString("codmansl"), resultSet.getString("speeds_testr"), resultSet.getString("speeds_testl"),resultSet.getString("yergasonsr"),resultSet.getString("yergasonsl"), resultSet.getString("tinelser"),resultSet.getString("tinelsel"), resultSet.getString("lingaminstabr"),resultSet.getString("lingaminstabl"), resultSet.getString("golfers_elbowr"),resultSet.getString("golfers_elbowl"), resultSet.getString("tennis_elbowr"),resultSet.getString("tennis_elbowl"), resultSet.getString("tinelsr"),resultSet.getString("tinelsl"), resultSet.getString("phalensr"),resultSet.getString("phalensl"), resultSet.getString("finkelsteins_testr"),resultSet.getString("finkelsteins_testl"), resultSet.getString("braceletr"),resultSet.getString("braceletl"), resultSet.getString("allensr"),resultSet.getString("allensl"), resultSet.getString("valgus_varusr"),resultSet.getString("valgus_varusl"), resultSet.getString("pat_ballr"),resultSet.getString("pat_balll"), resultSet.getString("drawerr"),resultSet.getString("drawerl"), resultSet.getString("val_varusr"),resultSet.getString("val_varusl"), resultSet.getString("apleysr")));
			}
    }catch(Exception e){
    	System.out.println("error"+e);
    	releaseResultSet(resultSet);
    	releaseStatement(statement);
    	releaseConnection(con);
    }finally{
    	releaseResultSet(resultSet);
    	releaseStatement(statement);
    	releaseConnection(con);	    	
    }
    return hamiltonchiropractic;
	
}

public List<Hamiltonchiropractic> getHamiltonchiropractic(String initialexamid){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Hamiltonchiropractic> hamiltonchiropractic = new ArrayList<Hamiltonchiropractic>();
    try{
		resultSet = statement.executeQuery("select * from tbl_hamiltonchiropractic where initialexamid='"+initialexamid+"'");
		while(resultSet.next()){
			hamiltonchiropractic.add( new Hamiltonchiropractic(resultSet.getString("initialexamid"),resultSet.getString("patient_id"),resultSet.getString("hacheck"),resultSet.getString("ha"),resultSet.getString("haa"), resultSet.getString("neckcheck"),resultSet.getString("neck"),resultSet.getString("necka"),resultSet.getString("mbcheck"),resultSet.getString("mb"),resultSet.getString("mba"),resultSet.getString("ribscheck"),resultSet.getString("ribs"),resultSet.getString("ribsa"),resultSet.getString("shouldercheck"),resultSet.getString("shoulder"),resultSet.getString("shouldera"),resultSet.getString("elbowcheck"), resultSet.getString("elbow"), resultSet.getString("elbowa"), resultSet.getString("handcheck"), resultSet.getString("hand"),resultSet.getString("handa"), resultSet.getString("wristcheck"), resultSet.getString("wrist"),resultSet.getString("wrista"), resultSet.getString("lbpcheck"), resultSet.getString("lbp"),resultSet.getString("lbpa"), resultSet.getString("hipcheck"), resultSet.getString("hip"),resultSet.getString("hipa"), resultSet.getString("legcheck"),resultSet.getString("leg"),resultSet.getString("lega"), resultSet.getString("kneecheck"), resultSet.getString("knee"),resultSet.getString("kneea"), resultSet.getString("footcheck"), resultSet.getString("foot"),resultSet.getString("foota"), resultSet.getString("anklecheck"), resultSet.getString("ankle"), resultSet.getString("anklea"), resultSet.getString("suddenly"),resultSet.getString("gradually"), resultSet.getString("hours"), resultSet.getString("days"), resultSet.getString("date"), resultSet.getString("reason"),resultSet.getString("acute"),resultSet.getString("subacute"), resultSet.getString("chronic"), resultSet.getString("lyingdown"),resultSet.getString("sitting"),resultSet.getString("standing"),resultSet.getString("bending"),resultSet.getString("rest"),resultSet.getString("otherb"), resultSet.getString("othere"), resultSet.getString("ice"),resultSet.getString("heat"),resultSet.getString("massage"),resultSet.getString("aspirin"),resultSet.getString("otherdone"), resultSet.getString("otherit"), resultSet.getString("bendingworse"),resultSet.getString("twisting"),resultSet.getString("lifting"),resultSet.getString("walking"),resultSet.getString("activity"),resultSet.getString("otherworse"), resultSet.getString("otherfeel"), resultSet.getString("sharp"),resultSet.getString("severe"),resultSet.getString("dull"),resultSet.getString("burning"),resultSet.getString("nagging"),resultSet.getString("throbbing"),resultSet.getString("numb"), resultSet.getString("tingling"),resultSet.getString("stiff"),resultSet.getString("stabbing"),resultSet.getString("cramping"),resultSet.getString("otherdescribe"),resultSet.getString("otherpain"), resultSet.getString("constant"),resultSet.getString("intermittent"), resultSet.getString("local"),resultSet.getString("diffuse"),resultSet.getString("radiates"),resultSet.getString("otherradiates"), resultSet.getString("mild"),resultSet.getString("moderate"), resultSet.getString("severepain"),resultSet.getString("crippling"),resultSet.getString("am"), resultSet.getString("pm"),resultSet.getString("othertime"),resultSet.getString("otherdn"), resultSet.getString("better"),resultSet.getString("same"), resultSet.getString("worse"),resultSet.getString("yes"),resultSet.getString("no"),resultSet.getString("day"), resultSet.getString("work"), resultSet.getString("sleep"),resultSet.getString("otherdaily"), resultSet.getString("othercondition"), resultSet.getString("sameass"), resultSet.getString("improved"),resultSet.getString("worseass"),resultSet.getString("plateau"),resultSet.getString("preinjury"),resultSet.getString("slight"),resultSet.getString("moderatly"),resultSet.getString("great"),resultSet.getString("chiropractic"),resultSet.getString("ems"), resultSet.getString("iceplan"),resultSet.getString("heatplan"),resultSet.getString("nimmo"),resultSet.getString("ultrasound"),resultSet.getString("manualtraction"),resultSet.getString("massageplan"),resultSet.getString("neuromuscular"),resultSet.getString("stretching"),resultSet.getString("strengthening"),resultSet.getString("remobilization"),resultSet.getString("improvesubluxations"),resultSet.getString("rehab"),resultSet.getString("modificat"),resultSet.getString("care"),resultSet.getString("refer"), resultSet.getString("decreasepain"),resultSet.getString("decreasespam"),resultSet.getString("increaserom"),resultSet.getString("improveadl"),resultSet.getString("fullactivity"),resultSet.getString("returntowork"),resultSet.getString("renewsports"), resultSet.getString("jacksonsr"),resultSet.getString("jacksonsl"),resultSet.getString("jacksonslo"), resultSet.getString("foramin_compr"),resultSet.getString("foramin_compl"),resultSet.getString("foramin_complo"), resultSet.getString("shoulder_deprr"),resultSet.getString("shoulder_deprl"),resultSet.getString("shoulder_deprlo"), resultSet.getString("georgesr"),resultSet.getString("georgesl"),resultSet.getString("georgeslo"), resultSet.getString("odonor"),resultSet.getString("odonol"), resultSet.getString("bakody_signr"),resultSet.getString("bakody_signl"),resultSet.getString("bakody_signlo"), resultSet.getString("distraction_testr"),resultSet.getString("distraction_testl"), resultSet.getString("valsalvar"),resultSet.getString("valsalval"),resultSet.getString("valsalvalo"), resultSet.getString("spinal_percuss"), resultSet.getString("gripdynamomright"), resultSet.getString("gripdynamomleft"), resultSet.getString("adsonsr"),resultSet.getString("adsonsl"),resultSet.getString("adsonslo"), resultSet.getString("rustsignr"),resultSet.getString("rustsignl"),resultSet.getString("rustsignlo"), resultSet.getString("spinal_percusst"), resultSet.getString("adams_testr"),resultSet.getString("adams_testl"), resultSet.getString("sheppal_signr"),resultSet.getString("sheppal_signl"), resultSet.getString("soto_hallr"),resultSet.getString("soto_halll"), resultSet.getString("compression_testr"),resultSet.getString("compression_testl"),resultSet.getString("compression_testlo"), resultSet.getString("antalgiar"),resultSet.getString("antalgial"), resultSet.getString("spinal_percusslr"), resultSet.getString("valsalvalr"),resultSet.getString("valsalvall"), resultSet.getString("minors_signr"),resultSet.getString("minors_signl"), resultSet.getString("braggards_testr"),resultSet.getString("braggards_testl"), resultSet.getString("slrr"),resultSet.getString("slrl"), resultSet.getString("wlrr"),resultSet.getString("wlrl"), resultSet.getString("hooversr"),resultSet.getString("hooversl"), resultSet.getString("dbl_leg_raiser"),resultSet.getString("dbl_leg_raisel"), resultSet.getString("long_leg_testr"),resultSet.getString("long_leg_testl"), resultSet.getString("anvil_testr"),resultSet.getString("anvil_testl"), resultSet.getString("thomasr"),resultSet.getString("thomasl"), resultSet.getString("milgrams_testr"),resultSet.getString("milgrams_testl"), resultSet.getString("obersr"),resultSet.getString("obersl"), resultSet.getString("illiaccompr"),resultSet.getString("illiaccompl"), resultSet.getString("yeomansr"), resultSet.getString("yeomansl"),resultSet.getString("allis_signr"),resultSet.getString("allis_signl"), resultSet.getString("dugasr"),resultSet.getString("dugasl"), resultSet.getString("supraspinatusr"),resultSet.getString("supraspinatusl"), resultSet.getString("codmansr"),resultSet.getString("codmansl"), resultSet.getString("speeds_testr"), resultSet.getString("speeds_testl"),resultSet.getString("yergasonsr"),resultSet.getString("yergasonsl"), resultSet.getString("tinelser"),resultSet.getString("tinelsel"), resultSet.getString("lingaminstabr"),resultSet.getString("lingaminstabl"), resultSet.getString("golfers_elbowr"),resultSet.getString("golfers_elbowl"), resultSet.getString("tennis_elbowr"),resultSet.getString("tennis_elbowl"), resultSet.getString("tinelsr"),resultSet.getString("tinelsl"), resultSet.getString("phalensr"),resultSet.getString("phalensl"), resultSet.getString("finkelsteins_testr"),resultSet.getString("finkelsteins_testl"), resultSet.getString("braceletr"),resultSet.getString("braceletl"), resultSet.getString("allensr"),resultSet.getString("allensl"), resultSet.getString("valgus_varusr"),resultSet.getString("valgus_varusl"), resultSet.getString("pat_ballr"),resultSet.getString("pat_balll"), resultSet.getString("drawerr"),resultSet.getString("drawerl"), resultSet.getString("val_varusr"),resultSet.getString("val_varusl"), resultSet.getString("apleysr")));
			}
    }catch(Exception e){
    	releaseResultSet(resultSet);
    	releaseStatement(statement);
    	releaseConnection(con);
    }finally{
    	releaseResultSet(resultSet);
    	releaseStatement(statement);
    	releaseConnection(con);	    	
    }
    return hamiltonchiropractic;
	
}
public int updatehamiltonchiropractic(Hamiltonchiropractic hamiltonchiropractic,String initialexamid)
{
	Connection con = null;
	Statement statement = null;
	int flag=0;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
    try{
    	 DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    	 Date date = new Date();
    	 //System.out.println(dateFormat.format(date));
    	String cmd="UPDATE tbl_hamiltonchiropractic SET patient_id='"+hamiltonchiropractic.getPatient_id()+"',hacheck='"+hamiltonchiropractic.getHacheck()+"',ha='"+hamiltonchiropractic.getHa()+"',haa='"+hamiltonchiropractic.getHaa()+"',neckcheck='"+hamiltonchiropractic.getNeckcheck()+"',neck='"+hamiltonchiropractic.getNeck()+"',necka='"+hamiltonchiropractic.getNecka()+"',mbcheck='"+hamiltonchiropractic.getMbcheck()+"',mb='"+hamiltonchiropractic.getMb()+"',mba='"+hamiltonchiropractic.getMba()+"',ribscheck='"+hamiltonchiropractic.getRibscheck()+"',ribs='"+hamiltonchiropractic.getRibs()+"',ribsa='"+hamiltonchiropractic.getRibsa()+"',shouldercheck='"+hamiltonchiropractic.getShouldercheck()+"',shoulder='"+hamiltonchiropractic.getShoulder()+"',shouldera='"+hamiltonchiropractic.getShouldera()+"',elbowcheck='"+hamiltonchiropractic.getElbowcheck()+"',elbow='"+hamiltonchiropractic.getElbow()+"',elbowa='"+hamiltonchiropractic.getElbowa()+"',handcheck='"+hamiltonchiropractic.getHandcheck()+"',hand='"+hamiltonchiropractic.getHand()+"',handa='"+hamiltonchiropractic.getHanda()+"',wristcheck='"+hamiltonchiropractic.getWristcheck()+"',wrist='"+hamiltonchiropractic.getWrist()+"',wrista='"+hamiltonchiropractic.getWrista()+"',lbpcheck='"+hamiltonchiropractic.getLbpcheck()+"',lbp='"+hamiltonchiropractic.getLbp()+"',lbpa='"+hamiltonchiropractic.getLbpa()+"',hipcheck='"+hamiltonchiropractic.getHipcheck()+"',hip='"+hamiltonchiropractic.getHip()+"',hipa='"+hamiltonchiropractic.getHipa()+"',legcheck='"+hamiltonchiropractic.getLegcheck()+"',leg='"+hamiltonchiropractic.getLeg()+"',lega='"+hamiltonchiropractic.getLega()+"',kneecheck='"+hamiltonchiropractic.getKneecheck()+"',knee='"+hamiltonchiropractic.getKnee()+"',kneea='"+hamiltonchiropractic.getKneea()+"',footcheck='"+hamiltonchiropractic.getFootcheck()+"',foot='"+hamiltonchiropractic.getFoot()+"',foota='"+hamiltonchiropractic.getFoota()+"',anklecheck='"+hamiltonchiropractic.getAnklecheck()+"',ankle='"+hamiltonchiropractic.getAnkle()+"',anklea='"+hamiltonchiropractic.getAnklea()+"',suddenly='"+hamiltonchiropractic.getSuddenly()+"',gradually='"+hamiltonchiropractic.getGradually()+"',hours='"+hamiltonchiropractic.getHours()+"',days='"+hamiltonchiropractic.getDays()+"',date='"+hamiltonchiropractic.getDate()+"',reason='"+hamiltonchiropractic.getReason()+"',acute='"+hamiltonchiropractic.getAcute()+"',subacute='"+hamiltonchiropractic.getSubacute()+"',chronic='"+hamiltonchiropractic.getChronic()+"',lyingdown='"+hamiltonchiropractic.getLyingdown()+"',sitting='"+hamiltonchiropractic.getSitting()+"',standing='"+hamiltonchiropractic.getStanding()+"',bending='"+hamiltonchiropractic.getBending()+"',rest='"+hamiltonchiropractic.getRest()+"',otherb='"+hamiltonchiropractic.getOtherb()+"',othere='"+hamiltonchiropractic.getOthere()+"',ice='"+hamiltonchiropractic.getIce()+"',heat='"+hamiltonchiropractic.getHeat()+"',massage='"+hamiltonchiropractic.getMassage()+"',aspirin='"+hamiltonchiropractic.getAspirin()+"',otherdone='"+hamiltonchiropractic.getOtherdone()+"',otherit='"+hamiltonchiropractic.getOtherit()+"',bendingworse='"+hamiltonchiropractic.getBendingworse()+"',twisting='"+hamiltonchiropractic.getTwisting()+"',lifting='"+hamiltonchiropractic.getLifting()+"',walking='"+hamiltonchiropractic.getWalking()+"',activity='"+hamiltonchiropractic.getActivity()+"',otherworse='"+hamiltonchiropractic.getOtherworse()+"',otherfeel='"+hamiltonchiropractic.getOtherfeel()+"',sharp='"+hamiltonchiropractic.getSharp()+"',severe='"+hamiltonchiropractic.getSevere()+"',dull='"+hamiltonchiropractic.getDull()+"',burning='"+hamiltonchiropractic.getBurning()+"',nagging='"+hamiltonchiropractic.getNagging()+"',throbbing='"+hamiltonchiropractic.getThrobbing()+"',numb='"+hamiltonchiropractic.getNumb()+"',tingling='"+hamiltonchiropractic.getTingling()+"',stiff='"+hamiltonchiropractic.getStiff()+"',stabbing='"+hamiltonchiropractic.getStabbing()+"',cramping='"+hamiltonchiropractic.getCramping()+"',otherdescribe='"+hamiltonchiropractic.getOtherdescribe()+"',otherpain='"+hamiltonchiropractic.getOtherpain()+"',constant='"+hamiltonchiropractic.getConstant()+"',intermittent='"+hamiltonchiropractic.getIntermittent()+"',local='"+hamiltonchiropractic.getLocal()+"',diffuse='"+hamiltonchiropractic.getDiffuse()+"',radiates='"+hamiltonchiropractic.getRadiates()+"',otherradiates='"+hamiltonchiropractic.getOtherradiates()+"',mild='"+hamiltonchiropractic.getMild()+"',moderate='"+hamiltonchiropractic.getModerate()+"',severepain='"+hamiltonchiropractic.getSeverepain()+"',crippling='"+hamiltonchiropractic.getCrippling()+"',am='"+hamiltonchiropractic.getAm()+"',pm='"+hamiltonchiropractic.getPm()+"',othertime='"+hamiltonchiropractic.getOthertime()+"',otherdn='"+hamiltonchiropractic.getOtherdn()+"',better='"+hamiltonchiropractic.getBetter()+"',same='"+hamiltonchiropractic.getSame()+"',worse='"+hamiltonchiropractic.getWorse()+"',yes='"+hamiltonchiropractic.getYes()+"',no='"+hamiltonchiropractic.getNo()+"',day='"+hamiltonchiropractic.getDay()+"',work='"+hamiltonchiropractic.getWork()+"',sleep='"+hamiltonchiropractic.getSleep()+"',otherdaily='"+hamiltonchiropractic.getOtherdaily()+"',othercondition='"+hamiltonchiropractic.getOthercondition()+"',sameass='"+hamiltonchiropractic.getSameass()+"',improved='"+hamiltonchiropractic.getImproved()+"',worseass='"+hamiltonchiropractic.getWorseass()+"',plateau='"+hamiltonchiropractic.getPlateau()+"',preinjury='"+hamiltonchiropractic.getPreinjury()+"',slight='"+hamiltonchiropractic.getSlight()+"',moderatly='"+hamiltonchiropractic.getModeratly()+"',great='"+hamiltonchiropractic.getGreat()+"',chiropractic='"+hamiltonchiropractic.getChiropractic()+"',ems='"+hamiltonchiropractic.getEms()+"',iceplan='"+hamiltonchiropractic.getIceplan()+"',heatplan='"+hamiltonchiropractic.getHeatplan()+"',nimmo='"+hamiltonchiropractic.getNimmo()+"',ultrasound='"+hamiltonchiropractic.getUltrasound()+"',manualtraction='"+hamiltonchiropractic.getManualtraction()+"',massageplan='"+hamiltonchiropractic.getMassageplan()+"',neuromuscular='"+hamiltonchiropractic.getNeuromuscular()+"',stretching='"+hamiltonchiropractic.getStretching()+"',strengthening='"+hamiltonchiropractic.getStrengthening()+"',remobilization='"+hamiltonchiropractic.getRemobilization()+"',improvesubluxations='"+hamiltonchiropractic.getImprovesubluxations()+"',rehab='"+hamiltonchiropractic.getRehab()+"',modificat='"+hamiltonchiropractic.getModificat()+"',care='"+hamiltonchiropractic.getCare()+"',refer='"+hamiltonchiropractic.getRefer()+"',decreasepain='"+hamiltonchiropractic.getDecreasepain()+"',decreasespam='"+hamiltonchiropractic.getDecreasespam()+"',increaserom='"+hamiltonchiropractic.getIncreaserom()+"',improveadl='"+hamiltonchiropractic.getImproveadl()+"',fullactivity='"+hamiltonchiropractic.getFullactivity()+"',returntowork='"+hamiltonchiropractic.getReturntowork()+"',renewsports='"+hamiltonchiropractic.getRenewsports()+"',jacksonsr='"+hamiltonchiropractic.getJacksonsr()+"',jacksonsl='"+hamiltonchiropractic.getJacksonsl()+"',jacksonslo='"+hamiltonchiropractic.getJacksonslo()+"',foramin_compr='"+hamiltonchiropractic.getForamin_compr()+"',foramin_compl='"+hamiltonchiropractic.getForamin_compl()+"',foramin_complo='"+hamiltonchiropractic.getForamin_complo()+"',shoulder_deprr='"+hamiltonchiropractic.getShoulder_deprr()+"',shoulder_deprl='"+hamiltonchiropractic.getShoulder_deprl()+"',shoulder_deprlo='"+hamiltonchiropractic.getShoulder_deprlo()+"',georgesr='"+hamiltonchiropractic.getGeorgesr()+"',georgesl='"+hamiltonchiropractic.getGeorgesl()+"',georgeslo='"+hamiltonchiropractic.getGeorgeslo()+"',odonor='"+hamiltonchiropractic.getOdonor()+"',odonol='"+hamiltonchiropractic.getOdonol()+"',bakody_signr='"+hamiltonchiropractic.getBakody_signr()+"',bakody_signl='"+hamiltonchiropractic.getBakody_signl()+"',bakody_signlo='"+hamiltonchiropractic.getBakody_signlo()+"',distraction_testr='"+hamiltonchiropractic.getDistraction_testr()+"',distraction_testl='"+hamiltonchiropractic.getDistraction_testl()+"',valsalvar='"+hamiltonchiropractic.getValsalvar()+"',valsalval='"+hamiltonchiropractic.getValsalval()+"',valsalvalo='"+hamiltonchiropractic.getValsalvalo()+"',spinal_percuss='"+hamiltonchiropractic.getSpinal_percuss()+"',gripdynamomright='"+hamiltonchiropractic.getGripdynamomright()+"',gripdynamomleft='"+hamiltonchiropractic.getGripdynamomleft()+"',adsonsr='"+hamiltonchiropractic.getAdsonsr()+"',adsonsl='"+hamiltonchiropractic.getAdsonsl()+"',adsonslo='"+hamiltonchiropractic.getAdsonslo()+"',rustsignr='"+hamiltonchiropractic.getRustsignr()+"',rustsignl='"+hamiltonchiropractic.getRustsignl()+"',rustsignlo='"+hamiltonchiropractic.getRustsignlo()+"',spinal_percusst='"+hamiltonchiropractic.getSpinal_percusst()+"',adams_testr='"+hamiltonchiropractic.getAdams_testr()+"',adams_testl='"+hamiltonchiropractic.getAdams_testl()+"',sheppal_signr='"+hamiltonchiropractic.getSheppal_signr()+"',sheppal_signl='"+hamiltonchiropractic.getSheppal_signl()+"',soto_hallr='"+hamiltonchiropractic.getSoto_hallr()+"',soto_halll='"+hamiltonchiropractic.getSoto_halll()+"',compression_testr='"+hamiltonchiropractic.getCompression_testr()+"',compression_testl='"+hamiltonchiropractic.getCompression_testl()+"',compression_testlo='"+hamiltonchiropractic.getCompression_testlo()+"',antalgiar='"+hamiltonchiropractic.getAntalgiar()+"',antalgial='"+hamiltonchiropractic.getAntalgial()+"',spinal_percusslr='"+hamiltonchiropractic.getSpinal_percusslr()+"',valsalvalr='"+hamiltonchiropractic.getValsalvalr()+"',valsalvall='"+hamiltonchiropractic.getValsalvall()+"',minors_signr='"+hamiltonchiropractic.getMinors_signr()+"',minors_signl='"+hamiltonchiropractic.getMinors_signl()+"',braggards_testr='"+hamiltonchiropractic.getBraggards_testr()+"',braggards_testl='"+hamiltonchiropractic.getBraggards_testl()+"',slrr='"+hamiltonchiropractic.getSlrr()+"',slrl='"+hamiltonchiropractic.getSlrl()+"',wlrr='"+hamiltonchiropractic.getWlrr()+"',wlrl='"+hamiltonchiropractic.getWlrl()+"',hooversr='"+hamiltonchiropractic.getHooversr()+"',hooversl='"+hamiltonchiropractic.getHooversl()+"',dbl_leg_raiser='"+hamiltonchiropractic.getDbl_leg_raiser()+"',dbl_leg_raisel='"+hamiltonchiropractic.getDbl_leg_raisel()+"',long_leg_testr='"+hamiltonchiropractic.getLong_leg_testr()+"',long_leg_testl='"+hamiltonchiropractic.getLong_leg_testl()+"',anvil_testr='"+hamiltonchiropractic.getAnvil_testr()+"',anvil_testl='"+hamiltonchiropractic.getAnvil_testl()+"',thomasr='"+hamiltonchiropractic.getThomasr()+"',thomasl='"+hamiltonchiropractic.getThomasl()+"',milgrams_testr='"+hamiltonchiropractic.getMilgrams_testr()+"',milgrams_testl='"+hamiltonchiropractic.getMilgrams_testl()+"',obersr='"+hamiltonchiropractic.getObersr()+"',obersl='"+hamiltonchiropractic.getObersl()+"',illiaccompr='"+hamiltonchiropractic.getIlliaccompr()+"',illiaccompl='"+hamiltonchiropractic.getIlliaccompl()+"',yeomansr='"+hamiltonchiropractic.getYeomansr()+"',yeomansl='"+hamiltonchiropractic.getYeomansl()+"',allis_signr='"+hamiltonchiropractic.getAllis_signr()+"',allis_signr='"+hamiltonchiropractic.getAllis_signr()+"',allis_signl='"+hamiltonchiropractic.getAllis_signl()+"',dugasr='"+hamiltonchiropractic.getDugasr()+"',dugasl='"+hamiltonchiropractic.getDugasl()+"',supraspinatusr='"+hamiltonchiropractic.getSupraspinatusr()+"',supraspinatusl='"+hamiltonchiropractic.getSupraspinatusl()+"',codmansr='"+hamiltonchiropractic.getCodmansr()+"',codmansl='"+hamiltonchiropractic.getCodmansl()+"',speeds_testr='"+hamiltonchiropractic.getSpeeds_testr()+"',speeds_testl='"+hamiltonchiropractic.getSpeeds_testl()+"',yergasonsr='"+hamiltonchiropractic.getYergasonsr()+"',yergasonsl='"+hamiltonchiropractic.getYergasonsl()+"',tinelser='"+hamiltonchiropractic.getTinelser()+"',tinelsel='"+hamiltonchiropractic.getTinelsel()+"',lingaminstabr='"+hamiltonchiropractic.getLingaminstabr()+"',lingaminstabl='"+hamiltonchiropractic.getLingaminstabl()+"',golfers_elbowr='"+hamiltonchiropractic.getGolfers_elbowr()+"',golfers_elbowl='"+hamiltonchiropractic.getGolfers_elbowl()+"',tennis_elbowr='"+hamiltonchiropractic.getTennis_elbowr()+"',tennis_elbowl='"+hamiltonchiropractic.getTennis_elbowl()+"',tinelsr='"+hamiltonchiropractic.getTinelsr()+"',tinelsl='"+hamiltonchiropractic.getTinelsl()+"',phalensr='"+hamiltonchiropractic.getPhalensr()+"',phalensl='"+hamiltonchiropractic.getPhalensl()+"',finkelsteins_testr='"+hamiltonchiropractic.getFinkelsteins_testr()+"',finkelsteins_testl='"+hamiltonchiropractic.getFinkelsteins_testl()+"',braceletr='"+hamiltonchiropractic.getBraceletr()+"',braceletl='"+hamiltonchiropractic.getBraceletl()+"',allensr='"+hamiltonchiropractic.getAllensr()+"',allensl='"+hamiltonchiropractic.getAllensl()+"',valgus_varusr='"+hamiltonchiropractic.getValgus_varusr()+"' WHERE initialexamid='"+initialexamid+"';";
    			
    			/*String Desc="Update hamiltonchiropractic "+hamiltonchiropractic.getPname();*/
    	System.out.println(cmd);
    	statement.execute(cmd);
    	flag=1;
    }
    	 catch(Exception e){
 	    	System.out.println(e.toString());
 	    	releaseStatement(statement);
 	    	releaseConnection(con);
 	    	flag=0;
 	    	//return 0;
 	    }finally{
 	     	releaseStatement(statement);
 	    	releaseConnection(con);	    
 	    	
 	    }
 	    if(flag==1)
     		return 1;
     	else
     		return 0;
 	    
	
}	

public int updatehamilton(Hamilton hamilton,String initialexamid)
{
	Connection con=null;
	Statement stmt=null;
	int flag=0;
	try
	{
		con=dataSource.getConnection();
		stmt=con.createStatement();
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	try
	{
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
   	    Date date = new Date();
   	    String cmd="update tbl_hamiltonchiropractic SET valgus_varusl='"+hamilton.getValgus_varusl()+"',pat_ballr='"+hamilton.getPat_ballr()+"',pat_balll='"+hamilton.getPat_balll()+"',drawerr='"+hamilton.getDrawerr()+"',drawerl='"+hamilton.getDrawerl()+"',val_varusr='"+hamilton.getVal_varusr()+"',val_varusl='"+hamilton.getVal_varusl()+"',apleysr='"+hamilton.getApleysr()+"',apleysl='"+hamilton.getApleysl()+"',ankdrawr='"+hamilton.getAnkdrawr()+"',ankdrawl='"+hamilton.getAnkdrawl()+"',ankthomr='"+hamilton.getAnkthomr()+"',ankthoml='"+hamilton.getAnkthoml()+"',anktinelr='"+hamilton.getAnktinelr()+"',anktinell='"+hamilton.getAnktinell()+"',ankstrunkr='"+hamilton.getAnkstrunkr()+"',ankstrunkl='"+hamilton.getAnkstrunkl()+"',ankhomanr='"+hamilton.getAnkhomanr()+"',ankhomanl='"+hamilton.getAnkhomanl()+"',ankclaudicr='"+hamilton.getAnkclaudicr()+"',ankclaudicl='"+hamilton.getAnkclaudicl()+"' WHERE initialexamid='"+initialexamid+"';";
		System.out.println(cmd);
		stmt.execute(cmd);
		flag=1;
	}
	
	catch(Exception e1){
	    	System.out.println(e1.toString());
	    	releaseStatement(stmt);
	    	releaseConnection(con);
	    	flag=0;
	    	//return 0;
	    }finally{
	     	releaseStatement(stmt);
	    	releaseConnection(con);	    
	    	
	    }
	    if(flag==1)
 		return 1;
 	else
 		return 0;
	
	
	
	
	
}

public int deletehamiltonchiropractic(String initialexamid){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	int flag=0;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	try{
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    	 Date date = new Date();
    	 String cmd_getpatient_pname="select * from tbl_hamiltonchiropractic where initialexamid='"+initialexamid+"'";
    	 String Desc="Delete report ";
    	 resultSet=statement.executeQuery(cmd_getpatient_pname);
			
			if(resultSet.next())
				Desc=Desc+resultSet.getString(1);
			statement.execute("delete from tbl_hamiltonchiropractic where initialexamid='"+initialexamid+"'");
			
			flag=1;
			
	    }catch(Exception e){
	    	System.out.println(e.toString());
	    	flag=0;
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);
	    }finally{
	    	
	    	releaseResultSet(resultSet);
	    	releaseStatement(statement);
	    	releaseConnection(con);	    	
	    }
	   		if(flag==1)
	   			return 1;
	   		else
	   			return 0;
	}
	
public List<Hamiltonchiropractic> getlimitedhamiltonchiropractic(int page) {
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	
	
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	List<Hamiltonchiropractic> hamiltonchiropractic = new ArrayList<Hamiltonchiropractic>();
	try {

		String cmd;
		int offset = 5 * (page - 1);
		int limit = 5;
		
			
				cmd = "select * from tbl_hamiltonchiropractic order by initialexamid asc limit " + offset + ","+ limit+"" ;

		resultSet = statement.executeQuery(cmd);
		while (resultSet.next()) {
			hamiltonchiropractic.add( new Hamiltonchiropractic(resultSet.getString("initialexamid"),resultSet.getString("patient_id"),resultSet.getString("hacheck"),resultSet.getString("ha"),resultSet.getString("haa"), resultSet.getString("neckcheck"),resultSet.getString("neck"),resultSet.getString("necka"),resultSet.getString("mbcheck"),resultSet.getString("mb"),resultSet.getString("mba"),resultSet.getString("ribscheck"),resultSet.getString("ribs"),resultSet.getString("ribsa"),resultSet.getString("shouldercheck"),resultSet.getString("shoulder"),resultSet.getString("shouldera"),resultSet.getString("elbowcheck"), resultSet.getString("elbow"),resultSet.getString("elbowa"), resultSet.getString("handcheck"), resultSet.getString("hand"),resultSet.getString("handa"), resultSet.getString("wristcheck"), resultSet.getString("wrist"),resultSet.getString("wrista"), resultSet.getString("lbpcheck"), resultSet.getString("lbp"),resultSet.getString("lbpa"), resultSet.getString("hipcheck"), resultSet.getString("hip"),resultSet.getString("hipa"), resultSet.getString("legcheck"),resultSet.getString("leg"),resultSet.getString("lega"), resultSet.getString("kneecheck"), resultSet.getString("knee"),resultSet.getString("kneea"), resultSet.getString("footcheck"), resultSet.getString("foot"), resultSet.getString("foota"), resultSet.getString("anklecheck"), resultSet.getString("ankle"),resultSet.getString("anklea"), resultSet.getString("suddenly"),resultSet.getString("gradually"), resultSet.getString("hours"), resultSet.getString("days"), resultSet.getString("date"), resultSet.getString("reason"),resultSet.getString("acute"),resultSet.getString("subacute"), resultSet.getString("chronic"), resultSet.getString("lyingdown"),resultSet.getString("sitting"),resultSet.getString("standing"),resultSet.getString("bending"),resultSet.getString("rest"),resultSet.getString("otherb"), resultSet.getString("othere"), resultSet.getString("ice"),resultSet.getString("heat"),resultSet.getString("massage"),resultSet.getString("aspirin"),resultSet.getString("otherdone"), resultSet.getString("otherit"), resultSet.getString("bendingworse"),resultSet.getString("twisting"),resultSet.getString("lifting"),resultSet.getString("walking"),resultSet.getString("activity"),resultSet.getString("otherworse"), resultSet.getString("otherfeel"), resultSet.getString("sharp"),resultSet.getString("severe"),resultSet.getString("dull"),resultSet.getString("burning"),resultSet.getString("nagging"),resultSet.getString("throbbing"),resultSet.getString("numb"), resultSet.getString("tingling"),resultSet.getString("stiff"),resultSet.getString("stabbing"),resultSet.getString("cramping"),resultSet.getString("otherdescribe"),resultSet.getString("otherpain"), resultSet.getString("constant"),resultSet.getString("intermittent"), resultSet.getString("local"),resultSet.getString("diffuse"),resultSet.getString("radiates"),resultSet.getString("otherradiates"), resultSet.getString("mild"),resultSet.getString("moderate"), resultSet.getString("severepain"),resultSet.getString("crippling"),resultSet.getString("am"), resultSet.getString("pm"),resultSet.getString("othertime"),resultSet.getString("otherdn"), resultSet.getString("better"),resultSet.getString("same"), resultSet.getString("worse"),resultSet.getString("yes"),resultSet.getString("no"),resultSet.getString("day"), resultSet.getString("work"), resultSet.getString("sleep"),resultSet.getString("otherdaily"), resultSet.getString("othercondition"), resultSet.getString("sameass"), resultSet.getString("improved"),resultSet.getString("worseass"),resultSet.getString("plateau"),resultSet.getString("preinjury"),resultSet.getString("slight"),resultSet.getString("moderatly"),resultSet.getString("great"),resultSet.getString("chiropractic"),resultSet.getString("ems"), resultSet.getString("iceplan"),resultSet.getString("heatplan"),resultSet.getString("nimmo"),resultSet.getString("ultrasound"),resultSet.getString("manualtraction"),resultSet.getString("massageplan"),resultSet.getString("neuromuscular"),resultSet.getString("stretching"),resultSet.getString("strengthening"),resultSet.getString("remobilization"),resultSet.getString("improvesubluxations"),resultSet.getString("rehab"),resultSet.getString("modificat"),resultSet.getString("care"),resultSet.getString("refer"), resultSet.getString("decreasepain"),resultSet.getString("decreasespam"),resultSet.getString("increaserom"),resultSet.getString("improveadl"),resultSet.getString("fullactivity"),resultSet.getString("returntowork"),resultSet.getString("renewsports"), resultSet.getString("jacksonsr"),resultSet.getString("jacksonsl"),resultSet.getString("jacksonslo"), resultSet.getString("foramin_compr"),resultSet.getString("foramin_compl"),resultSet.getString("foramin_complo"), resultSet.getString("shoulder_deprr"),resultSet.getString("shoulder_deprl"),resultSet.getString("shoulder_deprlo"), resultSet.getString("georgesr"),resultSet.getString("georgesl"),resultSet.getString("georgeslo"), resultSet.getString("odonor"),resultSet.getString("odonol"), resultSet.getString("bakody_signr"),resultSet.getString("bakody_signl"),resultSet.getString("bakody_signlo"), resultSet.getString("distraction_testr"),resultSet.getString("distraction_testl"), resultSet.getString("valsalvar"),resultSet.getString("valsalval"),resultSet.getString("valsalvalo"), resultSet.getString("spinal_percuss"), resultSet.getString("gripdynamomright"), resultSet.getString("gripdynamomleft"), resultSet.getString("adsonsr"),resultSet.getString("adsonsl"),resultSet.getString("adsonslo"), resultSet.getString("rustsignr"),resultSet.getString("rustsignl"),resultSet.getString("rustsignlo"), resultSet.getString("spinal_percusst"), resultSet.getString("adams_testr"),resultSet.getString("adams_testl"), resultSet.getString("sheppal_signr"),resultSet.getString("sheppal_signl"), resultSet.getString("soto_hallr"),resultSet.getString("soto_halll"), resultSet.getString("compression_testr"),resultSet.getString("compression_testl"),resultSet.getString("compression_testlo"), resultSet.getString("antalgiar"),resultSet.getString("antalgial"), resultSet.getString("spinal_percusslr"), resultSet.getString("valsalvalr"),resultSet.getString("valsalvall"), resultSet.getString("minors_signr"),resultSet.getString("minors_signl"), resultSet.getString("braggards_testr"),resultSet.getString("braggards_testl"), resultSet.getString("slrr"),resultSet.getString("slrl"), resultSet.getString("wlrr"),resultSet.getString("wlrl"), resultSet.getString("hooversr"),resultSet.getString("hooversl"), resultSet.getString("dbl_leg_raiser"),resultSet.getString("dbl_leg_raisel"), resultSet.getString("long_leg_testr"),resultSet.getString("long_leg_testl"), resultSet.getString("anvil_testr"),resultSet.getString("anvil_testl"), resultSet.getString("thomasr"),resultSet.getString("thomasl"), resultSet.getString("milgrams_testr"),resultSet.getString("milgrams_testl"), resultSet.getString("obersr"),resultSet.getString("obersl"), resultSet.getString("illiaccompr"),resultSet.getString("illiaccompl"), resultSet.getString("yeomansr"), resultSet.getString("yeomansl"),resultSet.getString("allis_signr"),resultSet.getString("allis_signl"), resultSet.getString("dugasr"),resultSet.getString("dugasl"), resultSet.getString("supraspinatusr"),resultSet.getString("supraspinatusl"), resultSet.getString("codmansr"),resultSet.getString("codmansl"), resultSet.getString("speeds_testr"), resultSet.getString("speeds_testl"),resultSet.getString("yergasonsr"),resultSet.getString("yergasonsl"), resultSet.getString("tinelser"),resultSet.getString("tinelsel"), resultSet.getString("lingaminstabr"),resultSet.getString("lingaminstabl"), resultSet.getString("golfers_elbowr"),resultSet.getString("golfers_elbowl"), resultSet.getString("tennis_elbowr"),resultSet.getString("tennis_elbowl"), resultSet.getString("tinelsr"),resultSet.getString("tinelsl"), resultSet.getString("phalensr"),resultSet.getString("phalensl"), resultSet.getString("finkelsteins_testr"),resultSet.getString("finkelsteins_testl"), resultSet.getString("braceletr"),resultSet.getString("braceletl"), resultSet.getString("allensr"),resultSet.getString("allensl"), resultSet.getString("valgus_varusr"),resultSet.getString("valgus_varusl"), resultSet.getString("pat_ballr"),resultSet.getString("pat_balll"), resultSet.getString("drawerr"),resultSet.getString("drawerl"), resultSet.getString("val_varusr"),resultSet.getString("val_varusl"), resultSet.getString("apleysr")));				
		}
	} catch (Exception e) {
		/*logger.info(e.toString());*/
		releaseResultSet(resultSet);
		releaseStatement(statement);
		releaseConnection(con);
	} finally {
		releaseResultSet(resultSet);
		releaseStatement(statement);
		releaseConnection(con);
	}
	return hamiltonchiropractic;

}
public int getnoofhamiltonchiropractic() {
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	int noofRecords = 0;
	
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	List<Hamiltonchiropractic> hamiltonchiropractic = new ArrayList<Hamiltonchiropractic>();
	try {

		String cmd;
		
				cmd = "select count(*) as noofrecords from tbl_hamiltonchiropractic";
				System.out.println("command"+cmd);			
		resultSet = statement.executeQuery(cmd);
		if (resultSet.next())
			noofRecords = resultSet.getInt("noofrecords");

	} catch (Exception e) {
		releaseResultSet(resultSet);
		releaseStatement(statement);
		releaseConnection(con);
	} finally {
		releaseResultSet(resultSet);
		releaseStatement(statement);
		releaseConnection(con);
	}
	return noofRecords;

}


public void releaseConnection(Connection con){
	try{if(con != null)
		con.close();
	}catch(Exception e){}
}
public void releaseResultSet(ResultSet rs){
	try{if(rs != null)
		rs.close();
}catch(Exception e){}
}
public void releaseStatement(Statement stmt){
	try{if(stmt != null)
		stmt.close();
}catch(Exception e){}
}



}
