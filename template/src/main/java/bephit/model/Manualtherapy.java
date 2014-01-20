package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Manualtherapy
{
	private String manualtherapyno;
	@NotEmpty
	private String pid;
	@NotEmpty
	private String date;
	@NotEmpty
	private String pname;
	@NotEmpty
	private String timein;
	@NotEmpty
	private String timeout;
	
	private String majorcomplaint;
	private String standing;
	private String sitting;
	private String walking;
	private String sleeping;
	private String lifting;
	private String bending;
	private String headache;
	private String neckpain;
	private String upperback;
	private String midback;
	private String lowback;
	private String tmjpain;
	private String other;
	private String shoulder;
	private String elbow;
	private String wrist;
	private String ribs;
	private String hip;
	private String leg;
	private String ankle;
	private String armsweakness;	
	private String handsweakness;	
	private String legsweakness;	
	private String feetweakness;	
	private String armspins;	
	private String handspins;	
	private String legspins;	
	private String feetpins;
	private String armsnumbness;	
	private String handsnumbness;	
	private String legsnumbness;
	private String feetnumbness;	
	private String armscoldness;	
	private String handscoldness;	
	private String legscoldness;	
	private String feetcoldness;
	private String painscale;
	private String paraspinals;	
	private String scm;	
	private String uppertraps;	
	private String suboccipitals;	
	private String scalenes;	
	private String triceps;	
	private String biceps;	
	private String brachioradialis;	
	private String wristflex;	
	private String hand;	
	private String pectoralis;	
	private String trapezius;	
	private String supra;	
	private String subscapularis;	
	private String dorsi;	
	private String levator;
	private String rhomboids;
	private String supraspinatus;
	private String anterior;
	private String paraspinalslum;
	private String iliopsoas;
	private String maximus;
	private String medius;
	private String piriformis;
	private String sartorius;
	private String hamstrings;
	private String TFL;
	private String HIP1;
	private String achilles;
	private String tibialis;
	private String QLS;
	private String ankles;
	private String gracilis;
	private String myofasical;
	private String manualtraction;
	private String triggerpoint;
	private String lymphaticdrainage;
	private String effleurage;
	private String taponnement;
	private String crossfrictionfiber;
	private String PNF;
	private String neuromuscular;
	private String unit;
	
	private String units;
	
	private String unitperform;


	private String MT;
	private String TE;
	private String MA;
	private String therapist;
	private String therapistrecommend;
	private String futurerecommend;
	private String session;
	private String weeks;
	@NotEmpty
	private String signature;
	private String daily;
	public String getManualtherapyno() {
		return manualtherapyno;
	}
	public void setManualtherapyno(String manualtherapyno) {
		this.manualtherapyno = manualtherapyno;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getTimein() {
		return timein;
	}
	public void setTimein(String timein) {
		this.timein = timein;
	}
	public String getTimeout() {
		return timeout;
	}
	public void setTimeout(String timeout) {
		this.timeout = timeout;
	}
	public String getMajorcomplaint() {
		return majorcomplaint;
	}
	public void setMajorcomplaint(String majorcomplaint) {
		this.majorcomplaint = majorcomplaint;
	}
	public String getStanding() {
		return standing;
	}
	public void setStanding(String standing) {
		this.standing = standing;
	}
	public String getSitting() {
		return sitting;
	}
	public void setSitting(String sitting) {
		this.sitting = sitting;
	}
	public String getWalking() {
		return walking;
	}
	public void setWalking(String walking) {
		this.walking = walking;
	}
	public String getSleeping() {
		return sleeping;
	}
	public void setSleeping(String sleeping) {
		this.sleeping = sleeping;
	}
	public String getLifting() {
		return lifting;
	}
	public void setLifting(String lifting) {
		this.lifting = lifting;
	}
	public String getBending() {
		return bending;
	}
	public void setBending(String bending) {
		this.bending = bending;
	}
	public String getHeadache() {
		return headache;
	}
	public void setHeadache(String headache) {
		this.headache = headache;
	}
	public String getNeckpain() {
		return neckpain;
	}
	public void setNeckpain(String neckpain) {
		this.neckpain = neckpain;
	}
	public String getUpperback() {
		return upperback;
	}
	public void setUpperback(String upperback) {
		this.upperback = upperback;
	}
	public String getMidback() {
		return midback;
	}
	public void setMidback(String midback) {
		this.midback = midback;
	}
	public String getLowback() {
		return lowback;
	}
	public void setLowback(String lowback) {
		this.lowback = lowback;
	}
	public String getTmjpain() {
		return tmjpain;
	}
	public void setTmjpain(String tmjpain) {
		this.tmjpain = tmjpain;
	}
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
	public String getShoulder() {
		return shoulder;
	}
	public void setShoulder(String shoulder) {
		this.shoulder = shoulder;
	}
	public String getElbow() {
		return elbow;
	}
	public void setElbow(String elbow) {
		this.elbow = elbow;
	}
	public String getWrist() {
		return wrist;
	}
	public void setWrist(String wrist) {
		this.wrist = wrist;
	}
	public String getRibs() {
		return ribs;
	}
	public void setRibs(String ribs) {
		this.ribs = ribs;
	}
	public String getHip() {
		return hip;
	}
	public void setHip(String hip) {
		this.hip = hip;
	}
	public String getLeg() {
		return leg;
	}
	public void setLeg(String leg) {
		this.leg = leg;
	}
	public String getAnkle() {
		return ankle;
	}
	public void setAnkle(String ankle) {
		this.ankle = ankle;
	}
	public String getArmsweakness() {
		return armsweakness;
	}
	public void setArmsweakness(String armsweakness) {
		this.armsweakness = armsweakness;
	}
	public String getHandsweakness() {
		return handsweakness;
	}
	public void setHandsweakness(String handsweakness) {
		this.handsweakness = handsweakness;
	}
	public String getLegsweakness() {
		return legsweakness;
	}
	public void setLegsweakness(String legsweakness) {
		this.legsweakness = legsweakness;
	}
	public String getFeetweakness() {
		return feetweakness;
	}
	public void setFeetweakness(String feetweakness) {
		this.feetweakness = feetweakness;
	}
	public String getArmspins() {
		return armspins;
	}
	public void setArmspins(String armspins) {
		this.armspins = armspins;
	}
	public String getHandspins() {
		return handspins;
	}
	public void setHandspins(String handspins) {
		this.handspins = handspins;
	}
	public String getLegspins() {
		return legspins;
	}
	public void setLegspins(String legspins) {
		this.legspins = legspins;
	}
	public String getFeetpins() {
		return feetpins;
	}
	public void setFeetpins(String feetpins) {
		this.feetpins = feetpins;
	}
	public String getArmsnumbness() {
		return armsnumbness;
	}
	public void setArmsnumbness(String armsnumbness) {
		this.armsnumbness = armsnumbness;
	}
	public String getHandsnumbness() {
		return handsnumbness;
	}
	public void setHandsnumbness(String handsnumbness) {
		this.handsnumbness = handsnumbness;
	}
	public String getLegsnumbness() {
		return legsnumbness;
	}
	public void setLegsnumbness(String legsnumbness) {
		this.legsnumbness = legsnumbness;
	}
	public String getFeetnumbness() {
		return feetnumbness;
	}
	public void setFeetnumbness(String feetnumbness) {
		this.feetnumbness = feetnumbness;
	}
	public String getArmscoldness() {
		return armscoldness;
	}
	public void setArmscoldness(String armscoldness) {
		this.armscoldness = armscoldness;
	}
	public String getHandscoldness() {
		return handscoldness;
	}
	public void setHandscoldness(String handscoldness) {
		this.handscoldness = handscoldness;
	}
	public String getLegscoldness() {
		return legscoldness;
	}
	public void setLegscoldness(String legscoldness) {
		this.legscoldness = legscoldness;
	}
	public String getFeetcoldness() {
		return feetcoldness;
	}
	public void setFeetcoldness(String feetcoldness) {
		this.feetcoldness = feetcoldness;
	}
	public String getPainscale() {
		return painscale;
	}
	public void setPainscale(String painscale) {
		this.painscale = painscale;
	}
	public String getParaspinals() {
		return paraspinals;
	}
	public void setParaspinals(String paraspinals) {
		this.paraspinals = paraspinals;
	}
	public String getScm() {
		return scm;
	}
	public void setScm(String scm) {
		this.scm = scm;
	}
	public String getUppertraps() {
		return uppertraps;
	}
	public void setUppertraps(String uppertraps) {
		this.uppertraps = uppertraps;
	}
	public String getSuboccipitals() {
		return suboccipitals;
	}
	public void setSuboccipitals(String suboccipitals) {
		this.suboccipitals = suboccipitals;
	}
	public String getScalenes() {
		return scalenes;
	}
	public void setScalenes(String scalenes) {
		this.scalenes = scalenes;
	}
	public String getTriceps() {
		return triceps;
	}
	public void setTriceps(String triceps) {
		this.triceps = triceps;
	}
	public String getBiceps() {
		return biceps;
	}
	public void setBiceps(String biceps) {
		this.biceps = biceps;
	}
	public String getBrachioradialis() {
		return brachioradialis;
	}
	public void setBrachioradialis(String brachioradialis) {
		this.brachioradialis = brachioradialis;
	}
	
	public String getWristflex() {
		return wristflex;
	}
	public void setWristflex(String wristflex) {
		this.wristflex = wristflex;
	}
	public String getHand() {
		return hand;
	}
	public void setHand(String hand) {
		this.hand = hand;
	}
	public String getPectoralis() {
		return pectoralis;
	}
	public void setPectoralis(String pectoralis) {
		this.pectoralis = pectoralis;
	}
	public String getTrapezius() {
		return trapezius;
	}
	public void setTrapezius(String trapezius) {
		this.trapezius = trapezius;
	}
	public String getSupra() {
		return supra;
	}
	public void setSupra(String supra) {
		this.supra = supra;
	}
	public String getSubscapularis() {
		return subscapularis;
	}
	public void setSubscapularis(String subscapularis) {
		this.subscapularis = subscapularis;
	}
	public String getDorsi() {
		return dorsi;
	}
	public void setDorsi(String dorsi) {
		this.dorsi = dorsi;
	}
	public String getLevator() {
		return levator;
	}
	public void setLevator(String levator) {
		this.levator = levator;
	}
	public String getRhomboids() {
		return rhomboids;
	}
	public void setRhomboids(String rhomboids) {
		this.rhomboids = rhomboids;
	}
	public String getSupraspinatus() {
		return supraspinatus;
	}
	public void setSupraspinatus(String supraspinatus) {
		this.supraspinatus = supraspinatus;
	}
	public String getAnterior() {
		return anterior;
	}
	public void setAnterior(String anterior) {
		this.anterior = anterior;
	}
	public String getParaspinalslum() {
		return paraspinalslum;
	}
	public void setParaspinalslum(String paraspinalslum) {
		this.paraspinalslum = paraspinalslum;
	}
	public String getIliopsoas() {
		return iliopsoas;
	}
	public void setIliopsoas(String iliopsoas) {
		this.iliopsoas = iliopsoas;
	}
	public String getMaximus() {
		return maximus;
	}
	public void setMaximus(String maximus) {
		this.maximus = maximus;
	}
	public String getMedius() {
		return medius;
	}
	public void setMedius(String medius) {
		this.medius = medius;
	}
	public String getPiriformis() {
		return piriformis;
	}
	public void setPiriformis(String piriformis) {
		this.piriformis = piriformis;
	}
	public String getSartorius() {
		return sartorius;
	}
	public void setSartorius(String sartorius) {
		this.sartorius = sartorius;
	}
	public String getHamstrings() {
		return hamstrings;
	}
	public void setHamstrings(String hamstrings) {
		this.hamstrings = hamstrings;
	}
	public String getTFL() {
		return TFL;
	}
	public void setTFL(String tFL) {
		TFL = tFL;
	}
	public String getHIP1() {
		return HIP1;
	}
	public void setHIP1(String hIP1) {
		HIP1 = hIP1;
	}
	public String getAchilles() {
		return achilles;
	}
	public void setAchilles(String achilles) {
		this.achilles = achilles;
	}
	public String getTibialis() {
		return tibialis;
	}
	public void setTibialis(String tibialis) {
		this.tibialis = tibialis;
	}
	public String getQLS() {
		return QLS;
	}
	public void setQLS(String qLS) {
		QLS = qLS;
	}
	public String getAnkles() {
		return ankles;
	}
	public void setAnkles(String ankles) {
		this.ankles = ankles;
	}
	public String getGracilis() {
		return gracilis;
	}
	public void setGracilis(String gracilis) {
		this.gracilis = gracilis;
	}
	public String getMyofasical() {
		return myofasical;
	}
	public void setMyofasical(String myofasical) {
		this.myofasical = myofasical;
	}
	public String getManualtraction() {
		return manualtraction;
	}
	public void setManualtraction(String manualtraction) {
		this.manualtraction = manualtraction;
	}
	
	public String getTriggerpoint() {
		return triggerpoint;
	}
	public void setTriggerpoint(String triggerpoint) {
		this.triggerpoint = triggerpoint;
	}
	public String getLymphaticdrainage() {
		return lymphaticdrainage;
	}
	public void setLymphaticdrainage(String lymphaticdrainage) {
		this.lymphaticdrainage = lymphaticdrainage;
	}
	public String getEffleurage() {
		return effleurage;
	}
	public void setEffleurage(String effleurage) {
		this.effleurage = effleurage;
	}
	public String getTaponnement() {
		return taponnement;
	}
	public void setTaponnement(String taponnement) {
		this.taponnement = taponnement;
	}
	public String getCrossfrictionfiber() {
		return crossfrictionfiber;
	}
	public void setCrossfrictionfiber(String crossfrictionfiber) {
		this.crossfrictionfiber = crossfrictionfiber;
	}
	public String getPNF() {
		return PNF;
	}
	public void setPNF(String pNF) {
		PNF = pNF;
	}
	public String getNeuromuscular() {
		return neuromuscular;
	}
	public void setNeuromuscular(String neuromuscular) {
		this.neuromuscular = neuromuscular;
	}
	
	
	
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public String getUnits() {
		return units;
	}
	public void setUnits(String units) {
		this.units = units;
	}
	public String getUnitperform() {
		return unitperform;
	}
	public void setUnitperform(String unitperform) {
		this.unitperform = unitperform;
	}
	public String getMT() {
		return MT;
	}
	public void setMT(String mT) {
		MT = mT;
	}
	public String getTE() {
		return TE;
	}
	public void setTE(String tE) {
		TE = tE;
	}
	public String getMA() {
		return MA;
	}
	public void setMA(String mA) {
		MA = mA;
	}
	public String getTherapist() {
		return therapist;
	}
	public void setTherapist(String therapist) {
		this.therapist = therapist;
	}
	public String getTherapistrecommend() {
		return therapistrecommend;
	}
	public void setTherapistrecommend(String therapistrecommend) {
		this.therapistrecommend = therapistrecommend;
	}
	public String getFuturerecommend() {
		return futurerecommend;
	}
	public void setFuturerecommend(String futurerecommend) {
		this.futurerecommend = futurerecommend;
	}
	public String getSession() {
		return session;
	}
	public void setSession(String session) {
		this.session = session;
	}
	public String getWeeks() {
		return weeks;
	}
	public void setWeeks(String weeks) {
		this.weeks = weeks;
	}
	public String getSignature() {
		return signature;
	}
	public void setSignature(String signature) {
		this.signature = signature;
	}
	public String getDaily() {
		return daily;
	}
	public void setDaily(String daily) {
		this.daily = daily;
	}
		public Manualtherapy() {
		super();
	}
		public Manualtherapy(String manualtherapyno, String pid, String date,
				String pname, String timein, String timeout,
				String majorcomplaint, String standing, String sitting,
				String walking, String sleeping, String lifting,
				String bending, String headache, String neckpain,
				String upperback, String midback, String lowback,
				String tmjpain, String other, String shoulder, String elbow,
				String wrist, String ribs, String hip, String leg,
				String ankle, String armsweakness, String handsweakness,
				String legsweakness, String feetweakness, String armspins,
				String handspins, String legspins, String feetpins,
				String armsnumbness, String handsnumbness, String legsnumbness,
				String feetnumbness, String armscoldness, String handscoldness,
				String legscoldness, String feetcoldness, String painscale,
				String paraspinals, String scm, String uppertraps,
				String suboccipitals, String scalenes, String triceps,
				String biceps, String brachioradialis, String wristflex,
				String hand, String pectoralis, String trapezius, String supra,
				String subscapularis, String dorsi, String levator,
				String rhomboids, String supraspinatus, String anterior,
				String paraspinalslum, String iliopsoas, String maximus,
				String medius, String piriformis, String sartorius,
				String hamstrings, String tFL, String hIP1, String achilles,
				String tibialis, String qLS, String ankles, String gracilis,
				String myofasical, String manualtraction, String triggerpoint,
				String lymphaticdrainage, String effleurage,
				String taponnement, String crossfrictionfiber, String pNF,
				String neuromuscular, String unit, String units,
				String unitperform, String mT, String tE, String mA,
				String therapist, String therapistrecommend,
				String futurerecommend, String session, String weeks,
				String signature, String daily) {
			super();
			this.manualtherapyno = manualtherapyno;
			this.pid = pid;
			this.date = date;
			this.pname = pname;
			this.timein = timein;
			this.timeout = timeout;
			this.majorcomplaint = majorcomplaint;
			this.standing = standing;
			this.sitting = sitting;
			this.walking = walking;
			this.sleeping = sleeping;
			this.lifting = lifting;
			this.bending = bending;
			this.headache = headache;
			this.neckpain = neckpain;
			this.upperback = upperback;
			this.midback = midback;
			this.lowback = lowback;
			this.tmjpain = tmjpain;
			this.other = other;
			this.shoulder = shoulder;
			this.elbow = elbow;
			this.wrist = wrist;
			this.ribs = ribs;
			this.hip = hip;
			this.leg = leg;
			this.ankle = ankle;
			this.armsweakness = armsweakness;
			this.handsweakness = handsweakness;
			this.legsweakness = legsweakness;
			this.feetweakness = feetweakness;
			this.armspins = armspins;
			this.handspins = handspins;
			this.legspins = legspins;
			this.feetpins = feetpins;
			this.armsnumbness = armsnumbness;
			this.handsnumbness = handsnumbness;
			this.legsnumbness = legsnumbness;
			this.feetnumbness = feetnumbness;
			this.armscoldness = armscoldness;
			this.handscoldness = handscoldness;
			this.legscoldness = legscoldness;
			this.feetcoldness = feetcoldness;
			this.painscale = painscale;
			this.paraspinals = paraspinals;
			this.scm = scm;
			this.uppertraps = uppertraps;
			this.suboccipitals = suboccipitals;
			this.scalenes = scalenes;
			this.triceps = triceps;
			this.biceps = biceps;
			this.brachioradialis = brachioradialis;
			this.wristflex = wristflex;
			this.hand = hand;
			this.pectoralis = pectoralis;
			this.trapezius = trapezius;
			this.supra = supra;
			this.subscapularis = subscapularis;
			this.dorsi = dorsi;
			this.levator = levator;
			this.rhomboids = rhomboids;
			this.supraspinatus = supraspinatus;
			this.anterior = anterior;
			this.paraspinalslum = paraspinalslum;
			this.iliopsoas = iliopsoas;
			this.maximus = maximus;
			this.medius = medius;
			this.piriformis = piriformis;
			this.sartorius = sartorius;
			this.hamstrings = hamstrings;
			TFL = tFL;
			HIP1 = hIP1;
			this.achilles = achilles;
			this.tibialis = tibialis;
			QLS = qLS;
			this.ankles = ankles;
			this.gracilis = gracilis;
			this.myofasical = myofasical;
			this.manualtraction = manualtraction;
			this.triggerpoint = triggerpoint;
			this.lymphaticdrainage = lymphaticdrainage;
			this.effleurage = effleurage;
			this.taponnement = taponnement;
			this.crossfrictionfiber = crossfrictionfiber;
			PNF = pNF;
			this.neuromuscular = neuromuscular;
			this.unit = unit;
			this.units = units;
			this.unitperform = unitperform;
			MT = mT;
			TE = tE;
			MA = mA;
			this.therapist = therapist;
			this.therapistrecommend = therapistrecommend;
			this.futurerecommend = futurerecommend;
			this.session = session;
			this.weeks = weeks;
			this.signature = signature;
			this.daily = daily;
		}
	
	
	
	
	
		
	}
