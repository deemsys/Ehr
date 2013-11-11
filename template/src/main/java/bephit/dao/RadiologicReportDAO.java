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
import bephit.model.RadiologicReport;


public class RadiologicReportDAO
{
	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	public int setRadiologicReport(RadiologicReport radiologicReport)
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
	    	 DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	    	 Date date = new Date();
	    	 String cmd="INSERT INTO tbl_radiologicreport(pname,date,id,dob,views1,negative_1,positive_1,break_1,adi_1,hypolordosis_1,normalcurvature_1,hyperlordosis_1,hyperlordosis_select1,mcGregorslinenormal_1,mcGregorslineinterupted_1,degenerativejointdisease_1,degenerativejointdisease_select1,mild_1,moderate_1,severe_1,narrowed_1,anterior_1,subchondral_1,subchondral_text1,schmorls_1,schmorls_text1,foraminal_1,foraminal_select1,osteoporosis_1,osteoporosis_select1,decreasedFlexExt_1,decreasedFlexExt_select1,decreasedRLFlex_1,decreasedRLFlex_select1,dextro_Levoscoliosis_towering_select1,mild_11,moderate_11,severe_11,apexat_1,apexat_text1,softtissueedemaof_1,softtissueedemaof_text1,other_1,other_text1,views2,negative_2,hyperkyphosis_2,normalkyphosis_2,hypokyphosis_2,degenerative_2,degenerative_text2,mild_2,moderate_2,severe_2,narrowed_2,narrowed_text2,schmorlsnodesat_2,schmorlsnodesat_text2,anterior_2,anterior_text2,subchondral_2,subchondral_text2,foraminal_2,foraminal_text2,osteoporosis_2,osteoporosis_select2,dextro_Levoscoliosis_towering_select2,mild_22,moderate_22,severe_22,apexat_2,apexat_text2,softtissueedemaof_2,softtissueedemaof_text2,other_2,other_text2,views3,negative_3,break_3,break_text3,osteoporosis_3,osteoporosis_select3,hyperkyphosis_3,normalkyphosis_3,hypokyphosis_3,hypokyphosos_select_3,degenerative_3,degenerative_select3,mild_3,moderate_3,severe_3,narrowed_3,narrowed_text3,anterior_3,anterior_text3,subchondral_3,subchondral_text3,schmorls_3,schmorls_text3,spondylolisthesisof_3,spondylolisthesisof_select3,other_text3,grade_3,decreasedRLF_3,decreasedLLF_3,facettropism_3,sacralization_3,lumbarization_3,dextro_Levoscoliosis_towering_select3,mild_33,moderate_33,severe_33,apexat_3,apexat_text3,softtissueedemaof_3,softtissueedemaof_text3,other_3,other_text33,views4,normal_4,positivefor_4) VALUES('"+radiologicReport.getPname()+"','"+radiologicReport.getDate()+"','"+radiologicReport.getId()+"','"+radiologicReport.getDob()+"','"+radiologicReport.getViews1()+"','"+radiologicReport.getNegative_1()+"','"+radiologicReport.getPositive_1()+"','"+radiologicReport.getBreak_1()+"','"+radiologicReport.getAdi_1()+"','"+radiologicReport.getHypolorodosis_1()+"','"+radiologicReport.getNormalcurvature_1()+"','"+radiologicReport.getHyperlordosis_1()+"','"+radiologicReport.getHyperlordosis_select1()+"','"+radiologicReport.getMcGregorslinenormal_1()+"','"+radiologicReport.getMcGregorslineinterupted_1()+"','"+radiologicReport.getDegenerativejointdisease_1()+"','"+radiologicReport.getDegenerativejointdisease_select1()+"','"+radiologicReport.getMild_1()+"','"+radiologicReport.getModerate_1()+"','"+radiologicReport.getSevere_1()+"','"+radiologicReport.getNarrowed_1()+"','"+radiologicReport.getAnterior_1()+"','"+radiologicReport.getSubchondral_1()+"','"+radiologicReport.getSubchondral_text1()+"','"+radiologicReport.getSchmorls_1()+"','"+radiologicReport.getSchmorls_text1()+"','"+radiologicReport.getForaminal_1()+"','"+radiologicReport.getForaminal_select1()+"','"+radiologicReport.getOsteoporosis_1()+"','"+radiologicReport.getOsteoporosis_select1()+"','"+radiologicReport.getDecreasedFlexExt_1()+"','"+radiologicReport.getDecreasedFlexExt_select1()+"','"+radiologicReport.getDecreasedRLFlex_1()+"','"+radiologicReport.getDecreasedRLFlex_select1()+"','"+radiologicReport.getDextro_Levoscoliosis_towering_select1()+"','"+radiologicReport.getMild_11()+"','"+radiologicReport.getModerate_11()+"','"+radiologicReport.getSevere_11()+"','"+radiologicReport.getApexat_1()+"','"+radiologicReport.getApexat_text1()+"','"+radiologicReport.getSofttissueedemaof_1()+"','"+radiologicReport.getSofttissueedemaof_text1()+"','"+radiologicReport.getOther_1()+"','"+radiologicReport.getOther_text1()+"','"+radiologicReport.getViews2()+"','"+radiologicReport.getNegative_2()+"','"+radiologicReport.getHyperkyphosis_2()+"','"+radiologicReport.getNormalkyphosis_2()+"','"+radiologicReport.getHypokyphosis_2()+"','"+radiologicReport.getDegenerative_2()+"','"+radiologicReport.getDegenerative_text2()+"','"+radiologicReport.getMild_2()+"','"+radiologicReport.getModerate_2()+"','"+radiologicReport.getSevere_2()+"','"+radiologicReport.getNarrowed_2()+"','"+radiologicReport.getNarrowed_text2()+"','"+radiologicReport.getSchmorlsnodesat_2()+"','"+radiologicReport.getSchmorlsnodesat_text2()+"','"+radiologicReport.getAnterior_2()+"','"+radiologicReport.getAnterior_text2()+"','"+radiologicReport.getSubchondral_2()+"','"+radiologicReport.getSubchondral_text2()+"','"+radiologicReport.getForaminal_2()+"','"+radiologicReport.getForaminal_text2()+"','"+radiologicReport.getOsteoporosis_2()+"','"+radiologicReport.getOsteoporosis_select2()+"','"+radiologicReport.getDextro_Levoscoliosis_towering_select2()+"','"+radiologicReport.getMild_22()+"','"+radiologicReport.getModerate_22()+"','"+radiologicReport.getSevere_22()+"','"+radiologicReport.getApexat_2()+"','"+radiologicReport.getApexat_text2()+"','"+radiologicReport.getSofttissueedemaof_2()+"','"+radiologicReport.getSofttissueedemaof_text2()+"','"+radiologicReport.getOther_2()+"','"+radiologicReport.getOther_text2()+"','"+radiologicReport.getViews3()+"','"+radiologicReport.getNegative_3()+"','"+radiologicReport.getBreak_3()+"','"+radiologicReport.getBreak_text3()+"','"+radiologicReport.getOsteoporosis_3()+"','"+radiologicReport.getOsteoporosis_select3()+"','"+radiologicReport.getHyperkyphosis_3()+"','"+radiologicReport.getNormalkyphosis_3()+"','"+radiologicReport.getHypokyphosis_3()+"','"+radiologicReport.getHypokyphosos_select_3()+"','"+radiologicReport.getDegenerative_3()+"','"+radiologicReport.getDegenerative_select3()+"','"+radiologicReport.getMild_3()+"','"+radiologicReport.getModerate_3()+"','"+radiologicReport.getSevere_3()+"','"+radiologicReport.getNarrowed_3()+"','"+radiologicReport.getNarrowed_text3()+"','"+radiologicReport.getAnterior_3()+"','"+radiologicReport.getAnterior_text3()+"','"+radiologicReport.getSubchondral_3()+"','"+radiologicReport.getSubchondral_text3()+"','"+radiologicReport.getSchmorls_3()+"','"+radiologicReport.getSchmorls_text3()+"','"+radiologicReport.getSpondylolisthesisof_3()+"','"+radiologicReport.getSpondylolisthesisof_select3()+"','"+radiologicReport.getOther_text3()+"','"+radiologicReport.getGrade_3()+"','"+radiologicReport.getDecreasedRLF_3()+"','"+radiologicReport.getDecreasedLLF_3()+"','"+radiologicReport.getFacettropism_3()+"','"+radiologicReport.getSacralization_3()+"','"+radiologicReport.getLumbarization_3()+"','"+radiologicReport.getDextro_Levoscoliosis_towering_select3()+"','"+radiologicReport.getMild_33()+"','"+radiologicReport.getModerate_33()+"','"+radiologicReport.getSevere_33()+"','"+radiologicReport.getApexat_3()+"','"+radiologicReport.getApexat_text3()+"','"+radiologicReport.getSofttissueedemaof_3()+"','"+radiologicReport.getSofttissueedemaof_text3()+"','"+radiologicReport.getOther_3()+"','"+radiologicReport.getOther_text33()+"','"+radiologicReport.getViews4()+"','"+radiologicReport.getNormal_4()+"','"+radiologicReport.getPositivefor_4()+"') " ;
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
	
