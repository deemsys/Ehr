package bephit.dao;

import java.security.Principal;
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

import bephit.model.Autoaccident;
import bephit.model.PatientDetails;
import bephit.model.RadiologicReport;
import bephit.model.SoapNotes;
 



public class AutoaccidentDAO {
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	
	
	
	public int setAutoaccident(Autoaccident autoaccident,Principal principal)
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
	    	 String cmd="INSERT INTO `tbl_autoaccident` (username,`claimnumber`,`adjustersname`,`estimate`,`seating`,`companion`,`vehicle_make`,`vehicle_model`,`vehicle_year`,`vehicle_hit`,`other_vehicle_make`,`other_vehicle_model`,`other_vehicle_year`,`carstopped`,`driverposition`,`vehicle_moving_time`,`wascar`,`estimated_rate`,`time_of_day`,`road_conditions`,`conditions`,`head_restraints`,`seatpos_after_accident`,`seat_after_accident`,`lap_seat_belt`,`shoulder_seat_belt`,`airbag`,`wereyou`,`body_position`,`body_position1`,`head_position`,`head_position1`,`hands_on_wheel`,`aware_of_crash`,`brace`,`ifyes`,`further_injury`,`injurytext`,`patient_body`,`patient_body1`,`body_strike`,`head_hit`,`rlshoulder_hit`,`rlhip_hit`,`rlknee_hit`,`chest_hit`,`rlarm_hit`,`rlleg_hit`,`otherpart_hit`,`wearing_glasses`,`glasses_impact`,`unconscious`,`uncon`,`estimated_amount`,`damage`,`was_anyone_cited`,`who`,`headache`,`dizziness`,`nausea`,`confusion`,`disorientation`,`neckpain`,`otherpain`,`otherpaintext`,`first_symptom`,`symptom`,`after_accident`,`accident`,`hosname`,`city`,`staylength`,`hospitalget`,`hospital1`,`xray`,`wrong`) VALUES ('"+principal.getName()+"','"+autoaccident.getClaimnumber()+"','"+autoaccident.getAdjustersname()+"','"+autoaccident.getEstimate()+"','"+autoaccident.getSeating()+"','"+autoaccident.getCompanion()+"','"+autoaccident.getVehicle_make()+"','"+autoaccident.getVehicle_model()+"','"+autoaccident.getVehicle_year()+"','"+autoaccident.getVehicle_hit()+"','"+autoaccident.getOther_vehicle_make()+"','"+autoaccident.getOther_vehicle_model()+"','"+autoaccident.getOther_vehicle_year()+"','"+autoaccident.getCarstopped()+"','"+autoaccident.getDriverposition()+"','"+autoaccident.getVehicle_moving_time()+"','"+autoaccident.getWascar()+"','"+autoaccident.getEstimated_rate()+"','"+autoaccident.getTime_of_day()+"','"+autoaccident.getRoad_conditions()+"','"+autoaccident.getConditions()+"','"+autoaccident.getHead_restraints()+"','"+autoaccident.getSeatpos_after_accident()+"','"+autoaccident.getSeat_after_accident()+"','"+autoaccident.getLap_seat_belt()+"','"+autoaccident.getShoulder_seat_belt()+"','"+autoaccident.getAirbag()+"','"+autoaccident.getWereyou()+"','"+autoaccident.getBody_position()+"','"+autoaccident.getBody_position1()+"','"+autoaccident.getHead_position()+"','"+autoaccident.getHead_position1()+"','"+autoaccident.getHands_on_wheel()+"','"+autoaccident.getAware_of_crash()+"','"+autoaccident.getBrace()+"','"+autoaccident.getIfyes()+"','"+autoaccident.getFurther_injury()+"','"+autoaccident.getInjurytext()+"','"+autoaccident.getPatient_body()+"','"+autoaccident.getPatient_body1()+"','"+autoaccident.getBody_strike()+"','"+autoaccident.getHead_hit()+"','"+autoaccident.getRlshoulder_hit()+"','"+autoaccident.getRlhip_hit()+"','"+autoaccident.getRlknee_hit()+"','"+autoaccident.getChest_hit()+"','"+autoaccident.getRlarm_hit()+"','"+autoaccident.getRlleg_hit()+"','"+autoaccident.getOtherpart_hit()+"','"+autoaccident.getWearing_glasses()+"','"+autoaccident.getGlasses_impact()+"','"+autoaccident.getUnconscious()+"','"+autoaccident.getUncon()+"','"+autoaccident.getEstimated_amount()+"','"+autoaccident.getDamage()+"','"+autoaccident.getWas_anyone_cited()+"','"+autoaccident.getWho()+"','"+autoaccident.getHeadache()+"','"+autoaccident.getDizziness()+"','"+autoaccident.getNausea()+"','"+autoaccident.getConfusion()+"','"+autoaccident.getDisorientation()+"','"+autoaccident.getNeckpain()+"','"+autoaccident.getOtherpain()+"','"+autoaccident.getOtherpaintext()+"','"+autoaccident.getFirst_symptom()+"','"+autoaccident.getSymptom()+"','"+autoaccident.getAfter_accident()+"','"+autoaccident.getAccident()+"','"+autoaccident.getHosname()+"','"+autoaccident.getCity()+"','"+autoaccident.getStaylength()+"','"+autoaccident.getHospitalget()+"','"+autoaccident.getHospital1()+"','"+autoaccident.getXray()+"','"+autoaccident.getWrong()+"')";
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

	
public List<Autoaccident> getAutoaccident(){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Autoaccident> Autoaccident = new ArrayList<Autoaccident>();
    try{
		resultSet = statement.executeQuery("select * from tbl_autoaccident");
		while(resultSet.next()){
			Autoaccident.add(new Autoaccident(resultSet.getString("patient_number"),resultSet.getString("claimnumber"),
		    		resultSet.getString("adjustersname"),
		    		resultSet.getString("estimate"),
		    		resultSet.getString("seating"),
		    		resultSet.getString("companion"),
		    		resultSet.getString("vehicle_make"),
		    		resultSet.getString("vehicle_model"),
		    		resultSet.getString("vehicle_year"),
		    		resultSet.getString("vehicle_hit"),
		    		resultSet.getString("other_vehicle_make"),
		    		resultSet.getString("other_vehicle_model"),
		    		resultSet.getString("other_vehicle_year"),
		    		resultSet.getString("carstopped"),
		    		resultSet.getString("driverposition"),
		    		resultSet.getString("vehicle_moving_time"),
		    		resultSet.getString("wascar"),
		    		resultSet.getString("estimated_rate"),
		    		resultSet.getString("time_of_day"),
		    		resultSet.getString("road_conditions"),
		    		resultSet.getString("conditions"),
		    		resultSet.getString("head_restraints"),
		    		resultSet.getString("seatpos_after_accident"),
		    		
		    		resultSet.getString("seat_after_accident"),
		    		resultSet.getString("lap_seat_belt"),
		    		resultSet.getString("shoulder_seat_belt"),
		    		resultSet.getString("airbag"),
		    		resultSet.getString("wereyou"),
		    		resultSet.getString("body_position"),
		    		resultSet.getString("body_position1"),
		    		resultSet.getString("head_position"),
		    		resultSet.getString("head_position1"),
		    		resultSet.getString("hands_on_wheel"),
		    		resultSet.getString("aware_of_crash"),
		    		resultSet.getString("brace"),
		    		resultSet.getString("ifyes"),
		    		resultSet.getString("further_injury"),
		    		resultSet.getString("injurytext"),		    	
		    		resultSet.getString("patient_body"),
		    		resultSet.getString("patient_body1"),
		    		resultSet.getString("body_strike"),
		    		resultSet.getString("head_hit"),
		    		resultSet.getString("rlshoulder_hit"),
		    		resultSet.getString("rlhip_hit"),
		    		resultSet.getString("rlknee_hit"),
		    		resultSet.getString("chest_hit"),
		    		resultSet.getString("rlarm_hit"),
		    		resultSet.getString("rlleg_hit"),
		    		resultSet.getString("otherpart_hit"),
		    		resultSet.getString("wearing_glasses"),
		    		resultSet.getString("glasses_impact"),
		    		resultSet.getString("unconscious"),
		    		resultSet.getString("uncon"),
		    		resultSet.getString("estimated_amount"),
		    		resultSet.getString("damage"),
		    		resultSet.getString("was_anyone_cited"),
		    		resultSet.getString("who"),
		    		resultSet.getString("headache"),
		    		resultSet.getString("dizziness"),
		    		resultSet.getString("nausea"),
		    		resultSet.getString("confusion"),
		    		resultSet.getString("disorientation"),
		    		resultSet.getString("neckpain"),
		    		resultSet.getString("otherpain"),
		    		resultSet.getString("otherpaintext"),
		    		resultSet.getString("first_symptom"),
		    		resultSet.getString("symptom"),
		    		resultSet.getString("after_accident"),
		    		resultSet.getString("accident"),
		    		resultSet.getString("hosname"),
		    		resultSet.getString("city"),
		    		resultSet.getString("staylength"),
		    		resultSet.getString("hospitalget"),
		    		resultSet.getString("hospital1"),
		    		
		    		resultSet.getString("xray"),
		    		resultSet.getString("wrong")));
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
    return Autoaccident;
	
}

public List<Autoaccident> getusernameAuto(Principal principal){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Autoaccident> Autoaccident = new ArrayList<Autoaccident>();
    try{
		resultSet = statement.executeQuery("select * from tbl_autoaccident where username='"+principal.getName()+"'");
		while(resultSet.next()){
			Autoaccident.add(new Autoaccident(resultSet.getString("patient_number"),resultSet.getString("claimnumber"),
		    		resultSet.getString("adjustersname"),
		    		resultSet.getString("estimate"),
		    		resultSet.getString("seating"),
		    		resultSet.getString("companion"),
		    		resultSet.getString("vehicle_make"),
		    		resultSet.getString("vehicle_model"),
		    		resultSet.getString("vehicle_year"),
		    		resultSet.getString("vehicle_hit"),
		    		resultSet.getString("other_vehicle_make"),
		    		resultSet.getString("other_vehicle_model"),
		    		resultSet.getString("other_vehicle_year"),
		    		resultSet.getString("carstopped"),
		    		resultSet.getString("driverposition"),
		    		resultSet.getString("vehicle_moving_time"),
		    		resultSet.getString("wascar"),
		    		resultSet.getString("estimated_rate"),
		    		resultSet.getString("time_of_day"),
		    		resultSet.getString("road_conditions"),
		    		resultSet.getString("conditions"),
		    		resultSet.getString("head_restraints"),
		    		resultSet.getString("seatpos_after_accident"),
		    		resultSet.getString("seat_after_accident"),
		    		resultSet.getString("lap_seat_belt"),
		    		resultSet.getString("shoulder_seat_belt"),
		    		resultSet.getString("airbag"),
		    		resultSet.getString("wereyou"),
		    		resultSet.getString("body_position"),
		    		resultSet.getString("body_position1"),
		    		resultSet.getString("head_position"),
		    		resultSet.getString("head_position1"),
		    		resultSet.getString("hands_on_wheel"),
		    		resultSet.getString("aware_of_crash"),
		    		resultSet.getString("brace"),
		    		resultSet.getString("ifyes"),
		    		resultSet.getString("further_injury"),
		    		resultSet.getString("injurytext"),		    	
		    		resultSet.getString("patient_body"),
		    		resultSet.getString("patient_body1"),
		    		resultSet.getString("body_strike"),
		    		resultSet.getString("head_hit"),
		    		resultSet.getString("rlshoulder_hit"),
		    		resultSet.getString("rlhip_hit"),
		    		resultSet.getString("rlknee_hit"),
		    		resultSet.getString("chest_hit"),
		    		resultSet.getString("rlarm_hit"),
		    		resultSet.getString("rlleg_hit"),
		    		resultSet.getString("otherpart_hit"),
		    		resultSet.getString("wearing_glasses"),
		    		resultSet.getString("glasses_impact"),
		    		resultSet.getString("unconscious"),
		    		resultSet.getString("uncon"),
		    		resultSet.getString("estimated_amount"),
		    		resultSet.getString("damage"),
		    		resultSet.getString("was_anyone_cited"),
		    		resultSet.getString("who"),
		    		resultSet.getString("headache"),
		    		resultSet.getString("dizziness"),
		    		resultSet.getString("nausea"),
		    		resultSet.getString("confusion"),
		    		resultSet.getString("disorientation"),
		    		resultSet.getString("neckpain"),
		    		resultSet.getString("otherpain"),
		    		resultSet.getString("otherpaintext"),
		    		resultSet.getString("first_symptom"),
		    		resultSet.getString("symptom"),
		    		resultSet.getString("after_accident"),
		    		resultSet.getString("accident"),
		    		resultSet.getString("hosname"),
		    		resultSet.getString("city"),
		    		resultSet.getString("staylength"),
		    		resultSet.getString("hospitalget"),
		    		resultSet.getString("hospital1"),
		    		resultSet.getString("xray"),
		    		resultSet.getString("wrong")));
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
    return Autoaccident;
	
}
public List<Autoaccident> getusernameAutoaccident(String username){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Autoaccident> Autoaccident = new ArrayList<Autoaccident>();
    try{
		resultSet = statement.executeQuery("select * from tbl_autoaccident where username='"+username+"'");
		while(resultSet.next()){
			Autoaccident.add(new Autoaccident(resultSet.getString("patient_number"),resultSet.getString("claimnumber"),
		    		resultSet.getString("adjustersname"),
		    		resultSet.getString("estimate"),
		    		resultSet.getString("seating"),
		    		resultSet.getString("companion"),
		    		resultSet.getString("vehicle_make"),
		    		resultSet.getString("vehicle_model"),
		    		resultSet.getString("vehicle_year"),
		    		resultSet.getString("vehicle_hit"),
		    		resultSet.getString("other_vehicle_make"),
		    		resultSet.getString("other_vehicle_model"),
		    		resultSet.getString("other_vehicle_year"),
		    		resultSet.getString("carstopped"),
		    		resultSet.getString("driverposition"),
		    		resultSet.getString("vehicle_moving_time"),
		    		resultSet.getString("wascar"),
		    		resultSet.getString("estimated_rate"),
		    		resultSet.getString("time_of_day"),
		    		resultSet.getString("road_conditions"),
		    		resultSet.getString("conditions"),
		    		resultSet.getString("head_restraints"),
		    		resultSet.getString("seatpos_after_accident"),
		    		resultSet.getString("seat_after_accident"),
		    		resultSet.getString("lap_seat_belt"),
		    		resultSet.getString("shoulder_seat_belt"),
		    		resultSet.getString("airbag"),
		    		resultSet.getString("wereyou"),
		    		resultSet.getString("body_position"),
		    		resultSet.getString("body_position1"),
		    		resultSet.getString("head_position"),
		    		resultSet.getString("head_position1"),
		    		resultSet.getString("hands_on_wheel"),
		    		resultSet.getString("aware_of_crash"),
		    		resultSet.getString("brace"),
		    		resultSet.getString("ifyes"),
		    		resultSet.getString("further_injury"),
		    		resultSet.getString("injurytext"),		    		
		    		resultSet.getString("patient_body"),
		    		resultSet.getString("patient_body1"),
		    		resultSet.getString("body_strike"),
		    		resultSet.getString("head_hit"),
		    		resultSet.getString("rlshoulder_hit"),
		    		resultSet.getString("rlhip_hit"),
		    		resultSet.getString("rlknee_hit"),
		    		resultSet.getString("chest_hit"),
		    		resultSet.getString("rlarm_hit"),
		    		resultSet.getString("rlleg_hit"),
		    		resultSet.getString("otherpart_hit"),
		    		resultSet.getString("wearing_glasses"),
		    		resultSet.getString("glasses_impact"),
		    		resultSet.getString("unconscious"),
		    		resultSet.getString("uncon"),
		    		resultSet.getString("estimated_amount"),
		    		resultSet.getString("damage"),
		    		resultSet.getString("was_anyone_cited"),
		    		resultSet.getString("who"),
		    		resultSet.getString("headache"),
		    		resultSet.getString("dizziness"),
		    		resultSet.getString("nausea"),
		    		resultSet.getString("confusion"),
		    		resultSet.getString("disorientation"),
		    		resultSet.getString("neckpain"),
		    		resultSet.getString("otherpain"),
		    		resultSet.getString("otherpaintext"),
		    		resultSet.getString("first_symptom"),
		    		resultSet.getString("symptom"),
		    		resultSet.getString("after_accident"),
		    		resultSet.getString("accident"),
		    		resultSet.getString("hosname"),
		    		resultSet.getString("city"),
		    		resultSet.getString("staylength"),
		    		resultSet.getString("hospitalget"),
		    		resultSet.getString("hospital1"),
		    		resultSet.getString("xray"),
		    		resultSet.getString("wrong")));
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
    return Autoaccident;
	
}
public List<Autoaccident> getAuto(String patient_number){
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	
	List<Autoaccident> Autoaccident = new ArrayList<Autoaccident>();
    try{
		resultSet = statement.executeQuery("select * from tbl_autoaccident where patient_number='"+patient_number+"'");
		while(resultSet.next()){
			Autoaccident.add(new Autoaccident(resultSet.getString("patient_number"),resultSet.getString("claimnumber"),
		    		resultSet.getString("adjustersname"),
		    		resultSet.getString("estimate"),
		    		resultSet.getString("seating"),
		    		resultSet.getString("companion"),
		    		resultSet.getString("vehicle_make"),
		    		resultSet.getString("vehicle_model"),
		    		resultSet.getString("vehicle_year"),
		    		resultSet.getString("vehicle_hit"),
		    		resultSet.getString("other_vehicle_make"),
		    		resultSet.getString("other_vehicle_model"),
		    		resultSet.getString("other_vehicle_year"),
		    		resultSet.getString("carstopped"),
		    		resultSet.getString("driverposition"),
		    		resultSet.getString("vehicle_moving_time"),
		    		resultSet.getString("wascar"),
		    		resultSet.getString("estimated_rate"),
		    		resultSet.getString("time_of_day"),
		    		resultSet.getString("road_conditions"),
		    		resultSet.getString("conditions"),
		    		resultSet.getString("head_restraints"),
		    		resultSet.getString("seatpos_after_accident"),
		    		resultSet.getString("seat_after_accident"),
		    		resultSet.getString("lap_seat_belt"),
		    		resultSet.getString("shoulder_seat_belt"),
		    		resultSet.getString("airbag"),
		    		resultSet.getString("wereyou"),
		    		resultSet.getString("body_position"),
		    		resultSet.getString("body_position1"),
		    		resultSet.getString("head_position"),
		    		resultSet.getString("head_position1"),
		    		resultSet.getString("hands_on_wheel"),
		    		resultSet.getString("aware_of_crash"),
		    		resultSet.getString("brace"),
		    		resultSet.getString("ifyes"),
		    		resultSet.getString("further_injury"),
		    		resultSet.getString("injurytext"),		    		
		    		resultSet.getString("patient_body"),
		    		resultSet.getString("patient_body1"),
		    		resultSet.getString("body_strike"),
		    		resultSet.getString("head_hit"),
		    		resultSet.getString("rlshoulder_hit"),
		    		resultSet.getString("rlhip_hit"),
		    		resultSet.getString("rlknee_hit"),
		    		resultSet.getString("chest_hit"),
		    		resultSet.getString("rlarm_hit"),
		    		resultSet.getString("rlleg_hit"),
		    		resultSet.getString("otherpart_hit"),
		    		resultSet.getString("wearing_glasses"),
		    		resultSet.getString("glasses_impact"),
		    		resultSet.getString("unconscious"),
		    		resultSet.getString("uncon"),
		    		resultSet.getString("estimated_amount"),
		    		resultSet.getString("damage"),
		    		resultSet.getString("was_anyone_cited"),
		    		resultSet.getString("who"),
		    		resultSet.getString("headache"),
		    		resultSet.getString("dizziness"),
		    		resultSet.getString("nausea"),
		    		resultSet.getString("confusion"),
		    		resultSet.getString("disorientation"),
		    		resultSet.getString("neckpain"),
		    		resultSet.getString("otherpain"),
		    		resultSet.getString("otherpaintext"),
		    		resultSet.getString("first_symptom"),
		    		resultSet.getString("symptom"),
		    		resultSet.getString("after_accident"),
		    		resultSet.getString("accident"),
		    		resultSet.getString("hosname"),
		    		resultSet.getString("city"),
		    		resultSet.getString("staylength"),
		    		resultSet.getString("hospitalget"),
		    		resultSet.getString("hospital1"),
		    		resultSet.getString("xray"),
		    		resultSet.getString("wrong")));
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
    return Autoaccident;
	
}


public int updateautoaccident(Autoaccident autoaccident,String patient_number,String admin)
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
    	String cmd="UPDATE tbl_autoaccident SET claimnumber='"+autoaccident.getClaimnumber()+"',adjustersname='"+autoaccident.getAdjustersname()+"',estimate='"+autoaccident.getEstimate()+"',seating='"+autoaccident.getSeating()+"',companion='"+autoaccident.getCompanion()+"',vehicle_make='"+autoaccident.getVehicle_make()+"',vehicle_model='"+autoaccident.getVehicle_model()+"',vehicle_year='"+autoaccident.getVehicle_year()+"',vehicle_hit='"+autoaccident.getVehicle_hit()+"',other_vehicle_make='"+autoaccident.getOther_vehicle_make()+"',other_vehicle_model='"+autoaccident.getOther_vehicle_model()+"',other_vehicle_year='"+autoaccident.getOther_vehicle_year()+"',carstopped='"+autoaccident.getCarstopped()+"',driverposition='"+autoaccident.getDriverposition()+"',vehicle_moving_time='"+autoaccident.getVehicle_moving_time()+"',wascar='"+autoaccident.getWascar()+"',estimated_rate='"+autoaccident.getEstimated_rate()+"',time_of_day='"+autoaccident.getTime_of_day()+"',road_conditions='"+autoaccident.getRoad_conditions()+"',conditions='"+autoaccident.getConditions()+"',head_restraints='"+autoaccident.getHead_restraints()+"',seatpos_after_accident='"+autoaccident.getSeatpos_after_accident()+"',seat_after_accident='"+autoaccident.getSeat_after_accident()+"',lap_seat_belt='"+autoaccident.getLap_seat_belt()+"',shoulder_seat_belt='"+autoaccident.getShoulder_seat_belt()+"',airbag='"+autoaccident.getAirbag()+"',wereyou='"+autoaccident.getWereyou()+"',body_position='"+autoaccident.getBody_position()+"',body_position1='"+autoaccident.getBody_position1()+"',head_position='"+autoaccident.getHead_position()+"',head_position1='"+autoaccident.getHead_position1()+"',hands_on_wheel='"+autoaccident.getHands_on_wheel()+"',aware_of_crash='"+autoaccident.getAware_of_crash()+"',brace='"+autoaccident.getBrace()+"',ifyes='"+autoaccident.getIfyes()+"',further_injury='"+autoaccident.getFurther_injury()+"',injurytext='"+autoaccident.getInjurytext()+"',patient_body='"+autoaccident.getPatient_body()+"',patient_body1='"+autoaccident.getPatient_body1()+"',body_strike='"+autoaccident.getBody_strike()+"',head_hit='"+autoaccident.getHead_hit()+"',rlshoulder_hit='"+autoaccident.getRlshoulder_hit()+"',rlhip_hit='"+autoaccident.getRlhip_hit()+"',rlknee_hit='"+autoaccident.getRlknee_hit()+"',chest_hit='"+autoaccident.getChest_hit()+"',rlarm_hit='"+autoaccident.getRlarm_hit()+"',rlleg_hit='"+autoaccident.getRlleg_hit()+"',otherpart_hit='"+autoaccident.getOtherpart_hit()+"',wearing_glasses='"+autoaccident.getWearing_glasses()+"',glasses_impact='"+autoaccident.getGlasses_impact()+"',unconscious='"+autoaccident.getUnconscious()+"',uncon='"+autoaccident.getUncon()+"',estimated_amount='"+autoaccident.getEstimated_amount()+"',damage='"+autoaccident.getDamage()+"',was_anyone_cited='"+autoaccident.getWas_anyone_cited()+"',who='"+autoaccident.getWho()+"',headache='"+autoaccident.getHeadache()+"',dizziness='"+autoaccident.getDizziness()+"',nausea='"+autoaccident.getNausea()+"',confusion='"+autoaccident.getConfusion()+"',disorientation='"+autoaccident.getDisorientation()+"',neckpain='"+autoaccident.getNeckpain()+"',otherpain='"+autoaccident.getOtherpain()+"',otherpaintext='"+autoaccident.getOtherpaintext()+"',first_symptom='"+autoaccident.getFirst_symptom()+"',symptom='"+autoaccident.getSymptom()+"',after_accident='"+autoaccident.getAfter_accident()+"',accident='"+autoaccident.getAccident()+"',hosname='"+autoaccident.getHosname()+"',city='"+autoaccident.getCity()+"',staylength='"+autoaccident.getStaylength()+"',hospitalget='"+autoaccident.getHospitalget()+"',hospital1='"+autoaccident.getHospital1()+"',xray='"+autoaccident.getXray()+"',wrong='"+autoaccident.getWrong()+"' WHERE patient_number='"+patient_number+"';";
    			
    			String Desc="Update autoaccident "+autoaccident.getClaimnumber();
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

public int deleteautoaccident(/*String patient_number,*/Principal principal){
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
		/*DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    	 Date date = new Date();
    	 String cmd_getpatient_pname="select * from tbl_autoaccident where patient_number='"+patient_number+"'";
    	 String Desc="Delete report ";
    	 resultSet=statement.executeQuery(cmd_getpatient_pname);
			
			if(resultSet.next())
				Desc=Desc+resultSet.getString(1);*/
			statement.execute("delete from tbl_autoaccident where username='"+principal.getName()+"'");
			
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
public List<Autoaccident> getlimitedautoaccident(int page) {
	Connection con = null;
	Statement statement = null;
	ResultSet resultSet = null;
	
	
	try {
		con = dataSource.getConnection();
		statement = con.createStatement();
	} catch (SQLException e1) {
		e1.printStackTrace();
	}
	List<Autoaccident> Autoaccident = new ArrayList<Autoaccident>();
	try {

		String cmd;
		int offset = 5 * (page - 1);
		int limit = 5;
		
			
				cmd = "select * from tbl_autoaccident order by adjustersname asc limit " + offset + ","+ limit+"" ;

		resultSet = statement.executeQuery(cmd);
		while (resultSet.next()) {
			Autoaccident.add(new Autoaccident(resultSet.getString("patient_number"),resultSet.getString("claimnumber"),
		    		resultSet.getString("adjustersname"),
		    		resultSet.getString("estimate"),
		    		resultSet.getString("seating"),
		    		resultSet.getString("companion"),
		    		resultSet.getString("vehicle_make"),
		    		resultSet.getString("vehicle_model"),
		    		resultSet.getString("vehicle_year"),
		    		resultSet.getString("vehicle_hit"),
		    		resultSet.getString("other_vehicle_make"),
		    		resultSet.getString("other_vehicle_model"),
		    		resultSet.getString("other_vehicle_year"),
		    		resultSet.getString("carstopped"),
		    		resultSet.getString("driverposition"),
		    		resultSet.getString("vehicle_moving_time"),
		    		resultSet.getString("wascar"),
		    		resultSet.getString("estimated_rate"),
		    		resultSet.getString("time_of_day"),
		    		resultSet.getString("road_conditions"),
		    		resultSet.getString("conditions"),
		    		resultSet.getString("head_restraints"),
		    		resultSet.getString("seatpos_after_accident"),
		    		resultSet.getString("seat_after_accident"),
		    		resultSet.getString("lap_seat_belt"),
		    		resultSet.getString("shoulder_seat_belt"),
		    		resultSet.getString("airbag"),
		    		resultSet.getString("wereyou"),
		    		resultSet.getString("body_position"),
		    		resultSet.getString("body_position1"),
		    		resultSet.getString("head_position"),
		    		resultSet.getString("head_position1"),
		    		resultSet.getString("hands_on_wheel"),
		    		resultSet.getString("aware_of_crash"),
		    		resultSet.getString("brace"),
		    		resultSet.getString("ifyes"),
		    		resultSet.getString("further_injury"),
		    		resultSet.getString("injurytext"),		    		
		    		resultSet.getString("patient_body"),
		    		resultSet.getString("patient_body1"),
		    		resultSet.getString("body_strike"),
		    		resultSet.getString("head_hit"),
		    		resultSet.getString("rlshoulder_hit"),
		    		resultSet.getString("rlhip_hit"),
		    		resultSet.getString("rlknee_hit"),
		    		resultSet.getString("chest_hit"),
		    		resultSet.getString("rlarm_hit"),
		    		resultSet.getString("rlleg_hit"),
		    		resultSet.getString("otherpart_hit"),
		    		resultSet.getString("wearing_glasses"),
		    		resultSet.getString("glasses_impact"),
		    		resultSet.getString("unconscious"),
		    		resultSet.getString("uncon"),
		    		resultSet.getString("estimated_amount"),
		    		resultSet.getString("damage"),
		    		resultSet.getString("was_anyone_cited"),
		    		resultSet.getString("who"),
		    		resultSet.getString("headache"),
		    		resultSet.getString("dizziness"),
		    		resultSet.getString("nausea"),
		    		resultSet.getString("confusion"),
		    		resultSet.getString("disorientation"),
		    		resultSet.getString("neckpain"),
		    		resultSet.getString("otherpain"),
		    		resultSet.getString("otherpaintext"),
		    		resultSet.getString("first_symptom"),
		    		resultSet.getString("symptom"),
		    		resultSet.getString("after_accident"),
		    		resultSet.getString("accident"),
		    		resultSet.getString("hosname"),
		    		resultSet.getString("city"),
		    		resultSet.getString("staylength"),
		    		resultSet.getString("hospitalget"),
		    		resultSet.getString("hospital1"),
		    		resultSet.getString("xray"),
		    		resultSet.getString("wrong")));
				
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
	return Autoaccident;

}
public int getnoofautoaccident() {
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
	List<Autoaccident> Autoaccident = new ArrayList<Autoaccident>();
	try {

		String cmd;
		
				cmd = "select count(*) as noofrecords from tbl_autoaccident";
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

	
