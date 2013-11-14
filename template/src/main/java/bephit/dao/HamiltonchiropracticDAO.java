package bephit.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.sql.DataSource;

import bephit.model.Hamiltonchiropractic;
 



public class HamiltonchiropracticDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public int setHamiltonchiropractic(Hamiltonchiropractic hamiltonchiropractic)
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
	    	 /*String cmd="INSERT INTO `tbl_hamiltonchiropractic`(`hacheck`,`ha`,`neckcheck`,`neck`,`mbcheck`,`mb`,`ribscheck`,`ribs`,`shouldercheck`,`shoulder`,`elbowcheck`,`elbow`,`handcheck`,`hand`,`wristcheck`,`wrist`,`lbpcheck`,`lbp`,`hipcheck`,`hip`,`legcheck`,`leg`,`kneecheck`,`knee`,`footcheck`,`foot`,`anklecheck`,`ankle`,`suddenly`,`gradually`,`hours`,`days`,`date`,`reason`,`acute`,`subacute`,`chronic`,`lyingdown`,`sitting`,`standing`,`bending`,`rest`,`otherb`,`othere`,`ice`,`heat`,`massage`,`aspirin`,`otherdone`,`otherit`,`bendingworse`,`twisting`,`lifting`,`walking`,`activity`,`otherworse`,`otherfeel`,`sharp`,`severe`,`dull`,`burning`,`nagging`,`throbbing`,`numb`,`tingling`,`stiff`,`stabbing`,`cramping`,`otherdescribe`,`otherpain`,`constant`,`intermittent`,`local`,`diffuse`,`radiates`,`otherradiates`,`mild`,`moderate`,`severepain`,`crippling`,`am`,`pm`,`othertime`,`otherdn`,`better`,`same`,`worse`,`yes`,`no`,`day`,`work`,`sleep`,`otherdaily`,`othercondition`,`sameass`,`improved`,`worseass`,`plateau`,`preinjury`,`slight`,`moderatly`,`great`,`chiropractic`,`ems`,`iceplan`,`heatplan`,`nimmo`,`ultrasound`,`manualtraction`,`massageplan`,`neuromuscular`,`stretching`,`strengthening`,`remobilization`,`rehab`,`modificat`,`release`,`refer`,`decreasepain`,`decreasespam`,`increaserom`,`improveadl`,`improvesubluxations`,`fullactivity`,`returntowork`,`renewsports`,`jacksonsr`,`jacksonsl`,`jacksonslo`,`foramin_compr`,`foramin_compl`,`foramin_complo`,`shoulder_deprr`,`shoulder_deprl`,`shoulder_deprlo`,`georgesr`,`georgesl`,`georgeslo`,`odonor`,`odonol`,`odonolo`,`bakody_signr`,`bakody_signl`,`bakody_signlo`,`distraction_testr`,`distraction_testl`,`distraction_testlo`,`valsalvar`,`valsalval`,`valsalvalo`,`spinal_percuss`,`gripdynamomright`,`gripdynamomleft`,`adsonsr`,`adsonsl`,`adsonslo`,`rustsignr`,`rustsignl`,`rustsignlo`,`spinal_percusst`,`adams_testr`,`adams_testl`,`sheppal_signr`,`sheppal_signl`,`soto_hallr`,`soto_halll`,`compression_testr`,`compression_testl`,`compression_testlo`,`antalgiar`,`antalgial`,`spinal_percusslr`,`spinal_percussll`,`valsalvalr`,`valsalvall`,`minors_signr`,`minors_signl`,`braggards_testr`,`braggards_testl`,`slrr`,`slrl`,`wlrr`,`wlrl`,`hooversr`,`hooversl`,`dbl_leg_raiser`,`dbl_leg_raisel`,`long_leg_testr`,`long_leg_testl`,`anvil_testr`,`anvil_testl`,`thomasr`,`thomasl`,`milgrams_testr`,`milgrams_testl`,`obersr`,`obersl`,`illiaccompr`,`illiaccompl`,`yeomansr`,`yeomansl`,`allis_signr`,`allis_signl`,`dugasr`,`dugasl`,`supraspinatusr`,`supraspinatusl`,`codmansr`,`codmansl`,`speeds_testr`,`speeds_testl`,`yergasonsr`,`yergasonsl`,`tinelser`,`tinelsel`,`lingaminstabr`,`lingaminstabl`,`golfers_elbowr`,`golfers_elbowl`,`tennis_elbowr`,`tennis_elbowl`,`tinelsr`,`tinelsl`,`phalensr`,`phalensl`,`finkelsteins_testr`,`finkelsteins_testl`,`braceletr`,`braceletl`,`allensr`,`allensl`,`valgus_varusr`,`valgus_varusl`,`pat_ballr`,`pat_balll`,`drawerr`,`drawerl`,`val_varusr`,`val_varusl`,`apleysr`,`apleysl`,`drawerar`,`draweral`,`thompsonsr`,`thompsonsl`,`tinelsar`,`tinelsal`,`strunskysr`,`strunskysl`,`homansr`,`homansl`,`claudication_testr`,`claudication_testl`) VALUES ('"+hamiltonchiropractic.getHacheck()+"','"+hamiltonchiropractic.getHa()+"','"+hamiltonchiropractic.getNeckcheck()+"','"+hamiltonchiropractic.getNeck()+"','"+hamiltonchiropractic.getMbcheck()+"','"+hamiltonchiropractic.getMb()+"','"+hamiltonchiropractic.getRibscheck()+"','"+hamiltonchiropractic.getRibs()+"','"+hamiltonchiropractic.getShouldercheck()+"','"+hamiltonchiropractic.getShoulder()+"','"+hamiltonchiropractic.getElbowcheck()+"','"+hamiltonchiropractic.getElbow()+"','"+hamiltonchiropractic.getHandcheck()+"','"+hamiltonchiropractic.getHand()+"','"+hamiltonchiropractic.getWristcheck()+"','"+hamiltonchiropractic.getWrist()+"','"+hamiltonchiropractic.getLbpcheck()+"','"+hamiltonchiropractic.getLbp()+"','"+hamiltonchiropractic.getHipcheck()+"','"+hamiltonchiropractic.getHip()+"','"+hamiltonchiropractic.getLegcheck()+"','"+hamiltonchiropractic.getLeg()+"','"+hamiltonchiropractic.getKneecheck()+"','"+hamiltonchiropractic.getKnee()+"','"+hamiltonchiropractic.getFootcheck()+"','"+hamiltonchiropractic.getFoot()+"','"+hamiltonchiropractic.getAnklecheck()+"','"+hamiltonchiropractic.getAnkle()+"','"+hamiltonchiropractic.getSuddenly()+"','"+hamiltonchiropractic.getGradually()+"','"+hamiltonchiropractic.getHours()+"','"+hamiltonchiropractic.getDays()+"','"+hamiltonchiropractic.getDate()+"','"+hamiltonchiropractic.getReason()+"','"+hamiltonchiropractic.getAcute()+"','"+hamiltonchiropractic.getSubacute()+"','"+hamiltonchiropractic.getChronic()+"','"+hamiltonchiropractic.getLyingdown()+"','"+hamiltonchiropractic.getSitting()+"','"+hamiltonchiropractic.getStanding()+"','"+hamiltonchiropractic.getBending()+"','"+hamiltonchiropractic.getRest()+"','"+hamiltonchiropractic.getOtherb()+"','"+hamiltonchiropractic.getOthere()+"','"+hamiltonchiropractic.getIce()+"','"+hamiltonchiropractic.getHeat()+"','"+hamiltonchiropractic.getMassage()+"','"+hamiltonchiropractic.getAspirin()+"','"+hamiltonchiropractic.getOtherdone()+"','"+hamiltonchiropractic.getOtherit()+"','"+hamiltonchiropractic.getBendingworse()+"','"+hamiltonchiropractic.getTwisting()+"','"+hamiltonchiropractic.getLifting()+"','"+hamiltonchiropractic.getWalking()+"','"+hamiltonchiropractic.getActivity()+"','"+hamiltonchiropractic.getOtherworse()+"','"+hamiltonchiropractic.getOtherfeel()+"','"+hamiltonchiropractic.getSharp()+"','"+hamiltonchiropractic.getSevere()+"','"+hamiltonchiropractic.getDull()+"','"+hamiltonchiropractic.getBurning()+"','"+hamiltonchiropractic.getNagging()+"','"+hamiltonchiropractic.getThrobbing()+"','"+hamiltonchiropractic.getNumb()+"','"+hamiltonchiropractic.getTingling()+"','"+hamiltonchiropractic.getStiff()+"','"+hamiltonchiropractic.getStabbing()+"','"+hamiltonchiropractic.getCramping()+"','"+hamiltonchiropractic.getOtherdescribe()+"','"+hamiltonchiropractic.getOtherpain()+"','"+hamiltonchiropractic.getConstant()+"','"+hamiltonchiropractic.getIntermittent()+"','"+hamiltonchiropractic.getLocal()+"','"+hamiltonchiropractic.getDiffuse()+"','"+hamiltonchiropractic.getRadiates()+"','"+hamiltonchiropractic.getOtherradiates()+"','"+hamiltonchiropractic.getMild()+"','"+hamiltonchiropractic.getModerate()+"','"+hamiltonchiropractic.getSeverepain()+"','"+hamiltonchiropractic.getCrippling()+"','"+hamiltonchiropractic.getAm()+"','"+hamiltonchiropractic.getPm()+"','"+hamiltonchiropractic.getOthertime()+"','"+hamiltonchiropractic.getOtherdn()+"','"+hamiltonchiropractic.getBetter()+"','"+hamiltonchiropractic.getSame()+"','"+hamiltonchiropractic.getWorse()+"','"+hamiltonchiropractic.getYes()+"','"+hamiltonchiropractic.getNo()+"','"+hamiltonchiropractic.getDay()+"','"+hamiltonchiropractic.getWork()+"','"+hamiltonchiropractic.getSleep()+"','"+hamiltonchiropractic.getOtherdaily()+"','"+hamiltonchiropractic.getOthercondition()+"','"+hamiltonchiropractic.getSameass()+"','"+hamiltonchiropractic.getImproved()+"','"+hamiltonchiropractic.getWorseass()+"','"+hamiltonchiropractic.getPlateau()+"','"+hamiltonchiropractic.getPreinjury()+"','"+hamiltonchiropractic.getSlight()+"','"+hamiltonchiropractic.getModeratly()+"','"+hamiltonchiropractic.getGreat()+"','"+hamiltonchiropractic.getChiropractic()+"','"+hamiltonchiropractic.getEms()+"','"+hamiltonchiropractic.getIceplan()+"','"+hamiltonchiropractic.getHeatplan()+"','"+hamiltonchiropractic.getNimmo()+"','"+hamiltonchiropractic.getUltrasound()+"','"+hamiltonchiropractic.getManualtraction()+"','"+hamiltonchiropractic.getMassageplan()+"','"+hamiltonchiropractic.getNeuromuscular()+"','"+hamiltonchiropractic.getStretching()+"','"+hamiltonchiropractic.getStrengthening()+"','"+hamiltonchiropractic.getRemobilization()+"','"+hamiltonchiropractic.getRehab()+"','"+hamiltonchiropractic.getModificat()+"','"+hamiltonchiropractic.getRelease()+"','"+hamiltonchiropractic.getRefer()+"','"+hamiltonchiropractic.getDecreasepain()+"','"+hamiltonchiropractic.getDecreasespam()+"','"+hamiltonchiropractic.getIncreaserom()+"','"+hamiltonchiropractic.getImproveadl()+"','"+hamiltonchiropractic.getImprovesubluxations()+"','"+hamiltonchiropractic.getFullactivity()+"','"+hamiltonchiropractic.getReturntowork()+"','"+hamiltonchiropractic.getRenewsports()+"','"+hamiltonchiropractic.getJacksonsr()+"','"+hamiltonchiropractic.getJacksonsl()+"','"+hamiltonchiropractic.getJacksonslo()+"','"+hamiltonchiropractic.getForamin_compr()+"','"+hamiltonchiropractic.getForamin_compl()+"','"+hamiltonchiropractic.getForamin_complo()+"','"+hamiltonchiropractic.getShoulder_deprr()+"','"+hamiltonchiropractic.getShoulder_deprl()+"','"+hamiltonchiropractic.getShoulder_deprlo()+"','"+hamiltonchiropractic.getGeorgesr()+"','"+hamiltonchiropractic.getGeorgesl()+"','"+hamiltonchiropractic.getGeorgeslo()+"','"+hamiltonchiropractic.getOdonor()+"','"+hamiltonchiropractic.getOdonol()+"','"+hamiltonchiropractic.getOdonolo()+"','"+hamiltonchiropractic.getBakody_signr()+"','"+hamiltonchiropractic.getBakody_signl()+"','"+hamiltonchiropractic.getBakody_signlo()+"','"+hamiltonchiropractic.getDistraction_testr()+"','"+hamiltonchiropractic.getDistraction_testl()+"','"+hamiltonchiropractic.getDistraction_testlo()+"','"+hamiltonchiropractic.getValsalvalr()+"','"+hamiltonchiropractic.getValsalval()+"','"+hamiltonchiropractic.getValsalvalo()+"','"+hamiltonchiropractic.getSpinal_percuss()+"','"+hamiltonchiropractic.getGripdynamomright()+"','"+hamiltonchiropractic.getGripdynamomleft()+"','"+hamiltonchiropractic.getAdsonsr()+"','"+hamiltonchiropractic.getAdsonsl()+"','"+hamiltonchiropractic.getAdsonslo()+"','"+hamiltonchiropractic.getRustsignr()+"','"+hamiltonchiropractic.getRustsignl()+"','"+hamiltonchiropractic.getRustsignlo()+"','"+hamiltonchiropractic.getSpinal_percusst()+"','"+hamiltonchiropractic.getAdams_testr()+"','"+hamiltonchiropractic.getAdams_testl()+"','"+hamiltonchiropractic.getSheppal_signr()+"','"+hamiltonchiropractic.getSheppal_signl()+"','"+hamiltonchiropractic.getSoto_hallr()+"','"+hamiltonchiropractic.getSoto_halll()+"','"+hamiltonchiropractic.getCompression_testr()+"','"+hamiltonchiropractic.getCompression_testl()+"','"+hamiltonchiropractic.getCompression_testlo()+"','"+hamiltonchiropractic.getAntalgiar()+"','"+hamiltonchiropractic.getAntalgial()+"','"+hamiltonchiropractic.getSpinal_percusslr()+"','"+hamiltonchiropractic.getSpinal_percussll()+"','"+hamiltonchiropractic.getValsalvalr()+"','"+hamiltonchiropractic.getValsalvall()+"','"+hamiltonchiropractic.getMinors_signr()+"','"+hamiltonchiropractic.getMinors_signl()+"','"+hamiltonchiropractic.getBraggards_testr()+"','"+hamiltonchiropractic.getBraggards_testl()+"','"+hamiltonchiropractic.getSlrr()+"','"+hamiltonchiropractic.getSlrl()+"','"+hamiltonchiropractic.getWlrr()+"','"+hamiltonchiropractic.getWlrl()+"','"+hamiltonchiropractic.getHooversr()+"','"+hamiltonchiropractic.getHooversl()+"','"+hamiltonchiropractic.getDbl_leg_raiser()+"','"+hamiltonchiropractic.getDbl_leg_raisel()+"','"+hamiltonchiropractic.getLong_leg_testr()+"','"+hamiltonchiropractic.getLong_leg_testl()+"','"+hamiltonchiropractic.getAnvil_testr()+"','"+hamiltonchiropractic.getAnvil_testl()+"','"+hamiltonchiropractic.getThomasr()+"','"+hamiltonchiropractic.getThomasl()+"','"+hamiltonchiropractic.getMilgrams_testr()+"','"+hamiltonchiropractic.getThomasl()+"','"+hamiltonchiropractic.getObersr()+"','"+hamiltonchiropractic.getObersl()+"','"+hamiltonchiropractic.getIlliaccompr()+"','"+hamiltonchiropractic.getIlliaccompl()+"','"+hamiltonchiropractic.getYeomansr()+"','"+hamiltonchiropractic.getYeomansl()+"','"+hamiltonchiropractic.getAllis_signr()+"','"+hamiltonchiropractic.getAllis_signl()+"','"+hamiltonchiropractic.getDugasr()+"','"+hamiltonchiropractic.getDugasl()+"','"+hamiltonchiropractic.getSupraspinatusr()+"','"+hamiltonchiropractic.getCodmansr()+"','"+hamiltonchiropractic.getCodmansl()+"','"+hamiltonchiropractic.getSpeeds_testr()+"','"+hamiltonchiropractic.getSpeeds_testl()+"','"+hamiltonchiropractic.getYergasonsr()+"','"+hamiltonchiropractic.getYergasonsl()+"','"+hamiltonchiropractic.getTinelser()+"','"+hamiltonchiropractic.getTinelsel()+"','"+hamiltonchiropractic.getLingaminstabr()+"','"+hamiltonchiropractic.getLingaminstabl()+"','"+hamiltonchiropractic.getGolfers_elbowr()+"','"+hamiltonchiropractic.getGolfers_elbowl()+"','"+hamiltonchiropractic.getTennis_elbowr()+"','"+hamiltonchiropractic.getGolfers_elbowl()+"','"+hamiltonchiropractic.getTinelsr()+"','"+hamiltonchiropractic.getTinelsel()+"','"+hamiltonchiropractic.getPhalensr()+"','"+hamiltonchiropractic.getPhalensl()+"','"+hamiltonchiropractic.getFinkelsteins_testr()+"','"+hamiltonchiropractic.getFinkelsteins_testl()+"','"+hamiltonchiropractic.getBraceletr()+"','"+hamiltonchiropractic.getBraceletl()+"','"+hamiltonchiropractic.getAllensr()+"','"+hamiltonchiropractic.getAllensl()+"','"+hamiltonchiropractic.getValgus_varusr()+"','"+hamiltonchiropractic.getValgus_varusl()+"','"+hamiltonchiropractic.getPat_ballr()+"','"+hamiltonchiropractic.getPat_balll()+"','"+hamiltonchiropractic.getDrawerr()+"','"+hamiltonchiropractic.getDrawerl()+"','"+hamiltonchiropractic.getVal_varusr()+"','"+hamiltonchiropractic.getVal_varusl()+"','"+hamiltonchiropractic.getApleysr()+"','"+hamiltonchiropractic.getApleysl()+"','"+hamiltonchiropractic.getDrawerar()+"','"+hamiltonchiropractic.getDraweral()+"','"+hamiltonchiropractic.getThompsonsr()+"','"+hamiltonchiropractic.getThompsonsl()+"','"+hamiltonchiropractic.getTinelsar()+"','"+hamiltonchiropractic.getTinelsal()+"','"+hamiltonchiropractic.getStrunskysr()+"','"+hamiltonchiropractic.getStrunskysl()+"','"+hamiltonchiropractic.getHomansr()+"','"+hamiltonchiropractic.getHomansl()+"','"+hamiltonchiropractic.getClaudication_testr()+"','"+hamiltonchiropractic.getClaudication_testl()+"')";*/ 
	         String cmd="INSERT INTO `tbl_hamiltonchiropractic`(`hacheck`,`ha`,`neckcheck`,`neck`,`mbcheck`,`mb`,`ribscheck`,`ribs`,`shouldercheck`,`shoulder`,`elbowcheck`,`elbow`,`handcheck`,`hand`,`wristcheck`,`wrist`,`lbpcheck`,`lbp`,`hipcheck`,`hip`,`legcheck`,`leg`,`kneecheck`,`knee`,`footcheck`,`foot`,`anklecheck`,`ankle`,`suddenly`,`gradually`,`hours`,`days`,`date`,`reason`,`acute`,`subacute`,`chronic`,`lyingdown`,`sitting`,`standing`,`bending`,`rest`,`otherb`,`othere`,`ice`,`heat`,`massage`,`aspirin`,`otherdone`,`otherit`,`bendingworse`,`twisting`,`lifting`,`walking`,`activity`,`otherworse`,`otherfeel`,`sharp`,`severe`,`dull`,`burning`,`nagging`,`throbbing`,`numb`,`tingling`,`stiff`,`stabbing`,`cramping`,`otherdescribe`,`otherpain`,`constant`,`intermittent`,`local`,`diffuse`,`radiates`,`otherradiates`,`mild`,`moderate`,`severepain`,`crippling`,`am`,`pm`,`othertime`,`otherdn`,`better`,`same`,`worse`,`yes`,`no`,`day`,`work`,`sleep`,`otherdaily`,`othercondition`,`sameass`,`improved`,`worseass`,`plateau`,`preinjury`,`slight`,`moderatly`,`great`,`chiropractic`,`ems`,`iceplan`,`heatplan`,`nimmo`,`ultrasound`,`manualtraction`,`massageplan`,`neuromuscular`,`stretching`,`strengthening`,`remobilization`,`rehab`,`modificat`,`release`,`refer`,`decreasepain`,`decreasespam`,`increaserom`,`improveadl`,`improvesubluxations`,`fullactivity`,`returntowork`,`renewsports`,`jacksonsr`,`jacksonsl`,`jacksonslo`,`foramin_compr`,`foramin_compl`,`foramin_complo`,`shoulder_deprr`,`shoulder_deprl`,`shoulder_deprlo`,`georgesr`,`georgesl`,`georgeslo`,`odonor`,`odonol`,`odonolo`,`bakody_signr`,`bakody_signl`,`bakody_signlo`,`distraction_testr`,`distraction_testl`,`distraction_testlo`,`valsalvar`,`valsalval`,`valsalvalo`,`spinal_percuss`,`gripdynamomright`,`gripdynamomleft`,`adsonsr`,`adsonsl`,`adsonslo`,`rustsignr`,`rustsignl`,`rustsignlo`,`spinal_percusst`,`adams_testr`,`adams_testl`,`sheppal_signr`,`sheppal_signl`,`soto_hallr`,`soto_halll`,`compression_testr`,`compression_testl`,`compression_testlo`,`antalgiar`,`antalgial`,`spinal_percusslr`,`spinal_percussll`,`valsalvalr`,`valsalvall`,`minors_signr`,`minors_signl`,`braggards_testr`,`braggards_testl`,`slrr`,`slrl`,`wlrr`,`wlrl`,`hooversr`,`hooversl`,`dbl_leg_raiser`,`dbl_leg_raisel`,`long_leg_testr`,`long_leg_testl`,`anvil_testr`,`anvil_testl`,`thomasr`,`thomasl`,`milgrams_testr`,`milgrams_testl`,`obersr`,`obersl`,`illiaccompr`,`illiaccompl`,`yeomansr`,`yeomansl`,`allis_signr`,`allis_signl`,`dugasr`,`dugasl`,`supraspinatusr`,`supraspinatusl`,`codmansr`,`codmansl`,`speeds_testr`,`speeds_testl`,`yergasonsr`,`yergasonsl`,`tinelser`,`tinelsel`,`lingaminstabr`,`lingaminstabl`,`golfers_elbowr`,`golfers_elbowl`,`tennis_elbowr`,`tennis_elbowl`,`tinelsr`,`tinelsl`,`phalensr`,`phalensl`,`finkelsteins_testr`,`finkelsteins_testl`,`braceletr`,`braceletl`,`allensr`,`allensl`,`valgus_varusr`,`valgus_varusl`,`pat_ballr`,`pat_balll`,`drawerr`,`drawerl`,`val_varusr`,`val_varusl`,`apleysr`,`apleysl`,`drawerar`,`draweral`,`thompsonsr`,`thompsonsl`,`tinelsar`,`tinelsal`,`strunskysr`,`strunskysl`,`homansr`,`homansl`,`claudication_testr`,`claudication_testl`)VALUES ('"+hamiltonchiropractic.getHacheck()+"','"+hamiltonchiropractic.getHa()+"','"+hamiltonchiropractic.getNeckcheck()+"','"+hamiltonchiropractic.getNeck()+"','"+hamiltonchiropractic.getMbcheck()+"','"+hamiltonchiropractic.getMb()+"','"+hamiltonchiropractic.getRibscheck()+"','"+hamiltonchiropractic.getRibs()+"','"+hamiltonchiropractic.getShouldercheck()+"','"+hamiltonchiropractic.getShoulder()+"','"+hamiltonchiropractic.getElbowcheck()+"','"+hamiltonchiropractic.getElbow()+"','"+hamiltonchiropractic.getHandcheck()+"','"+hamiltonchiropractic.getHand()+"','"+hamiltonchiropractic.getWristcheck()+"','"+hamiltonchiropractic.getWrist()+"','"+hamiltonchiropractic.getLbpcheck()+"','"+hamiltonchiropractic.getLbp()+"','"+hamiltonchiropractic.getHipcheck()+"','"+hamiltonchiropractic.getHip()+"','"+hamiltonchiropractic.getLegcheck()+"','"+hamiltonchiropractic.getLeg()+"','"+hamiltonchiropractic.getKneecheck()+"','"+hamiltonchiropractic.getKnee()+"','"+hamiltonchiropractic.getFootcheck()+"','"+hamiltonchiropractic.getFoot()+"','"+hamiltonchiropractic.getAnklecheck()+"','"+hamiltonchiropractic.getAnkle()+"','"+hamiltonchiropractic.getSuddenly()+"','"+hamiltonchiropractic.getGradually()+"','"+hamiltonchiropractic.getHours()+"','"+hamiltonchiropractic.getDays()+"','"+hamiltonchiropractic.getDate()+"','"+hamiltonchiropractic.getReason()+"','"+hamiltonchiropractic.getAcute()+"','"+hamiltonchiropractic.getSubacute()+"','"+hamiltonchiropractic.getChronic()+"','"+hamiltonchiropractic.getLyingdown()+"','"+hamiltonchiropractic.getSitting()+"','"+hamiltonchiropractic.getStanding()+"','"+hamiltonchiropractic.getBending()+"','"+hamiltonchiropractic.getRest()+"','"+hamiltonchiropractic.getOtherb()+"','"+hamiltonchiropractic.getOthere()+"','"+hamiltonchiropractic.getIce()+"','"+hamiltonchiropractic.getHeat()+"','"+hamiltonchiropractic.getMassage()+"','"+hamiltonchiropractic.getAspirin()+"','"+hamiltonchiropractic.getOtherdone()+"','"+hamiltonchiropractic.getOtherit()+"','"+hamiltonchiropractic.getBendingworse()+"','"+hamiltonchiropractic.getTwisting()+"','"+hamiltonchiropractic.getLifting()+"','"+hamiltonchiropractic.getWalking()+"','"+hamiltonchiropractic.getActivity()+"','"+hamiltonchiropractic.getOtherworse()+"','"+hamiltonchiropractic.getOtherfeel()+"','"+hamiltonchiropractic.getSharp()+"','"+hamiltonchiropractic.getSevere()+"','"+hamiltonchiropractic.getDull()+"','"+hamiltonchiropractic.getBurning()+"','"+hamiltonchiropractic.getNagging()+"','"+hamiltonchiropractic.getThrobbing()+"','"+hamiltonchiropractic.getNumb()+"','"+hamiltonchiropractic.getTingling()+"','"+hamiltonchiropractic.getStiff()+"','"+hamiltonchiropractic.getStabbing()+"','"+hamiltonchiropractic.getCramping()+"','"+hamiltonchiropractic.getOtherdescribe()+"','"+hamiltonchiropractic.getOtherpain()+"','"+hamiltonchiropractic.getConstant()+"','"+hamiltonchiropractic.getIntermittent()+"','"+hamiltonchiropractic.getLocal()+"','"+hamiltonchiropractic.getDiffuse()+"','"+hamiltonchiropractic.getRadiates()+"','"+hamiltonchiropractic.getOtherradiates()+"','"+hamiltonchiropractic.getMild()+"','"+hamiltonchiropractic.getModerate()+"','"+hamiltonchiropractic.getSeverepain()+"','"+hamiltonchiropractic.getCrippling()+"','"+hamiltonchiropractic.getAm()+"','"+hamiltonchiropractic.getPm()+"','"+hamiltonchiropractic.getOthertime()+"','"+hamiltonchiropractic.getOtherdn()+"','"+hamiltonchiropractic.getBetter()+"','"+hamiltonchiropractic.getSame()+"','"+hamiltonchiropractic.getWorse()+"','"+hamiltonchiropractic.getYes()+"','"+hamiltonchiropractic.getNo()+"','"+hamiltonchiropractic.getDay()+"','"+hamiltonchiropractic.getWork()+"','"+hamiltonchiropractic.getSleep()+"','"+hamiltonchiropractic.getOtherdaily()+"','"+hamiltonchiropractic.getOthercondition()+"','"+hamiltonchiropractic.getSameass()+"','"+hamiltonchiropractic.getImproved()+"','"+hamiltonchiropractic.getWorseass()+"','"+hamiltonchiropractic.getPlateau()+"','"+hamiltonchiropractic.getPreinjury()+"','"+hamiltonchiropractic.getSlight()+"','"+hamiltonchiropractic.getModeratly()+"','"+hamiltonchiropractic.getGreat()+"','"+hamiltonchiropractic.getChiropractic()+"','"+hamiltonchiropractic.getEms()+"','"+hamiltonchiropractic.getIceplan()+"','"+hamiltonchiropractic.getHeatplan()+"','"+hamiltonchiropractic.getNimmo()+"','"+hamiltonchiropractic.getUltrasound()+"','"+hamiltonchiropractic.getManualtraction()+"','"+hamiltonchiropractic.getMassageplan()+"','"+hamiltonchiropractic.getNeuromuscular()+"','"+hamiltonchiropractic.getStretching()+"','"+hamiltonchiropractic.getStrengthening()+"','"+hamiltonchiropractic.getRemobilization()+"','"+hamiltonchiropractic.getRehab()+"','"+hamiltonchiropractic.getModificat()+"','"+hamiltonchiropractic.getRelease()+"','"+hamiltonchiropractic.getRefer()+"','"+hamiltonchiropractic.getDecreasepain()+"','"+hamiltonchiropractic.getDecreasespam()+"','"+hamiltonchiropractic.getIncreaserom()+"','"+hamiltonchiropractic.getImproveadl()+"','"+hamiltonchiropractic.getImprovesubluxations()+"','"+hamiltonchiropractic.getFullactivity()+"','"+hamiltonchiropractic.getReturntowork()+"','"+hamiltonchiropractic.getRenewsports()+"','"+hamiltonchiropractic.getJacksonsr()+"','"+hamiltonchiropractic.getJacksonsl()+"','"+hamiltonchiropractic.getJacksonslo()+"','"+hamiltonchiropractic.getForamin_compr()+"','"+hamiltonchiropractic.getForamin_compl()+"','"+hamiltonchiropractic.getForamin_complo()+"','"+hamiltonchiropractic.getShoulder_deprr()+"','"+hamiltonchiropractic.getShoulder_deprl()+"','"+hamiltonchiropractic.getShoulder_deprlo()+"','"+hamiltonchiropractic.getGeorgesr()+"','"+hamiltonchiropractic.getGeorgesl()+"','"+hamiltonchiropractic.getGeorgeslo()+"','"+hamiltonchiropractic.getOdonor()+"','"+hamiltonchiropractic.getOdonol()+"','"+hamiltonchiropractic.getOdonolo()+"','"+hamiltonchiropractic.getBakody_signr()+"','"+hamiltonchiropractic.getBakody_signl()+"','"+hamiltonchiropractic.getBakody_signlo()+"','"+hamiltonchiropractic.getDistraction_testr()+"','"+hamiltonchiropractic.getDistraction_testl()+"','"+hamiltonchiropractic.getDistraction_testlo()+"','"+hamiltonchiropractic.getValsalvar()+"','"+hamiltonchiropractic.getValsalval()+"','"+hamiltonchiropractic.getValsalvalo()+"','"+hamiltonchiropractic.getSpinal_percuss()+"','"+hamiltonchiropractic.getGripdynamomright()+"','"+hamiltonchiropractic.getGripdynamomleft()+"','"+hamiltonchiropractic.getAdsonsr()+"','"+hamiltonchiropractic.getAdsonsl()+"','"+hamiltonchiropractic.getAdsonslo()+"','"+hamiltonchiropractic.getRustsignr()+"','"+hamiltonchiropractic.getRustsignl()+"','"+hamiltonchiropractic.getRustsignlo()+"','"+hamiltonchiropractic.getSpinal_percusst()+"','"+hamiltonchiropractic.getAdams_testr()+"','"+hamiltonchiropractic.getAdams_testl()+"','"+hamiltonchiropractic.getSheppal_signr()+"','"+hamiltonchiropractic.getSheppal_signl()+"','"+hamiltonchiropractic.getSoto_hallr()+"','"+hamiltonchiropractic.getSoto_halll()+"','"+hamiltonchiropractic.getCompression_testr()+"','"+hamiltonchiropractic.getCompression_testl()+"','"+hamiltonchiropractic.getCompression_testlo()+"','"+hamiltonchiropractic.getAntalgiar()+"','"+hamiltonchiropractic.getAntalgial()+"','"+hamiltonchiropractic.getSpinal_percusslr()+"','"+hamiltonchiropractic.getSpinal_percussll()+"','"+hamiltonchiropractic.getValsalvalr()+"','"+hamiltonchiropractic.getValsalvall()+"','"+hamiltonchiropractic.getMinors_signr()+"','"+hamiltonchiropractic.getMinors_signl()+"','"+hamiltonchiropractic.getBraggards_testr()+"','"+hamiltonchiropractic.getBraggards_testl()+"','"+hamiltonchiropractic.getSlrr()+"','"+hamiltonchiropractic.getSlrl()+"','"+hamiltonchiropractic.getWlrr()+"','"+hamiltonchiropractic.getWlrl()+"','"+hamiltonchiropractic.getHooversr()+"','"+hamiltonchiropractic.getHooversl()+"','"+hamiltonchiropractic.getDbl_leg_raiser()+"','"+hamiltonchiropractic.getDbl_leg_raisel()+"','"+hamiltonchiropractic.getLong_leg_testr()+"','"+hamiltonchiropractic.getLong_leg_testl()+"','"+hamiltonchiropractic.getAnvil_testr()+"','"+hamiltonchiropractic.getAnvil_testl()+"','"+hamiltonchiropractic.getThomasr()+"','"+hamiltonchiropractic.getThomasl()+"','"+hamiltonchiropractic.getMilgrams_testr()+"','"+hamiltonchiropractic.getMilgrams_testl()+"','"+hamiltonchiropractic.getObersr()+"','"+hamiltonchiropractic.getObersl()+"','"+hamiltonchiropractic.getIlliaccompr()+"','"+hamiltonchiropractic.getIlliaccompl()+"','"+hamiltonchiropractic.getYeomansr()+"','"+hamiltonchiropractic.getYeomansl()+"','"+hamiltonchiropractic.getAllis_signr()+"','"+hamiltonchiropractic.getAllis_signl()+"','"+hamiltonchiropractic.getDugasr()+"','"+hamiltonchiropractic.getDugasl()+"','"+hamiltonchiropractic.getSupraspinatusr()+"','"+hamiltonchiropractic.getSupraspinatusl()+"','"+hamiltonchiropractic.getCodmansr()+"','"+hamiltonchiropractic.getCodmansl()+"','"+hamiltonchiropractic.getSpeeds_testr()+"','"+hamiltonchiropractic.getSpeeds_testl()+"','"+hamiltonchiropractic.getYergasonsr()+"','"+hamiltonchiropractic.getYergasonsl()+"','"+hamiltonchiropractic.getTinelser()+"','"+hamiltonchiropractic.getTinelsel()+"','"+hamiltonchiropractic.getLingaminstabr()+"','"+hamiltonchiropractic.getLingaminstabl()+"','"+hamiltonchiropractic.getGolfers_elbowr()+"','"+hamiltonchiropractic.getGolfers_elbowl()+"','"+hamiltonchiropractic.getTennis_elbowr()+"','"+hamiltonchiropractic.getGolfers_elbowl()+"','"+hamiltonchiropractic.getTinelsr()+"','"+hamiltonchiropractic.getTinelsl()+"','"+hamiltonchiropractic.getPhalensr()+"','"+hamiltonchiropractic.getPhalensl()+"','"+hamiltonchiropractic.getFinkelsteins_testr()+"','"+hamiltonchiropractic.getFinkelsteins_testl()+"','"+hamiltonchiropractic.getBraceletr()+"','"+hamiltonchiropractic.getBraceletl()+"','"+hamiltonchiropractic.getAllensr()+"','"+hamiltonchiropractic.getAllensl()+"','"+hamiltonchiropractic.getValgus_varusr()+"','"+hamiltonchiropractic.getValgus_varusl()+"','"+hamiltonchiropractic.getPat_ballr()+"','"+hamiltonchiropractic.getPat_balll()+"','"+hamiltonchiropractic.getDrawerr()+"','"+hamiltonchiropractic.getDrawerl()+"','"+hamiltonchiropractic.getVal_varusr()+"','"+hamiltonchiropractic.getVal_varusl()+"','"+hamiltonchiropractic.getApleysr()+"','"+hamiltonchiropractic.getApleysl()+"','"+hamiltonchiropractic.getDrawerar()+"','"+hamiltonchiropractic.getDraweral()+"','"+hamiltonchiropractic.getThompsonsr()+"','"+hamiltonchiropractic.getThompsonsl()+"','"+hamiltonchiropractic.getTinelsar()+"','"+hamiltonchiropractic.getTinelsal()+"','"+hamiltonchiropractic.getStrunskysr()+"','"+hamiltonchiropractic.getStrunskysl()+"','"+hamiltonchiropractic.getHomansr()+"','"+hamiltonchiropractic.getHomansl()+"','"+hamiltonchiropractic.getClaudication_testr()+"','"+hamiltonchiropractic.getClaudication_testl()+"')";
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
		resultSet = statement.executeQuery("select * from tbl_hamiltonchiropractic order by initialexamid DESC");
		while(resultSet.next()){
			hamiltonchiropractic.add( new Hamiltonchiropractic(resultSet.getString("hacheck"),resultSet.getString(" ha"), resultSet.getString("neckcheck"),resultSet.getString(" neck"),resultSet.getString(" mbcheck"),resultSet.getString(" mb"),resultSet.getString(" ribscheck"),resultSet.getString(" ribs"),resultSet.getString(" shouldercheck"),resultSet.getString(" shoulder"),resultSet.getString(" elbowcheck"), resultSet.getString("elbow"), resultSet.getString("handcheck"), resultSet.getString("hand"), resultSet.getString("wristcheck"), resultSet.getString("wrist"), resultSet.getString("lbpcheck"), resultSet.getString("lbp"), resultSet.getString("hipcheck"), resultSet.getString("hip"), resultSet.getString("legcheck"),resultSet.getString("leg"), resultSet.getString("kneecheck"), resultSet.getString("knee"), resultSet.getString("footcheck"), resultSet.getString("foot"), resultSet.getString("anklecheck"), resultSet.getString("ankle"), resultSet.getString("suddenly"),resultSet.getString("gradually"), resultSet.getString("hours"), resultSet.getString("days"), resultSet.getString("date"), resultSet.getString("reason"),resultSet.getString("acute"),resultSet.getString("subacute"), resultSet.getString("chronic"), resultSet.getString("lyingdown"),resultSet.getString("sitting"),resultSet.getString("standing"),resultSet.getString("bending"),resultSet.getString("rest"),resultSet.getString("otherb"), resultSet.getString("othere"), resultSet.getString("ice"),resultSet.getString("heat"),resultSet.getString("massage"),resultSet.getString("aspirin"),resultSet.getString("otherdone"), resultSet.getString("otherit"), resultSet.getString("bendingworse"),resultSet.getString("twisting"),resultSet.getString("lifting"),resultSet.getString("walking"),resultSet.getString("activity"),resultSet.getString("otherworse"), resultSet.getString("otherfeel"), resultSet.getString("sharp"),resultSet.getString("severe"),resultSet.getString("dull"),resultSet.getString("burning"),resultSet.getString("nagging"),resultSet.getString("throbbing"),resultSet.getString("numb"), resultSet.getString("tingling"),resultSet.getString("stiff"),resultSet.getString("stabbing"),resultSet.getString("cramping"),resultSet.getString("otherdescribe"),resultSet.getString("otherpain"), resultSet.getString("constant"),resultSet.getString("intermittent"), resultSet.getString("local"),resultSet.getString("diffuse"),resultSet.getString("radiates"),resultSet.getString("otherradiates"), resultSet.getString("mild"),resultSet.getString("moderate"), resultSet.getString("severepain"),resultSet.getString("crippling"),resultSet.getString("am"), resultSet.getString("pm"),resultSet.getString("othertime"),resultSet.getString("otherdn"), resultSet.getString("better"),resultSet.getString("same"), resultSet.getString("worse"),resultSet.getString("yes"),resultSet.getString("no"),resultSet.getString("day"), resultSet.getString("work"), resultSet.getString("sleep"),resultSet.getString("otherdaily"), resultSet.getString("othercondition"), resultSet.getString("sameass"), resultSet.getString("improved"),resultSet.getString("worseass"),resultSet.getString("plateau"),resultSet.getString("preinjury"),resultSet.getString("slight"),resultSet.getString("moderatly"),resultSet.getString("great"),resultSet.getString("chiropractic"),resultSet.getString("ems"), resultSet.getString("iceplan"),resultSet.getString("heatplan"),resultSet.getString("nimmo"),resultSet.getString("ultrasound"),resultSet.getString("manualtraction"),resultSet.getString("massageplan"),resultSet.getString("neuromuscular"),resultSet.getString("stretching"),resultSet.getString("strengthening"),resultSet.getString("remobilization"),resultSet.getString("rehab"),resultSet.getString("modificat"),resultSet.getString("release"),resultSet.getString("refer"), resultSet.getString("decreasepain"),resultSet.getString("decreasespam"),resultSet.getString("increaserom"),resultSet.getString("improveadl"),resultSet.getString("improvesubluxations"),resultSet.getString("fullactivity"),resultSet.getString("returntowork"),resultSet.getString("renewsports"), resultSet.getString("jacksonsr"),resultSet.getString("jacksonsl"),resultSet.getString("jacksonslo"), resultSet.getString("foramin_compr"),resultSet.getString("foramin_compl"),resultSet.getString("foramin_complo"), resultSet.getString("shoulder_deprr"),resultSet.getString("shoulder_deprl"),resultSet.getString("shoulder_deprlo"), resultSet.getString("georgesr"),resultSet.getString("georgesl"),resultSet.getString("georgeslo"), resultSet.getString("odonor"),resultSet.getString("odonol"),resultSet.getString("odonolo"), resultSet.getString("bakody_signr"),resultSet.getString("bakody_signl"),resultSet.getString("bakody_signlo"), resultSet.getString("distraction_testr"),resultSet.getString("distraction_testl"),resultSet.getString("distraction_testlo"), resultSet.getString("valsalvar"),resultSet.getString("valsalval"),resultSet.getString("valsalvalo"), resultSet.getString("spinal_percuss"), resultSet.getString("gripdynamomright"), resultSet.getString("gripdynamomleft"), resultSet.getString("adsonsr"),resultSet.getString("adsonsl"),resultSet.getString("adsonslo"), resultSet.getString("rustsignr"),resultSet.getString("rustsignl"),resultSet.getString("rustsignlo"), resultSet.getString("spinal_percusst"), resultSet.getString("adams_testr"),resultSet.getString("adams_testl"), resultSet.getString("sheppal_signr"),resultSet.getString("sheppal_signl"), resultSet.getString("soto_hallr"),resultSet.getString("soto_halll"), resultSet.getString("compression_testr"),resultSet.getString("compression_testl"),resultSet.getString("compression_testlo"), resultSet.getString("antalgiar"),resultSet.getString("antalgial"), resultSet.getString("spinal_percusslr"),resultSet.getString("spinal_percussll"), resultSet.getString("valsalvalr"),resultSet.getString("valsalvall"), resultSet.getString("minors_signr"),resultSet.getString("minors_signl"), resultSet.getString("braggards_testr"),resultSet.getString("braggards_testl"), resultSet.getString("slrr"),resultSet.getString("slrl"), resultSet.getString("wlrr"),resultSet.getString("wlrl"), resultSet.getString("hooversr"),resultSet.getString("hooversl"), resultSet.getString("dbl_leg_raiser"),resultSet.getString("dbl_leg_raisel"), resultSet.getString("long_leg_testr"),resultSet.getString("long_leg_testl"), resultSet.getString("anvil_testr"),resultSet.getString("anvil_testl"), resultSet.getString("thomasr"),resultSet.getString("thomasl"), resultSet.getString("milgrams_testr"),resultSet.getString("milgrams_testl"), resultSet.getString("obersr"),resultSet.getString("obersl"), resultSet.getString("illiaccompr"),resultSet.getString("illiaccompl"), resultSet.getString("yeomansr"), resultSet.getString("yeomansl"),resultSet.getString("allis_signr"),resultSet.getString("allis_signl"), resultSet.getString("dugasr"),resultSet.getString("dugasl"), resultSet.getString("supraspinatusr"),resultSet.getString("supraspinatusl"), resultSet.getString("codmansr"),resultSet.getString("codmansl"), resultSet.getString("speeds_testr"), resultSet.getString("speeds_testl"),resultSet.getString("yergasonsr"),resultSet.getString("yergasonsl"), resultSet.getString("tinelser"),resultSet.getString("tinelsel"), resultSet.getString("lingaminstabr"),resultSet.getString("lingaminstabl"), resultSet.getString("golfers_elbowr"),resultSet.getString("golfers_elbowl"), resultSet.getString("tennis_elbowr"),resultSet.getString("tennis_elbowl"), resultSet.getString("tinelsr"),resultSet.getString("tinelsl"), resultSet.getString("phalensr"),resultSet.getString("phalensl"), resultSet.getString("finkelsteins_testr"),resultSet.getString("finkelsteins_testl"), resultSet.getString("braceletr"),resultSet.getString("braceletl"), resultSet.getString("allensr"),resultSet.getString("allensl"), resultSet.getString("valgus_varusr"),resultSet.getString("valgus_varusl"), resultSet.getString("pat_ballr"),resultSet.getString("pat_balll"), resultSet.getString("drawerr"),resultSet.getString("drawerl"), resultSet.getString("val_varusr"),resultSet.getString("val_varusl"), resultSet.getString("apleysr"),resultSet.getString("apleysl"), resultSet.getString("drawerar"),resultSet.getString("draweral"), resultSet.getString("thompsonsr"),resultSet.getString("thompsonsl"), resultSet.getString("tinelsar"),resultSet.getString("tinelsal"),resultSet.getString("strunskysr"),resultSet.getString("strunskysl"),resultSet.getString("homansr"),resultSet.getString("homansl"),resultSet.getString("claudication_testr"),resultSet.getString("claudication_testl")));
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

	