	 	public List<RadiologicReport> getRadiologicReport()
	 	{
	 		Connection con = null;
	 		Statement statement = null;
	 		ResultSet resultSet = null;
	 		try {
	 			con = dataSource.getConnection();
	 			statement = con.createStatement();
	 		} catch (SQLException e1) {
	 			e1.printStackTrace();
	 		}
	 		List<RadiologicReport> radiologicReport = new ArrayList<RadiologicReport>();
	 		try{
	 			resultSet = statement.executeQuery("select * from tbl_radiologicreport");
	 			while(resultSet.next()){
	 				radiologicReport.add(new RadiologicReport(resultSet.getString("pname"),resultSet.getString("date"),resultSet.getString("id"),resultSet.getString("dob"),
	 						resultSet.getString("views1"),resultSet.getString("negative_1"),resultSet.getString("positive_1"),resultSet.getString("break_1"),resultSet.getString("adi_1"),resultSet.getString("hypolordosis_1"),resultSet.getString("normalcurvature_1"),resultSet.getString("hyperlordosis_1"),resultSet.getString("hyperlordosis_select1"),
	 						resultSet.getString("mcGregorslinenormal_1"),resultSet.getString("mcGregorslineinterupted_1"),resultSet.getString("degenerativejointdisease_1"),resultSet.getString("degenerativejointdisease_select1"),resultSet.getString("mild_1"),resultSet.getString("moderate_1"),resultSet.getString("severe_1"),resultSet.getString("narrowed_1"),resultSet.getString("anterior_1"),resultSet.getString("subchondral_1"),resultSet.getString("subchondral_text1"),resultSet.getString("schmorls_1"),resultSet.getString("schmorls_text1"),resultSet.getString("foraminal_1"),resultSet.getString("foraminal_select1"),resultSet.getString("osteoporosis_1"),resultSet.getString("osteoporosis_select1"),resultSet.getString("decreasedFlexExt_1"),
	 						resultSet.getString("decreasedFlexExt_select1"),resultSet.getString("decreasedRLFlex_1"),resultSet.getString("decreasedRLFlex_select1"),resultSet.getString("dextro_Levoscoliosis_towering_select1"),resultSet.getString("mild_11"),resultSet.getString("moderate_11"),resultSet.getString("severe_11"),resultSet.getString("apexat_1"),resultSet.getString("apexat_text1"),resultSet.getString("softtissueedemaof_1"),resultSet.getString("softtissueedemaof_text1"),resultSet.getString("other_1"),resultSet.getString("other_text1"),
	 						resultSet.getString("views2"),resultSet.getString("negative_2"),resultSet.getString("hyperkyphosis_2"),resultSet.getString("normalkyphosis_2"),resultSet.getString("hypokyphosis_2"),
	 						resultSet.getString("degenerative_2"),resultSet.getString("degenerative_text2"),resultSet.getString("mild_2"),resultSet.getString("moderate_2"),resultSet.getString("severe_2"),resultSet.getString("narrowed_2"),resultSet.getString("narrowed_text2"),resultSet.getString("schmorlsnodesat_2"),resultSet.getString("schmorlsnodesat_text2"),resultSet.getString("anterior_2"),resultSet.getString("anterior_text2"),resultSet.getString("subchondral_2"),resultSet.getString("subchondral_text2"),resultSet.getString("foraminal_2"),resultSet.getString("foraminal_text2"),resultSet.getString("osteoporosis_2"),resultSet.getString("osteoporosis_select2"),resultSet.getString("dextro_Levoscoliosis_towering_select2"),resultSet.getString("mild_22"),resultSet.getString("moderate_22"),resultSet.getString("severe_22"),resultSet.getString("apexat_2"),resultSet.getString("apexat_text2"),resultSet.getString("softtissueedemaof_2"),resultSet.getString("softtissueedemaof_text2"),resultSet.getString("other_2"),resultSet.getString("other_text2"),
	 						resultSet.getString("views3"),resultSet.getString("negative_3"),resultSet.getString("break_3"),resultSet.getString("break_text3"),resultSet.getString("osteoporosis_3"),resultSet.getString("osteoporosis_select3"),resultSet.getString("hyperkyphosis_3"),resultSet.getString("normalkyphosis_3"),resultSet.getString("hypokyphosis_3"),resultSet.getString("hypokyphosos_select_3"),resultSet.getString("degenerative_3"),resultSet.getString("degenerative_select3"),resultSet.getString("mild_3"),resultSet.getString("moderate_3"),resultSet.getString("severe_3"),resultSet.getString("narrowed_3"),resultSet.getString("narrowed_text3"),resultSet.getString("anterior_3"),resultSet.getString("anterior_text3"),resultSet.getString("subchondral_3"),resultSet.getString("subchondral_text3"),resultSet.getString("schmorls_3"),resultSet.getString("schmorls_text3"),resultSet.getString("spondylolisthesisof_3"),resultSet.getString("spondylolisthesisof_select3"),resultSet.getString("other_text3"),resultSet.getString("grade_3"),resultSet.getString("decreasedRLF_3"),resultSet.getString("decreasedLLF_3"),resultSet.getString("facettropism_3"),resultSet.getString("sacralization_3"),
	 						resultSet.getString("lumbarization_3"),resultSet.getString("dextro_Levoscoliosis_towering_select3"),resultSet.getString("mild_33"),resultSet.getString("moderate_33"),resultSet.getString("severe_33"),resultSet.getString("apexat_3"),resultSet.getString("apexat_text3"),resultSet.getString("softtissueedemaof_3"),resultSet.getString("softtissueedemaof_text3"),resultSet.getString("other_3"),resultSet.getString("other_text33"),
	 						resultSet.getString("views4"),resultSet.getString("normal_4"),resultSet.getString("positivefor_4")));
	 						
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
	 	    return radiologicReport;
	 		
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