package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Autoaccident {
	private String patient_number;
	
	@NotEmpty
	private String claimnumber;
	
	@NotEmpty
	private String adjustersname;
	private String estimate;
	private String seating;
	
	@NotEmpty
	private String companion;
	private String vehicle_make;
	private String vehicle_model;
	private String vehicle_year;
	private String vehicle_hit;
	private String other_vehicle_make;
	private String other_vehicle_model;
	private String other_vehicle_year;
	private String carstopped;
	private String driverposition;
	private String vehicle_moving_time;
	private String wascar;
	
	@NotEmpty
	private String estimated_rate;
	private String time_of_day;
	private String road_conditions;
	private String conditions;
	private String head_restraints;
	private String seatpos_after_accident;
	private String seat_after_accident;
	private String lap_seat_belt;
	private String shoulder_seat_belt;
	private String airbag;
	private String wereyou;
	private String body_position;
	private String body_position1;
	private String head_position;
	private String head_position1;
	private String hands_on_wheel;
	private String aware_of_crash;
	private String brace;
	private String ifyes;
	private String further_injury;
	private String injurytext;
	private String ifyes_explain;
	private String during_after_crash;
	private String patient_body;
	private String patient_body1;
	private String body_strike;
	private String head_hit;
	private String rlshoulder_hit;
	private String rlhip_hit;
	private String rlknee_hit;
	private String chest_hit;
	private String rlarm_hit;
	private String rlleg_hit;
	private String otherpart_hit;
	private String wearing_glasses;
	private String glasses_impact;
	private String unconscious;
	private String uncon;
	
	@NotEmpty
	private String estimated_amount;
	private String damage;
	private String was_anyone_cited;
	private String who;
	private String headache;
	private String dizziness;
	private String nausea;
	private String confusion;
	private String disorientation;
	private String neckpain;
	private String otherpain;
	private String otherpaintext;
	private String first_symptom;
	private String symptom;
	private String after_accident;
	private String accident;
	private String hosname;
	private String city;
	private String staylength;
	private String hospitalget;
	private String hospital1;
	private String xray;
	private String wrong;
	
	


public Autoaccident(){
}

public Autoaccident(String patient_number,String claimnumber,
		String adjustersname,
		String estimate,
		String seating,
		String companion,
		String vehicle_make,
		String vehicle_model,
		String vehicle_year,
		String vehicle_hit,
		String other_vehicle_make,
		String other_vehicle_model,
		String other_vehicle_year,
		String carstopped,
		String driverposition,
		String vehicle_moving_time,
		String wascar,
		String estimated_rate,
		String time_of_day,
		String road_conditions,
		String conditions,
		String head_restraints,
		String seatpos_after_accident,
        String seat_after_accident,
        String lap_seat_belt,
        String shoulder_seat_belt,
        String airbag,
        String wereyou,
        String body_position,
        String body_position1,
        String head_position,
        String head_position1,
        String hands_on_wheel,
        String aware_of_crash,
        String brace,
        String ifyes,
        String further_injury,
        String injurytext,
        String ifyes_explain,
        String during_after_crash,
        String patient_body,
        String patient_body1,
        String body_strike,
        String head_hit,
        String rlshoulder_hit,
        String rlhip_hit,
        String rlknee_hit,
        String chest_hit,
        String rlarm_hit,
        String rlleg_hit,
        String otherpart_hit,
        String wearing_glasses,
        String glasses_impact,
        String unconscious,
        String uncon,
        String estimated_amount,
        String damage,
        String was_anyone_cited,
        String who,
        String headache,
        String dizziness,
        String nausea,
        String confusion,
        String disorientation,
        String neckpain,
        String otherpain,
        String otherpaintext,
        String first_symptom,
        String symptom,
        String after_accident,
        String accident,
        String hosname,
        String city,
        String staylength,
        String hospitalget,
        String hospital1,
        String xray,
        String wrong){
	this.patient_number=patient_number;
	this.claimnumber=claimnumber;
	this.adjustersname=adjustersname;
	this.estimate=estimate;
	this.seating=seating;
	this.companion=companion;
	this.vehicle_make=vehicle_make;
	this.vehicle_model=vehicle_model;
	this.vehicle_year=vehicle_year;
	this.vehicle_hit=vehicle_hit;
	this.other_vehicle_make=other_vehicle_make;
	this.other_vehicle_model=other_vehicle_model;
	this.other_vehicle_year=other_vehicle_year;
	this.carstopped=carstopped;
	this.driverposition=driverposition;
	this.vehicle_moving_time=vehicle_moving_time;
	this.wascar=wascar;
	this.estimated_rate=estimated_rate;
	this.time_of_day=time_of_day;
	this.road_conditions=road_conditions;
	this.conditions = conditions;
	this.head_restraints=head_restraints;
	this.seatpos_after_accident=seatpos_after_accident;
	this.seat_after_accident=seat_after_accident;
	this.lap_seat_belt=lap_seat_belt;
	this.shoulder_seat_belt=shoulder_seat_belt;
	this.airbag=airbag;
	this.wereyou=wereyou;
	this.body_position=body_position;
	this.body_position1=body_position1;
	this.head_position=head_position;
	this.head_position1=head_position1;
	this.hands_on_wheel=hands_on_wheel;
	this.aware_of_crash=aware_of_crash;
	this.brace=brace;
	this.ifyes=ifyes;
	this.further_injury=further_injury;
	this.injurytext = injurytext;
	this.ifyes_explain=ifyes_explain;
	this.during_after_crash=during_after_crash;
	this.patient_body=patient_body;
	this.patient_body1=patient_body1;
	this.body_strike=body_strike;
	this.head_hit=head_hit;
	this.rlshoulder_hit=rlshoulder_hit;
	this.rlhip_hit=rlhip_hit;
	this.rlknee_hit=rlknee_hit;
	this.chest_hit=chest_hit;
	this.rlarm_hit=rlarm_hit;
	this.rlleg_hit=rlleg_hit;
	this.otherpart_hit=otherpart_hit;
	this.wearing_glasses=wearing_glasses;
	this.glasses_impact=glasses_impact;
	this.unconscious=unconscious;
	this.uncon=uncon;
	this.estimated_amount=estimated_amount;
	this.damage=damage;
	this.was_anyone_cited=was_anyone_cited;
	this.who=who;
	this.headache=headache;
	this.dizziness=dizziness;
	this.nausea=nausea;
	this.confusion=confusion;
	this.disorientation=disorientation;
	this.neckpain=neckpain;
	this.otherpain=otherpain;
	this.otherpaintext = otherpaintext;
	this.first_symptom=first_symptom;
	this.symptom =symptom;
	this.after_accident=after_accident;
	this.accident = accident;
	this.hosname=hosname;
	this.city=city;
	this.staylength=staylength;
	this.hospitalget=hospitalget;
	this.hospital1 = hospital1;
	this.xray=xray;
	this.wrong=wrong;
	
}







public String getPatient_number() {
	return patient_number;
}

public void setPatient_number(String patient_number) {
	this.patient_number = patient_number;
}

public String getClaimnumber() {
	return claimnumber;
}

public void setClaimnumber(String claimnumber) {
	this.claimnumber = claimnumber;
}

public String getAdjustersname() {
	return adjustersname;
}

public void setAdjustersname(String adjustersname) {
	this.adjustersname = adjustersname;
}

public String getEstimate() {
	return estimate;
}

public void setEstimate(String estimate) {
	this.estimate = estimate;
}

public String getSeating() {
	return seating;
}

public void setSeating(String seating) {
	this.seating = seating;
}

public String getCompanion() {
	return companion;
}

public void setCompanion(String companion) {
	this.companion = companion;
}

public String getVehicle_make() {
	return vehicle_make;
}

public void setVehicle_make(String vehicle_make) {
	this.vehicle_make = vehicle_make;
}

public String getVehicle_model() {
	return vehicle_model;
}

public void setVehicle_model(String vehicle_model) {
	this.vehicle_model = vehicle_model;
}

public String getVehicle_year() {
	return vehicle_year;
}

public void setVehicle_year(String vehicle_year) {
	this.vehicle_year = vehicle_year;
}
public String getVehicle_hit() {
	return vehicle_hit;
}

public void setVehicle_hit(String vehicle_hit) {
	this.vehicle_hit = vehicle_hit;
}

public String getOther_vehicle_make() {
	return other_vehicle_make;
}

public void setOther_vehicle_make(String other_vehicle_make) {
	this.other_vehicle_make = other_vehicle_make;
}

public String getOther_vehicle_model() {
	return other_vehicle_model;
}

public void setOther_vehicle_model(String other_vehicle_model) {
	this.other_vehicle_model = other_vehicle_model;
}

public String getOther_vehicle_year() {
	return other_vehicle_year;
}

public void setOther_vehicle_year(String other_vehicle_year) {
	this.other_vehicle_year = other_vehicle_year;
}

public String getCarstopped() {
	return carstopped;
}

public void setCarstopped(String carstopped) {
	this.carstopped = carstopped;
}

public String getDriverposition() {
	return driverposition;
}

public void setDriverposition(String driverposition) {
	this.driverposition = driverposition;
}
public String getVehicle_moving_time() {
	return vehicle_moving_time;
}

public void setVehicle_moving_time(String vehicle_moving_time) {
	this.vehicle_moving_time = vehicle_moving_time;
}

public String getWascar() {
	return wascar;
}

public void setWascar(String wascar) {
	this.wascar = wascar;
}

public String getEstimated_rate() {
	return estimated_rate;
}

public void setEstimated_rate(String estimated_rate) {
	this.estimated_rate = estimated_rate;
}

public String getTime_of_day() {
	return time_of_day;
}

public void setTime_of_day(String time_of_day) {
	this.time_of_day = time_of_day;
}

public String getRoad_conditions() {
	return road_conditions;
}

public void setRoad_conditions(String road_conditions) {
	this.road_conditions = road_conditions;
}


public String getConditions() {
	return conditions;
}

public void setConditions(String conditions) {
	this.conditions = conditions;
}

public String getHead_restraints() {
	return head_restraints;
}

public void setHead_restraints(String head_restraints) {
	this.head_restraints = head_restraints;
}

public String getSeatpos_after_accident() {
	return seatpos_after_accident;
}

public void setSeatpos_after_accident(String seatpos_after_accident) {
	this.seatpos_after_accident = seatpos_after_accident;
}

public String getSeat_after_accident() {
	return seat_after_accident;
}

public void setSeat_after_accident(String seat_after_accident) {
	this.seat_after_accident = seat_after_accident;
}

public String getLap_seat_belt() {
	return lap_seat_belt;
}

public void setLap_seat_belt(String lap_seat_belt) {
	this.lap_seat_belt = lap_seat_belt;
}

public String getShoulder_seat_belt() {
	return shoulder_seat_belt;
}

public void setShoulder_seat_belt(String shoulder_seat_belt) {
	this.shoulder_seat_belt = shoulder_seat_belt;
}

public String getAirbag() {
	return airbag;
}

public void setAirbag(String airbag) {
	this.airbag = airbag;
}

public String getWereyou() {
	return wereyou;
}

public void setWereyou(String wereyou) {
	this.wereyou = wereyou;
}

public String getBody_position() {
	return body_position;
}

public void setBody_position(String body_position) {
	this.body_position = body_position;
}

public String getHead_position() {
	return head_position;
}

public void setHead_position(String head_position) {
	this.head_position = head_position;
}

public String getHands_on_wheel() {
	return hands_on_wheel;
}

public void setHands_on_wheel(String hands_on_wheel) {
	this.hands_on_wheel = hands_on_wheel;
}

public String getAware_of_crash() {
	return aware_of_crash;
}

public void setAware_of_crash(String aware_of_crash) {
	this.aware_of_crash = aware_of_crash;
}

public String getBrace() {
	return brace;
}

public void setBrace(String brace) {
	this.brace = brace;
}

public String getIfyes() {
	return ifyes;
}

public void setIfyes(String ifyes) {
	this.ifyes = ifyes;
}

public String getFurther_injury() {
	return further_injury;
}

public void setFurther_injury(String further_injury) {
	this.further_injury = further_injury;
}

public String getInjurytext() {
	return injurytext;
}

public void setInjurytext(String injurytext) {
	this.injurytext = injurytext;
}

public String getIfyes_explain() {
	return ifyes_explain;
}

public void setIfyes_explain(String ifyes_explain) {
	this.ifyes_explain = ifyes_explain;
}

public String getDuring_after_crash() {
	return during_after_crash;
}

public void setDuring_after_crash(String during_after_crash) {
	this.during_after_crash = during_after_crash;
}

public String getPatient_body() {
	return patient_body;
}

public void setPatient_body(String patient_body) {
	this.patient_body = patient_body;
}

public String getBody_strike() {
	return body_strike;
}

public void setBody_strike(String body_strike) {
	this.body_strike = body_strike;
}

public String getHead_hit() {
	return head_hit;
}

public void setHead_hit(String head_hit) {
	this.head_hit = head_hit;
}

public String getRlshoulder_hit() {
	return rlshoulder_hit;
}

public void setRlshoulder_hit(String rlshoulder_hit) {
	this.rlshoulder_hit = rlshoulder_hit;
}

public String getRlhip_hit() {
	return rlhip_hit;
}

public void setRlhip_hit(String rlhip_hit) {
	this.rlhip_hit = rlhip_hit;
}

public String getRlknee_hit() {
	return rlknee_hit;
}

public void setRlknee_hit(String rlknee_hit) {
	this.rlknee_hit = rlknee_hit;
}

public String getChest_hit() {
	return chest_hit;
}

public void setChest_hit(String chest_hit) {
	this.chest_hit = chest_hit;
}

public String getRlarm_hit() {
	return rlarm_hit;
}

public void setRlarm_hit(String rlarm_hit) {
	this.rlarm_hit = rlarm_hit;
}

public String getRlleg_hit() {
	return rlleg_hit;
}

public void setRlleg_hit(String rlleg_hit) {
	this.rlleg_hit = rlleg_hit;
}

public String getOtherpart_hit() {
	return otherpart_hit;
}

public void setOtherpart_hit(String otherpart_hit) {
	this.otherpart_hit = otherpart_hit;
}

public String getWearing_glasses() {
	return wearing_glasses;
}

public void setWearing_glasses(String wearing_glasses) {
	this.wearing_glasses = wearing_glasses;
}

public String getGlasses_impact() {
	return glasses_impact;
}

public void setGlasses_impact(String glasses_impact) {
	this.glasses_impact = glasses_impact;
}

public String getUnconscious() {
	return unconscious;
}

public void setUnconscious(String unconscious) {
	this.unconscious = unconscious;
}

public String getUncon() {
	return uncon;
}

public void setUncon(String uncon) {
	this.uncon = uncon;
}

public String getEstimated_amount() {
	return estimated_amount;
}

public void setEstimated_amount(String estimated_amount) {
	this.estimated_amount = estimated_amount;
}

public String getDamage() {
	return damage;
}

public void setDamage(String damage) {
	this.damage = damage;
}

public String getWas_anyone_cited() {
	return was_anyone_cited;
}

public void setWas_anyone_cited(String was_anyone_cited) {
	this.was_anyone_cited = was_anyone_cited;
}

public String getWho() {
	return who;
}

public void setWho(String who) {
	this.who = who;
}

public String getHeadache() {
	return headache;
}

public void setHeadache(String headache) {
	this.headache = headache;
}

public String getDizziness() {
	return dizziness;
}

public void setDizziness(String dizziness) {
	this.dizziness = dizziness;
}

public String getNausea() {
	return nausea;
}

public void setNausea(String nausea) {
	this.nausea = nausea;
}

public String getConfusion() {
	return confusion;
}

public void setConfusion(String confusion) {
	this.confusion = confusion;
}

public String getDisorientation() {
	return disorientation;
}

public void setDisorientation(String disorientation) {
	this.disorientation = disorientation;
}

public String getNeckpain() {
	return neckpain;
}

public void setNeckpain(String neckpain) {
	this.neckpain = neckpain;
}

public String getOtherpain() {
	return otherpain;
}

public void setOtherpain(String otherpain) {
	this.otherpain = otherpain;
}


public String getOtherpaintext() {
	return otherpaintext;
}

public void setOtherpaintext(String otherpaintext) {
	this.otherpaintext = otherpaintext;
}

public String getFirst_symptom() {
	return first_symptom;
}

public void setFirst_symptom(String first_symptom) {
	this.first_symptom = first_symptom;
}

public String getSymptom() {
	return symptom;
}

public void setSymptom(String symptom) {
	this.symptom = symptom;
}

public String getAfter_accident() {
	return after_accident;
}

public void setAfter_accident(String after_accident) {
	this.after_accident = after_accident;
}

public String getAccident() {
	return accident;
}

public void setAccident(String accident) {
	this.accident = accident;
}

public String getHosname() {
	return hosname;
}

public void setHosname(String hosname) {
	this.hosname = hosname;
}

public String getCity() {
	return city;
}

public void setCity(String city) {
	this.city = city;
}

public String getStaylength() {
	return staylength;
}

public void setStaylength(String staylength) {
	this.staylength = staylength;
}

public String getHospitalget() {
	return hospitalget;
}

public void setHospitalget(String hospitalget) {
	this.hospitalget = hospitalget;
}


public String getBody_position1() {
	return body_position1;
}

public void setBody_position1(String body_position1) {
	this.body_position1 = body_position1;
}

public String getHead_position1() {
	return head_position1;
}

public void setHead_position1(String head_position1) {
	this.head_position1 = head_position1;
}

public String getPatient_body1() {
	return patient_body1;
}

public void setPatient_body1(String patient_body1) {
	this.patient_body1 = patient_body1;
}

public String getHospital1() {
	return hospital1;
}

public void setHospital1(String hospital1) {
	this.hospital1 = hospital1;
}

public String getXray() {
	return xray;
}

public void setXray(String xray) {
	this.xray = xray;
}

public String getWrong() {
	return wrong;
}

public void setWrong(String wrong) {
	this.wrong = wrong;
}
}

