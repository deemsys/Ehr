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

import bephit.model.Moretest;
 



public class MoretestDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public int setMoretest(Moretest moretest)
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
	         String cmd="INSERT INTO `tbl_moretest`(username,`emptycan`,`yergason`,`speed`,`ludington`,`droparm`,`apley`,`crossover`,`neerimpingement`,`hawkinskennedy`,`sternoclavicular`,`acjdtest`,`piano`,`apprehensiona`,`apprehensionp`,`sulcus`,`anterior`,`posterior`,`jobe`,`feagin`,`loadshift`,`grind`,`clunk`,`obrien`,`brachial`,`shoulder`,`adson`,`allen`,`roos`,`military`,`pectoralis`,`chvostek`,`loadingtest`,`palpation`,`vertebral`,`foraminalct`,`foraminaldt`,`valsalva`,`swallowing`,`tinelsign`,`cozen`,`resistive`,`passive`,`golfer`,`hyperextension`,`elbowflexion`,`varus`,`valgus`,`tinel`,`pinchgrip`,percussion,`compression`,`longfinger`,`finkelstein`,`phalen`,`tinelp`,`froment`,`wrinkle`,`digital`,`bunnel`,`murphy`,`watson`,`valgusst`,`varusst`,`selectionvi`,`kernig`,`lateral`,`anteriorl`,`inspiration`,`kernigt`,`lateralt`,`anteriort`,`inspirationt`,`valsalvat`,`stoop`,`hoover`,`kernigl`,`straight`,`bowstring`,`sitting`,`unilateral`,`bilateral`,`wellstraight`,`slump`,`thomas`,`spring`,`trendelenburg`,`stork`,`sijft`,`gillet`,`sijst`,`squish`,`yeoman`,`gaenslen`,`patrick`,`longsitting`,`hipscouring`,`nelaton`,`craig`,`straightc`,`fabertest`,`trendelenburgf`,`ober`,`piriformis`,`thomasp`,`trueleg`,`apparentleg`,`ely`,`tripod`,`femoral`,`patella`,`patellarp`,`ballotable`,`sweep`,`quadriceps`,`medial`,`bounce`,`patellar`,`renne`,`noble`,`hughston`,`godfrey`,`posteriorg`,`reverse`,`anteriorlt`,`anteriordt`,`slocuminternal`,`slocumexternal`,`pivot`,`jerk`,`posteriordt`,`hughstonposteromedial`,`hughstonposterolateral`,`posteriorlt`,`externalrotation`,`valgusstt`,`varusstt`,`mcmurray`,`apleyct`,`steinmann`,`rectus`,`homans`,`anteriorh`,`talarinversion`,`talareversion`,`thompson`,`tap`,`feiss`,`interdigital`,`compressiontest`,`longbone`,`swingtest`,`kleiger`,`tinelsignk`)VALUES ('"+moretest.getUsername()+"','"+moretest.getEmptycan()+"','"+moretest.getYergason()+"','"+moretest.getSpeed()+"','"+moretest.getLudington()+"','"+moretest.getDroparm()+"','"+moretest.getApley()+"','"+moretest.getCrossover()+"','"+moretest.getNeerimpingement()+"','"+moretest.getHawkinskennedy()+"','"+moretest.getSternoclavicular()+"','"+moretest.getAcjdtest()+"','"+moretest.getAcjctest()+"','"+moretest.getPiano()+"','"+moretest.getApprehensiona()+"','"+moretest.getApprehensionp()+"','"+moretest.getSulcus()+"','"+moretest.getAnterior()+"','"+moretest.getPosterior()+"','"+moretest.getJobe()+"','"+moretest.getFeagin()+"','"+moretest.getLoadshift()+"','"+moretest.getGrind()+"','"+moretest.getClunk()+"','"+moretest.getObrien()+"','"+moretest.getBrachial()+"','"+moretest.getShoulder()+"','"+moretest.getAdson()+"','"+moretest.getAllen()+"','"+moretest.getRoos()+"','"+moretest.getMilitary()+"','"+moretest.getPectoralis()+"','"+moretest.getChvostek()+"','"+moretest.getLoadingtest()+"','"+moretest.getPalpation()+"','"+moretest.getVertebral()+"','"+moretest.getForaminalct()+"','"+moretest.getForaminaldt()+"','"+moretest.getValsalva()+"','"+moretest.getSwallowing()+"','"+moretest.getTinelsign()+"','"+moretest.getCozen()+"','"+moretest.getResistive()+"','"+moretest.getPassive()+"','"+moretest.getGolfer()+"','"+moretest.getHyperextension()+"','"+moretest.getElbowflexion()+"','"+moretest.getVarus()+"','"+moretest.getValgus()+"','"+moretest.getTinel()+"','"+moretest.getPinchgrip()+"','"+moretest.getPercussion()+"','"+moretest.getCompression()+"','"+moretest.getLongfinger()+"','"+moretest.getFinkelstein()+"','"+moretest.getPhalen()+"','"+moretest.getTinelp()+"','"+moretest.getFroment()+"','"+moretest.getWrinkle()+"','"+moretest.getDigital()+"','"+moretest.getBunnel()+"','"+moretest.getMurphy()+"','"+moretest.getWatson()+"','"+moretest.getValgusst()+"','"+moretest.getVarusst()+"','"+moretest.getSelectionvi()+"','"+moretest.getKernig()+"','"+moretest.getLateral()+"','"+moretest.getAnteriorl()+"','"+moretest.getInspiration()+"','"+moretest.getKernigt()+"','"+moretest.getLateralt()+"','"+moretest.getAnteriort()+"','"+moretest.getInspirationt()+"','"+moretest.getValsalvat()+"','"+moretest.getStoop()+"','"+moretest.getHoover()+"','"+moretest.getKernigl()+"','"+moretest.getStraight()+"','"+moretest.getBowstring()+"','"+moretest.getSitting()+"','"+moretest.getUnilateral()+"','"+moretest.getBilateral()+"','"+moretest.getWellstraight()+"','"+moretest.getSlump()+"','"+moretest.getThomas()+"','"+moretest.getSpring()+"','"+moretest.getTrendelenburg()+"','"+moretest.getStork()+"','"+moretest.getSijft()+"','"+moretest.getGillet()+"','"+moretest.getSijst()+"','"+moretest.getSquish()+"','"+moretest.getYeoman()+"','"+moretest.getGaenslen()+"','"+moretest.getPatrick()+"','"+moretest.getLongsitting()+"','"+moretest.getHipscouring()+"','"+moretest.getNelaton()+"','"+moretest.getCraig()+"','"+moretest.getStraightc()+"','"+moretest.getFabertest()+"','"+moretest.getTrendelenburgf()+"','"+moretest.getOber()+"','"+moretest.getPiriformis()+"','"+moretest.getThomasp()+"','"+moretest.getTrueleg()+"','"+moretest.getApparentleg()+"','"+moretest.getEly()+"','"+moretest.getTripod()+"','"+moretest.getFemoral()+"','"+moretest.getPatella()+"','"+moretest.getPatellarp()+"','"+moretest.getBallotable()+"','"+moretest.getSweep()+"','"+moretest.getQuadriceps()+"','"+moretest.getMedial()+"','"+moretest.getBounce()+"','"+moretest.getPatellar()+"','"+moretest.getRenne()+"','"+moretest.getNoble()+"','"+moretest.getHughston()+"','"+moretest.getGodfrey()+"','"+moretest.getPosteriorg()+"','"+moretest.getReverse()+"','"+moretest.getAnteriorlt()+"','"+moretest.getAnteriordt()+"','"+moretest.getSlocuminternal()+"','"+moretest.getSlocumexternal()+"','"+moretest.getPivot()+"','"+moretest.getJerk()+"','"+moretest.getPosteriordt()+"','"+moretest.getHughstonposteromedial()+"','"+moretest.getPosteriorlt()+"','"+moretest.getExternalrotation()+"','"+moretest.getValgusstt()+"','"+moretest.getVarusstt()+"','"+moretest.getMcmurray()+"','"+moretest.getApleyct()+"','"+moretest.getSteinmann()+"','"+moretest.getRectus()+"','"+moretest.getHomans()+"','"+moretest.getAnteriorh()+"','"+moretest.getTalarinversion()+"','"+moretest.getTalareversion()+"','"+moretest.getThompson()+"','"+moretest.getTap()+"','"+moretest.getFeiss()+"','"+moretest.getInterdigital()+"','"+moretest.getCompressiontest()+"','"+moretest.getLongbone()+"','"+moretest.getSwingtest()+"','"+moretest.getKleiger()+"','"+moretest.getTinelsignk()+"')";
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

	
public List<Moretest> getMoretest(){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Moretest> moretest = new ArrayList<Moretest>();
    try{
		resultSet = statement.executeQuery("select * from tbl_moretest");
		while(resultSet.next()){
			moretest.add( new Moretest(resultSet.getString("emptycan"),resultSet.getString("yergason"), resultSet.getString("speed"),resultSet.getString(" ludington"),resultSet.getString(" droparm"),resultSet.getString(" apley"),resultSet.getString(" crossover"),resultSet.getString(" neerimpingement"),resultSet.getString(" hawkinskennedy"),resultSet.getString(" sternoclavicular"),resultSet.getString(" acjdtest"), resultSet.getString("acjctest"), resultSet.getString("piano"), resultSet.getString("apprehensiona"), resultSet.getString("apprehensionp"), resultSet.getString("slucus"), resultSet.getString("anterior"), resultSet.getString("posterior"), resultSet.getString("jobe"), resultSet.getString("feagin"), resultSet.getString("loadshift"),resultSet.getString("grind"), resultSet.getString("clunk"), resultSet.getString("obrien"), resultSet.getString("brachial"), resultSet.getString("shoulder"), resultSet.getString("adson"), resultSet.getString("allen"),resultSet.getString("roos"), resultSet.getString("military"), resultSet.getString("pectoralis"), resultSet.getString("chvostek"), resultSet.getString("loadingtest"),resultSet.getString("palpation"),resultSet.getString("vertebral"), resultSet.getString("foraminalct"), resultSet.getString("foraminaldt"),resultSet.getString("valsalva"),resultSet.getString("swallowing"),resultSet.getString("tinelsign"),resultSet.getString("cozen"),resultSet.getString("resistive"), resultSet.getString("passive"), resultSet.getString("golfer"),resultSet.getString("hyperextension"),resultSet.getString("elbowflexion"),resultSet.getString("varus"),resultSet.getString("valgus"), resultSet.getString("tinel"), resultSet.getString("pinchgrip"), resultSet.getString("percussion"),resultSet.getString("compression"),resultSet.getString("longfinger"),resultSet.getString("finkelstein"),resultSet.getString("phalen"),resultSet.getString("tinelp"), resultSet.getString("froment"), resultSet.getString("wrinkle"),resultSet.getString("digital"),resultSet.getString("bunnel"),resultSet.getString("murphy"),resultSet.getString("watson"),resultSet.getString("valgusst"),resultSet.getString("varusst"), resultSet.getString("selectionvi"),resultSet.getString("kernig"),resultSet.getString("lateral"),resultSet.getString("anteriorl"),resultSet.getString("inspiration"),resultSet.getString("kernigt"), resultSet.getString("lateralt"),resultSet.getString("anteriort"), resultSet.getString("inspirationt"),resultSet.getString("valsalvat"),resultSet.getString("stoop"),resultSet.getString("hoover"), resultSet.getString("kernigl"),resultSet.getString("straight"), resultSet.getString("bowstring"),resultSet.getString("sitting"),resultSet.getString("unilateral"), resultSet.getString("bilateral"),resultSet.getString("wellstraight"),resultSet.getString("slump"), resultSet.getString("thomas"),resultSet.getString("spring"), resultSet.getString("trendelenburg"),resultSet.getString("stork"),resultSet.getString("sijft"),resultSet.getString("gillet"), resultSet.getString("sijst"), resultSet.getString("squish"),resultSet.getString("yeoman"), resultSet.getString("gaenslen"), resultSet.getString("patrick"), resultSet.getString("longsitting"),resultSet.getString("hipscouring"),resultSet.getString("nelaton"),resultSet.getString("craig"),resultSet.getString("straightc"),resultSet.getString("fabertest"),resultSet.getString("trendelenburgf"),resultSet.getString("ober"),resultSet.getString("piriformis"), resultSet.getString("thomasp"),resultSet.getString("trueleg"),resultSet.getString("apparentleg"),resultSet.getString("ely"),resultSet.getString("tripod"),resultSet.getString("femoral"),resultSet.getString("patella"),resultSet.getString("patellarp"),resultSet.getString("ballotable"),resultSet.getString("sweep"),resultSet.getString("quadriceps"),resultSet.getString("medial"),resultSet.getString("bounce"),resultSet.getString("patellar"), resultSet.getString("renne"),resultSet.getString("noble"),resultSet.getString("hughston"),resultSet.getString("godfrey"),resultSet.getString("posteriorg"),resultSet.getString("reverse"),resultSet.getString("anteriorlt"),resultSet.getString("anteriordt"), resultSet.getString("slocuminternal"),resultSet.getString("slocumexternal"),resultSet.getString("pivot"), resultSet.getString("jerk"),resultSet.getString("posteriordt"),resultSet.getString("hughstonposteromedial"), resultSet.getString("hughstonposterolateral"),resultSet.getString("posteriorlt"),resultSet.getString("externalrotation"), resultSet.getString("valgusstt"),resultSet.getString("varusstt"),resultSet.getString("mcmurray"), resultSet.getString("apleyct"),resultSet.getString("steinmann"),resultSet.getString("rectus"), resultSet.getString("homans"),resultSet.getString("anteriorh"),resultSet.getString("talarinversion"), resultSet.getString("talareversion"),resultSet.getString("thompson"),resultSet.getString("tap"), resultSet.getString("feiss"),resultSet.getString("interdigital"),resultSet.getString("compressiontest"), resultSet.getString("longbone"), resultSet.getString("swingtest"), resultSet.getString("kleiger"), resultSet.getString("tinelsignk")));
			
			
			
			
		
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
    return moretest;
	
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

	

