package bephit.model;

public class Autoaccident {
	private String claimnumber;
	private String adjustersname;
	private String estimate;
	private String seating;
	private String companion;
	private String vehicle_desc;
	private String vehicle_hit;
	private String other_vehicle_desc;
	private String carstopped;
	private String driverposition;
	private String vehicle_moving_time;
	private String wascar;
	private String estimated_rate;
	private String time_of_day;
	private String road_conditions;
	private String head_restraints;
	


public Autoaccident(){
}

public Autoaccident(String claimnumber,
		String adjustersname,
		String estimate,
		String seating,
		String companion,
		String vehicle_desc,
		String vehicle_hit,
		String other_vehicle_desc,
		String carstopped,
		String driverposition,
		String vehicle_moving_time,
		String wascar,
		String estimated_rate,
		String time_of_day,
		String road_conditions,
		String head_restraints){
	this.claimnumber=claimnumber;
	this.adjustersname=adjustersname;
	this.estimate=estimate;
	this.seating=seating;
	this.companion=companion;
	this.vehicle_desc=vehicle_desc;
	this.vehicle_hit=vehicle_hit;
	this.other_vehicle_desc=other_vehicle_desc;
	this.carstopped=carstopped;
	this.driverposition=driverposition;
	this.vehicle_moving_time=vehicle_moving_time;
	this.wascar=wascar;
	this.estimated_rate=estimated_rate;
	this.time_of_day=time_of_day;
	this.road_conditions=road_conditions;
	this.head_restraints=head_restraints;
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

public String getVehicle_desc() {
	return vehicle_desc;
}

public void setVehicle_desc(String vehicle_desc) {
	this.vehicle_desc = vehicle_desc;
}

public String getVehicle_hit() {
	return vehicle_hit;
}

public void setVehicle_hit(String vehicle_hit) {
	this.vehicle_hit = vehicle_hit;
}

public String getOther_vehicle_desc() {
	return other_vehicle_desc;
}

public void setOther_vehicle_desc(String other_vehicle_desc) {
	this.other_vehicle_desc = other_vehicle_desc;
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

public String getHead_restraints() {
	return head_restraints;
}

public void setHead_restraints(String head_restraints) {
	this.head_restraints = head_restraints;
}
}

