package bephit.model;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * 
 * @author Administrator
 * Date 
 *
 * This is a form which is equivalent for Radiological form.
 * There are 4 tabs in the UI but all the data is captured with this single model.
 */
public class RadiologicReport{
	private String pid;
	
	private String patient_id;
	
	@NotEmpty
	private String pname;
	
	@NotEmpty
	private String date;
	
	@NotEmpty
	private String id;
	
	@NotEmpty
	private String dob;
	
	private String views1;
	private String negative_1;
	private String positive_for;
	private String positive_text1;
	private String break_1;
	private String break_text1;
	private String adi_1;
	private String hypolorodosis_1;
	private String hypolordosis_select1;
	private String normalcurvature_1;
	private String normalcurvature_select1;
	private String hyperlordosis_1;
	private String hyperlordosis_select1;
	private String mcGregorslinenormal_1;
	private String mcGregorslineinterupted_1;
	private String degenerativejointdisease_1;
	private String degenerativejointdisease_select1;
	private String mild_1;
	private String moderate_1;
	private String severe_1;
	private String narrowed_1;
	private String narrowed_text1;
	private String anterior_1;
	private String anterior_text1;
	private String subchondral_1;
	private String subchondral_text1;
	private String schmorls_1;
	private String schmorls_text1;
	private String foraminal_1;
	private String foraminal_select1;
	private String osteoporosis_1;
	private String osteoporosis_select1;
	private String decreasedFlexExt_1;
	private String decreasedFlexExt_select1;
	private String decreasedRLFlex_1;
	private String decreasedRLFlex_select1;
	private String dextro_Levoscoliosis_towering_select1;
	private String mild_11;
	private String moderate_11;
	private String severe_11;
	private String apexat_1;
	private String apexat_text1;
	private String softtissueedemaof_1;
	private String softtissueedemaof_text1;
	private String other_1;
	private String other_text1;
	
	private String views2;
	private String negative_2;
	private String hyperkyphosis_2;
	private String hyperkyphosis_select2;
	private String normalkyphosis_2;
	private String normalkyphosis_select2;
	private String hypokyphosis_2;
	private String hypokyphosis_select2;
	private String degenerative_2;
	private String degenerative_text2;
	private String mild_2;
	private String moderate_2;
	private String severe_2;
	private String narrowed_2;
	private String narrowed_text2;
	private String schmorlsnodesat_2;
	private String schmorlsnodesat_text2;
	private String anterior_2;
	private String anterior_text2;
	private String subchondral_2;
	private String subchondral_text2;
	private String foraminal_2;
	private String foraminal_text2;
	private String osteoporosis_2;
	private String osteoporosis_select2;
	private String dextro_Levoscoliosis_towering_select2;
	private String mild_22;
	private String moderate_22;
	private String severe_22;
	private String apexat_2;
	private String apexat_text2;
	private String softtissueedemaof_2;
	private String softtissueedemaof_text2;
	private String other_2;
	private String other_text2;
	
	
	private String views3;
	private String negative_3;
	private String break_3;
	private String break_text3;
	private String osteoporosis_3;
	private String osteoporosis_select3;
	private String hyperkyphosis_3;
	private String hyperkyphosis_select3;
	private String normalkyphosis_3;
	private String normalkyphosis_select3;
	private String hypokyphosis_3;
	private String hypokyphosos_select_3;
	private String degenerative_3;
	private String degenerative_select3;
	private String mild_3;
	private String moderate_3;
	private String severe_3;
	private String narrowed_3;
	private String narrowed_text3;
	private String anterior_3;
	private String anterior_text3;
	private String subchondral_3;
	private String subchondral_text3;
	private String schmorls_3;
	private String schmorls_text3;
	private String spondylolisthesisof_3;
	private String spondylolisthesisof_select3;
	private String other_text3;
	private String grade_3;
	private String decreasedRLF_3;
	private String decreasedLLF_3;
	private String facettropism_3;
	private String sacralization_3;
	private String lumbarization_3;
	private String dextro_Levoscoliosis_towering_select3;
	private String mild_33;
	private String moderate_33;
	private String severe_33;
	private String apexat_3;
	private String apexat_text3;
	private String softtissueedemaof_3;
	private String softtissueedemaof_text3;
	private String other_3;
	private String other_text33;
	
	
	private String views4;
	private String normal_4;
	private String positivefor_4;
	
	public RadiologicReport()
	{
		
	}

	/**
	 * 
	 * @param pid
	 * @param pname
	 * @param date
	 * @param id
	 * @param dob
	 * @param views1
	 * @param negative_1
	 * @param positive_for
	 * @param positive_text1
	 * @param break_1
	 * @param break_text1
	 * @param adi_1
	 * @param hypolorodosis_1
	 * @param normalcurvature_1
	 * @param hyperlordosis_1
	 * @param hyperlordosis_select1
	 * @param mcGregorslinenormal_1
	 * @param mcGregorslineinterupted_1
	 * @param degenerativejointdisease_1
	 * @param degenerativejointdisease_select1
	 * @param mild_1
	 * @param moderate_1
	 * @param severe_1
	 * @param narrowed_1
	 * @param narrowed_text1
	 * @param anterior_1
	 * @param anterior_text1
	 * @param subchondral_1
	 * @param subchondral_text1
	 * @param schmorls_1
	 * @param schmorls_text1
	 * @param foraminal_1
	 * @param foraminal_select1
	 * @param osteoporosis_1
	 * @param osteoporosis_select1
	 * @param decreasedFlexExt_1
	 * @param decreasedFlexExt_select1
	 * @param decreasedRLFlex_1
	 * @param decreasedRLFlex_select1
	 * @param dextro_Levoscoliosis_towering_select1
	 * @param mild_11
	 * @param moderate_11
	 * @param severe_11
	 * @param apexat_1
	 * @param apexat_text1
	 * @param softtissueedemaof_1
	 * @param softtissueedemaof_text1
	 * @param other_1
	 * @param other_text1
	 * @param views2
	 * @param negative_2
	 * @param hyperkyphosis_2
	 * @param normalkyphosis_2
	 * @param hypokyphosis_2
	 * @param degenerative_2
	 * @param degenerative_text2
	 * @param mild_2
	 * @param moderate_2
	 * @param severe_2
	 * @param narrowed_2
	 * @param narrowed_text2
	 * @param schmorlsnodesat_2
	 * @param schmorlsnodesat_text2
	 * @param anterior_2
	 * @param anterior_text2
	 * @param subchondral_2
	 * @param subchondral_text2
	 * @param foraminal_2
	 * @param foraminal_text2
	 * @param osteoporosis_2
	 * @param osteoporosis_select2
	 * @param dextro_Levoscoliosis_towering_select2
	 * @param mild_22
	 * @param moderate_22
	 * @param severe_22
	 * @param apexat_2
	 * @param apexat_text2
	 * @param softtissueedemaof_2
	 * @param softtissueedemaof_text2
	 * @param other_2
	 * @param other_text2
	 * @param views3
	 * @param negative_3
	 * @param break_3
	 * @param break_text3
	 * @param osteoporosis_3
	 * @param osteoporosis_select3
	 * @param hyperkyphosis_3
	 * @param normalkyphosis_3
	 * @param hypokyphosis_3
	 * @param hypokyphosos_select_3
	 * @param degenerative_3
	 * @param degenerative_select3
	 * @param mild_3
	 * @param moderate_3
	 * @param severe_3
	 * @param narrowed_3
	 * @param narrowed_text3
	 * @param anterior_3
	 * @param anterior_text3
	 * @param subchondral_3
	 * @param subchondral_text3
	 * @param schmorls_3
	 * @param schmorls_text3
	 * @param spondylolisthesisof_3
	 * @param spondylolisthesisof_select3
	 * @param other_text3
	 * @param grade_3
	 * @param decreasedRLF_3
	 * @param decreasedLLF_3
	 * @param facettropism_3
	 * @param sacralization_3
	 * @param lumbarization_3
	 * @param dextro_Levoscoliosis_towering_select3
	 * @param mild_33
	 * @param moderate_33
	 * @param severe_33
	 * @param apexat_3
	 * @param apexat_text3
	 * @param softtissueedemaof_3
	 * @param softtissueedemaof_text3
	 * @param other_3
	 * @param other_text33
	 * @param views4
	 * @param normal_4
	 * @param positivefor_4
	 */

	public String getPid() {
		return pid;
	}

	public RadiologicReport(String pid, String patient_id, String pname,
			String date, String id, String dob, String views1,
			String negative_1, String positive_for, String positive_text1,
			String break_1, String break_text1, String adi_1,
			String hypolorodosis_1, String hypolordosis_select1,
			String normalcurvature_1, String normalcurvature_select1,
			String hyperlordosis_1, String hyperlordosis_select1,
			String mcGregorslinenormal_1, String mcGregorslineinterupted_1,
			String degenerativejointdisease_1,
			String degenerativejointdisease_select1, String mild_1,
			String moderate_1, String severe_1, String narrowed_1,
			String narrowed_text1, String anterior_1, String anterior_text1,
			String subchondral_1, String subchondral_text1, String schmorls_1,
			String schmorls_text1, String foraminal_1,
			String foraminal_select1, String osteoporosis_1,
			String osteoporosis_select1, String decreasedFlexExt_1,
			String decreasedFlexExt_select1, String decreasedRLFlex_1,
			String decreasedRLFlex_select1,
			String dextro_Levoscoliosis_towering_select1, String mild_11,
			String moderate_11, String severe_11, String apexat_1,
			String apexat_text1, String softtissueedemaof_1,
			String softtissueedemaof_text1, String other_1, String other_text1,
			String views2, String negative_2, String hyperkyphosis_2,
			String hyperkyphosis_select2, String normalkyphosis_2,
			String normalkyphosis_select2, String hypokyphosis_2,
			String hypokyphosis_select2, String degenerative_2,
			String degenerative_text2, String mild_2, String moderate_2,
			String severe_2, String narrowed_2, String narrowed_text2,
			String schmorlsnodesat_2, String schmorlsnodesat_text2,
			String anterior_2, String anterior_text2, String subchondral_2,
			String subchondral_text2, String foraminal_2,
			String foraminal_text2, String osteoporosis_2,
			String osteoporosis_select2,
			String dextro_Levoscoliosis_towering_select2, String mild_22,
			String moderate_22, String severe_22, String apexat_2,
			String apexat_text2, String softtissueedemaof_2,
			String softtissueedemaof_text2, String other_2, String other_text2,
			String views3, String negative_3, String break_3,
			String break_text3, String osteoporosis_3,
			String osteoporosis_select3, String hyperkyphosis_3,
			String hyperkyphosis_select3, String normalkyphosis_3,
			String normalkyphosis_select3, String hypokyphosis_3,
			String hypokyphosos_select_3, String degenerative_3,
			String degenerative_select3, String mild_3, String moderate_3,
			String severe_3, String narrowed_3, String narrowed_text3,
			String anterior_3, String anterior_text3, String subchondral_3,
			String subchondral_text3, String schmorls_3, String schmorls_text3,
			String spondylolisthesisof_3, String spondylolisthesisof_select3,
			String other_text3, String grade_3, String decreasedRLF_3,
			String decreasedLLF_3, String facettropism_3,
			String sacralization_3, String lumbarization_3,
			String dextro_Levoscoliosis_towering_select3, String mild_33,
			String moderate_33, String severe_33, String apexat_3,
			String apexat_text3, String softtissueedemaof_3,
			String softtissueedemaof_text3, String other_3,
			String other_text33, String views4, String normal_4,
			String positivefor_4) {
		super();
		this.pid = pid;
		this.patient_id = patient_id;
		this.pname = pname;
		this.date = date;
		this.id = id;
		this.dob = dob;
		this.views1 = views1;
		this.negative_1 = negative_1;
		this.positive_for = positive_for;
		this.positive_text1 = positive_text1;
		this.break_1 = break_1;
		this.break_text1 = break_text1;
		this.adi_1 = adi_1;
		this.hypolorodosis_1 = hypolorodosis_1;
		this.hypolordosis_select1 = hypolordosis_select1;
		this.normalcurvature_1 = normalcurvature_1;
		this.normalcurvature_select1 = normalcurvature_select1;
		this.hyperlordosis_1 = hyperlordosis_1;
		this.hyperlordosis_select1 = hyperlordosis_select1;
		this.mcGregorslinenormal_1 = mcGregorslinenormal_1;
		this.mcGregorslineinterupted_1 = mcGregorslineinterupted_1;
		this.degenerativejointdisease_1 = degenerativejointdisease_1;
		this.degenerativejointdisease_select1 = degenerativejointdisease_select1;
		this.mild_1 = mild_1;
		this.moderate_1 = moderate_1;
		this.severe_1 = severe_1;
		this.narrowed_1 = narrowed_1;
		this.narrowed_text1 = narrowed_text1;
		this.anterior_1 = anterior_1;
		this.anterior_text1 = anterior_text1;
		this.subchondral_1 = subchondral_1;
		this.subchondral_text1 = subchondral_text1;
		this.schmorls_1 = schmorls_1;
		this.schmorls_text1 = schmorls_text1;
		this.foraminal_1 = foraminal_1;
		this.foraminal_select1 = foraminal_select1;
		this.osteoporosis_1 = osteoporosis_1;
		this.osteoporosis_select1 = osteoporosis_select1;
		this.decreasedFlexExt_1 = decreasedFlexExt_1;
		this.decreasedFlexExt_select1 = decreasedFlexExt_select1;
		this.decreasedRLFlex_1 = decreasedRLFlex_1;
		this.decreasedRLFlex_select1 = decreasedRLFlex_select1;
		this.dextro_Levoscoliosis_towering_select1 = dextro_Levoscoliosis_towering_select1;
		this.mild_11 = mild_11;
		this.moderate_11 = moderate_11;
		this.severe_11 = severe_11;
		this.apexat_1 = apexat_1;
		this.apexat_text1 = apexat_text1;
		this.softtissueedemaof_1 = softtissueedemaof_1;
		this.softtissueedemaof_text1 = softtissueedemaof_text1;
		this.other_1 = other_1;
		this.other_text1 = other_text1;
		this.views2 = views2;
		this.negative_2 = negative_2;
		this.hyperkyphosis_2 = hyperkyphosis_2;
		this.hyperkyphosis_select2 = hyperkyphosis_select2;
		this.normalkyphosis_2 = normalkyphosis_2;
		this.normalkyphosis_select2 = normalkyphosis_select2;
		this.hypokyphosis_2 = hypokyphosis_2;
		this.hypokyphosis_select2 = hypokyphosis_select2;
		this.degenerative_2 = degenerative_2;
		this.degenerative_text2 = degenerative_text2;
		this.mild_2 = mild_2;
		this.moderate_2 = moderate_2;
		this.severe_2 = severe_2;
		this.narrowed_2 = narrowed_2;
		this.narrowed_text2 = narrowed_text2;
		this.schmorlsnodesat_2 = schmorlsnodesat_2;
		this.schmorlsnodesat_text2 = schmorlsnodesat_text2;
		this.anterior_2 = anterior_2;
		this.anterior_text2 = anterior_text2;
		this.subchondral_2 = subchondral_2;
		this.subchondral_text2 = subchondral_text2;
		this.foraminal_2 = foraminal_2;
		this.foraminal_text2 = foraminal_text2;
		this.osteoporosis_2 = osteoporosis_2;
		this.osteoporosis_select2 = osteoporosis_select2;
		this.dextro_Levoscoliosis_towering_select2 = dextro_Levoscoliosis_towering_select2;
		this.mild_22 = mild_22;
		this.moderate_22 = moderate_22;
		this.severe_22 = severe_22;
		this.apexat_2 = apexat_2;
		this.apexat_text2 = apexat_text2;
		this.softtissueedemaof_2 = softtissueedemaof_2;
		this.softtissueedemaof_text2 = softtissueedemaof_text2;
		this.other_2 = other_2;
		this.other_text2 = other_text2;
		this.views3 = views3;
		this.negative_3 = negative_3;
		this.break_3 = break_3;
		this.break_text3 = break_text3;
		this.osteoporosis_3 = osteoporosis_3;
		this.osteoporosis_select3 = osteoporosis_select3;
		this.hyperkyphosis_3 = hyperkyphosis_3;
		this.hyperkyphosis_select3 = hyperkyphosis_select3;
		this.normalkyphosis_3 = normalkyphosis_3;
		this.normalkyphosis_select3 = normalkyphosis_select3;
		this.hypokyphosis_3 = hypokyphosis_3;
		this.hypokyphosos_select_3 = hypokyphosos_select_3;
		this.degenerative_3 = degenerative_3;
		this.degenerative_select3 = degenerative_select3;
		this.mild_3 = mild_3;
		this.moderate_3 = moderate_3;
		this.severe_3 = severe_3;
		this.narrowed_3 = narrowed_3;
		this.narrowed_text3 = narrowed_text3;
		this.anterior_3 = anterior_3;
		this.anterior_text3 = anterior_text3;
		this.subchondral_3 = subchondral_3;
		this.subchondral_text3 = subchondral_text3;
		this.schmorls_3 = schmorls_3;
		this.schmorls_text3 = schmorls_text3;
		this.spondylolisthesisof_3 = spondylolisthesisof_3;
		this.spondylolisthesisof_select3 = spondylolisthesisof_select3;
		this.other_text3 = other_text3;
		this.grade_3 = grade_3;
		this.decreasedRLF_3 = decreasedRLF_3;
		this.decreasedLLF_3 = decreasedLLF_3;
		this.facettropism_3 = facettropism_3;
		this.sacralization_3 = sacralization_3;
		this.lumbarization_3 = lumbarization_3;
		this.dextro_Levoscoliosis_towering_select3 = dextro_Levoscoliosis_towering_select3;
		this.mild_33 = mild_33;
		this.moderate_33 = moderate_33;
		this.severe_33 = severe_33;
		this.apexat_3 = apexat_3;
		this.apexat_text3 = apexat_text3;
		this.softtissueedemaof_3 = softtissueedemaof_3;
		this.softtissueedemaof_text3 = softtissueedemaof_text3;
		this.other_3 = other_3;
		this.other_text33 = other_text33;
		this.views4 = views4;
		this.normal_4 = normal_4;
		this.positivefor_4 = positivefor_4;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getViews1() {
		return views1;
	}

	public void setViews1(String views1) {
		this.views1 = views1;
	}

	public String getNegative_1() {
		return negative_1;
	}

	public void setNegative_1(String negative_1) {
		this.negative_1 = negative_1;
	}

	public String getPositive_for() {
		return positive_for;
	}

	public void setPositive_for(String positive_for) {
		this.positive_for = positive_for;
	}

	public String getPositive_text1() {
		return positive_text1;
	}

	public void setPositive_text1(String positive_text1) {
		this.positive_text1 = positive_text1;
	}

	public String getBreak_1() {
		return break_1;
	}

	public void setBreak_1(String break_1) {
		this.break_1 = break_1;
	}

	public String getBreak_text1() {
		return break_text1;
	}

	public void setBreak_text1(String break_text1) {
		this.break_text1 = break_text1;
	}

	public String getAdi_1() {
		return adi_1;
	}

	public void setAdi_1(String adi_1) {
		this.adi_1 = adi_1;
	}

	public String getHypolorodosis_1() {
		return hypolorodosis_1;
	}

	public void setHypolorodosis_1(String hypolorodosis_1) {
		this.hypolorodosis_1 = hypolorodosis_1;
	}

	public String getHypolordosis_select1() {
		return hypolordosis_select1;
	}

	public void setHypolordosis_select1(String hypolordosis_select1) {
		this.hypolordosis_select1 = hypolordosis_select1;
	}

	public String getNormalcurvature_select1() {
		return normalcurvature_select1;
	}

	public void setNormalcurvature_select1(String normalcurvature_select1) {
		this.normalcurvature_select1 = normalcurvature_select1;
	}

	public String getNormalcurvature_1() {
		return normalcurvature_1;
	}

	public void setNormalcurvature_1(String normalcurvature_1) {
		this.normalcurvature_1 = normalcurvature_1;
	}

	public String getHyperlordosis_1() {
		return hyperlordosis_1;
	}

	public void setHyperlordosis_1(String hyperlordosis_1) {
		this.hyperlordosis_1 = hyperlordosis_1;
	}

	public String getHyperlordosis_select1() {
		return hyperlordosis_select1;
	}

	public void setHyperlordosis_select1(String hyperlordosis_select1) {
		this.hyperlordosis_select1 = hyperlordosis_select1;
	}

	public String getMcGregorslinenormal_1() {
		return mcGregorslinenormal_1;
	}

	public void setMcGregorslinenormal_1(String mcGregorslinenormal_1) {
		this.mcGregorslinenormal_1 = mcGregorslinenormal_1;
	}

	public String getMcGregorslineinterupted_1() {
		return mcGregorslineinterupted_1;
	}

	public void setMcGregorslineinterupted_1(String mcGregorslineinterupted_1) {
		this.mcGregorslineinterupted_1 = mcGregorslineinterupted_1;
	}

	public String getDegenerativejointdisease_1() {
		return degenerativejointdisease_1;
	}

	public void setDegenerativejointdisease_1(String degenerativejointdisease_1) {
		this.degenerativejointdisease_1 = degenerativejointdisease_1;
	}

	public String getPatient_id() {
		return patient_id;
	}

	public void setPatient_id(String patient_id) {
		this.patient_id = patient_id;
	}

	public String getDegenerativejointdisease_select1() {
		return degenerativejointdisease_select1;
	}

	public void setDegenerativejointdisease_select1(
			String degenerativejointdisease_select1) {
		this.degenerativejointdisease_select1 = degenerativejointdisease_select1;
	}

	public String getMild_1() {
		return mild_1;
	}

	public void setMild_1(String mild_1) {
		this.mild_1 = mild_1;
	}

	public String getModerate_1() {
		return moderate_1;
	}

	public void setModerate_1(String moderate_1) {
		this.moderate_1 = moderate_1;
	}

	public String getSevere_1() {
		return severe_1;
	}

	public void setSevere_1(String severe_1) {
		this.severe_1 = severe_1;
	}

	public String getNarrowed_1() {
		return narrowed_1;
	}

	public void setNarrowed_1(String narrowed_1) {
		this.narrowed_1 = narrowed_1;
	}

	public String getNarrowed_text1() {
		return narrowed_text1;
	}

	public void setNarrowed_text1(String narrowed_text1) {
		this.narrowed_text1 = narrowed_text1;
	}

	public String getAnterior_1() {
		return anterior_1;
	}

	public void setAnterior_1(String anterior_1) {
		this.anterior_1 = anterior_1;
	}

	public String getAnterior_text1() {
		return anterior_text1;
	}

	public void setAnterior_text1(String anterior_text1) {
		this.anterior_text1 = anterior_text1;
	}

	public String getSubchondral_1() {
		return subchondral_1;
	}

	public void setSubchondral_1(String subchondral_1) {
		this.subchondral_1 = subchondral_1;
	}

	public String getSubchondral_text1() {
		return subchondral_text1;
	}

	public void setSubchondral_text1(String subchondral_text1) {
		this.subchondral_text1 = subchondral_text1;
	}

	public String getSchmorls_1() {
		return schmorls_1;
	}

	public void setSchmorls_1(String schmorls_1) {
		this.schmorls_1 = schmorls_1;
	}

	public String getSchmorls_text1() {
		return schmorls_text1;
	}

	public void setSchmorls_text1(String schmorls_text1) {
		this.schmorls_text1 = schmorls_text1;
	}

	public String getForaminal_1() {
		return foraminal_1;
	}

	public void setForaminal_1(String foraminal_1) {
		this.foraminal_1 = foraminal_1;
	}

	public String getForaminal_select1() {
		return foraminal_select1;
	}

	public void setForaminal_select1(String foraminal_select1) {
		this.foraminal_select1 = foraminal_select1;
	}

	public String getOsteoporosis_1() {
		return osteoporosis_1;
	}

	public void setOsteoporosis_1(String osteoporosis_1) {
		this.osteoporosis_1 = osteoporosis_1;
	}

	public String getOsteoporosis_select1() {
		return osteoporosis_select1;
	}

	public void setOsteoporosis_select1(String osteoporosis_select1) {
		this.osteoporosis_select1 = osteoporosis_select1;
	}

	public String getDecreasedFlexExt_1() {
		return decreasedFlexExt_1;
	}

	public void setDecreasedFlexExt_1(String decreasedFlexExt_1) {
		this.decreasedFlexExt_1 = decreasedFlexExt_1;
	}

	public String getDecreasedFlexExt_select1() {
		return decreasedFlexExt_select1;
	}

	public void setDecreasedFlexExt_select1(String decreasedFlexExt_select1) {
		this.decreasedFlexExt_select1 = decreasedFlexExt_select1;
	}

	public String getDecreasedRLFlex_1() {
		return decreasedRLFlex_1;
	}

	public void setDecreasedRLFlex_1(String decreasedRLFlex_1) {
		this.decreasedRLFlex_1 = decreasedRLFlex_1;
	}

	public String getDecreasedRLFlex_select1() {
		return decreasedRLFlex_select1;
	}

	public void setDecreasedRLFlex_select1(String decreasedRLFlex_select1) {
		this.decreasedRLFlex_select1 = decreasedRLFlex_select1;
	}

	public String getDextro_Levoscoliosis_towering_select1() {
		return dextro_Levoscoliosis_towering_select1;
	}

	public void setDextro_Levoscoliosis_towering_select1(
			String dextro_Levoscoliosis_towering_select1) {
		this.dextro_Levoscoliosis_towering_select1 = dextro_Levoscoliosis_towering_select1;
	}

	public String getMild_11() {
		return mild_11;
	}

	public void setMild_11(String mild_11) {
		this.mild_11 = mild_11;
	}

	public String getModerate_11() {
		return moderate_11;
	}

	public void setModerate_11(String moderate_11) {
		this.moderate_11 = moderate_11;
	}

	public String getSevere_11() {
		return severe_11;
	}

	public void setSevere_11(String severe_11) {
		this.severe_11 = severe_11;
	}

	public String getApexat_1() {
		return apexat_1;
	}

	public void setApexat_1(String apexat_1) {
		this.apexat_1 = apexat_1;
	}

	public String getApexat_text1() {
		return apexat_text1;
	}

	public void setApexat_text1(String apexat_text1) {
		this.apexat_text1 = apexat_text1;
	}

	public String getSofttissueedemaof_1() {
		return softtissueedemaof_1;
	}

	public void setSofttissueedemaof_1(String softtissueedemaof_1) {
		this.softtissueedemaof_1 = softtissueedemaof_1;
	}

	public String getSofttissueedemaof_text1() {
		return softtissueedemaof_text1;
	}

	public void setSofttissueedemaof_text1(String softtissueedemaof_text1) {
		this.softtissueedemaof_text1 = softtissueedemaof_text1;
	}

	public String getOther_1() {
		return other_1;
	}

	public void setOther_1(String other_1) {
		this.other_1 = other_1;
	}

	public String getOther_text1() {
		return other_text1;
	}

	public void setOther_text1(String other_text1) {
		this.other_text1 = other_text1;
	}

	public String getViews2() {
		return views2;
	}

	public void setViews2(String views2) {
		this.views2 = views2;
	}

	public String getNegative_2() {
		return negative_2;
	}

	public void setNegative_2(String negative_2) {
		this.negative_2 = negative_2;
	}

	public String getHyperkyphosis_2() {
		return hyperkyphosis_2;
	}

	public void setHyperkyphosis_2(String hyperkyphosis_2) {
		this.hyperkyphosis_2 = hyperkyphosis_2;
	}

	public String getHyperkyphosis_select2() {
		return hyperkyphosis_select2;
	}

	public void setHyperkyphosis_select2(String hyperkyphosis_select2) {
		this.hyperkyphosis_select2 = hyperkyphosis_select2;
	}

	public String getNormalkyphosis_select2() {
		return normalkyphosis_select2;
	}

	public void setNormalkyphosis_select2(String normalkyphosis_select2) {
		this.normalkyphosis_select2 = normalkyphosis_select2;
	}

	public String getHypokyphosis_select2() {
		return hypokyphosis_select2;
	}

	public void setHypokyphosis_select2(String hypokyphosis_select2) {
		this.hypokyphosis_select2 = hypokyphosis_select2;
	}

	public String getNormalkyphosis_2() {
		return normalkyphosis_2;
	}

	public void setNormalkyphosis_2(String normalkyphosis_2) {
		this.normalkyphosis_2 = normalkyphosis_2;
	}

	public String getHypokyphosis_2() {
		return hypokyphosis_2;
	}

	public void setHypokyphosis_2(String hypokyphosis_2) {
		this.hypokyphosis_2 = hypokyphosis_2;
	}

	public String getDegenerative_2() {
		return degenerative_2;
	}

	public void setDegenerative_2(String degenerative_2) {
		this.degenerative_2 = degenerative_2;
	}

	public String getDegenerative_text2() {
		return degenerative_text2;
	}

	public void setDegenerative_text2(String degenerative_text2) {
		this.degenerative_text2 = degenerative_text2;
	}

	public String getMild_2() {
		return mild_2;
	}

	public void setMild_2(String mild_2) {
		this.mild_2 = mild_2;
	}

	public String getModerate_2() {
		return moderate_2;
	}

	public void setModerate_2(String moderate_2) {
		this.moderate_2 = moderate_2;
	}

	public String getSevere_2() {
		return severe_2;
	}

	public void setSevere_2(String severe_2) {
		this.severe_2 = severe_2;
	}

	public String getNarrowed_2() {
		return narrowed_2;
	}

	public void setNarrowed_2(String narrowed_2) {
		this.narrowed_2 = narrowed_2;
	}

	public String getNarrowed_text2() {
		return narrowed_text2;
	}

	public void setNarrowed_text2(String narrowed_text2) {
		this.narrowed_text2 = narrowed_text2;
	}

	public String getSchmorlsnodesat_2() {
		return schmorlsnodesat_2;
	}

	public void setSchmorlsnodesat_2(String schmorlsnodesat_2) {
		this.schmorlsnodesat_2 = schmorlsnodesat_2;
	}

	public String getSchmorlsnodesat_text2() {
		return schmorlsnodesat_text2;
	}

	public void setSchmorlsnodesat_text2(String schmorlsnodesat_text2) {
		this.schmorlsnodesat_text2 = schmorlsnodesat_text2;
	}

	public String getAnterior_2() {
		return anterior_2;
	}

	public void setAnterior_2(String anterior_2) {
		this.anterior_2 = anterior_2;
	}

	public String getAnterior_text2() {
		return anterior_text2;
	}

	public void setAnterior_text2(String anterior_text2) {
		this.anterior_text2 = anterior_text2;
	}

	public String getSubchondral_2() {
		return subchondral_2;
	}

	public void setSubchondral_2(String subchondral_2) {
		this.subchondral_2 = subchondral_2;
	}

	public String getSubchondral_text2() {
		return subchondral_text2;
	}

	public void setSubchondral_text2(String subchondral_text2) {
		this.subchondral_text2 = subchondral_text2;
	}

	public String getForaminal_2() {
		return foraminal_2;
	}

	public void setForaminal_2(String foraminal_2) {
		this.foraminal_2 = foraminal_2;
	}

	public String getForaminal_text2() {
		return foraminal_text2;
	}

	public void setForaminal_text2(String foraminal_text2) {
		this.foraminal_text2 = foraminal_text2;
	}

	public String getOsteoporosis_2() {
		return osteoporosis_2;
	}

	public void setOsteoporosis_2(String osteoporosis_2) {
		this.osteoporosis_2 = osteoporosis_2;
	}

	public String getOsteoporosis_select2() {
		return osteoporosis_select2;
	}

	public void setOsteoporosis_select2(String osteoporosis_select2) {
		this.osteoporosis_select2 = osteoporosis_select2;
	}

	public String getDextro_Levoscoliosis_towering_select2() {
		return dextro_Levoscoliosis_towering_select2;
	}

	public void setDextro_Levoscoliosis_towering_select2(
			String dextro_Levoscoliosis_towering_select2) {
		this.dextro_Levoscoliosis_towering_select2 = dextro_Levoscoliosis_towering_select2;
	}

	public String getMild_22() {
		return mild_22;
	}

	public void setMild_22(String mild_22) {
		this.mild_22 = mild_22;
	}

	public String getModerate_22() {
		return moderate_22;
	}

	public void setModerate_22(String moderate_22) {
		this.moderate_22 = moderate_22;
	}

	public String getSevere_22() {
		return severe_22;
	}

	public void setSevere_22(String severe_22) {
		this.severe_22 = severe_22;
	}

	public String getApexat_2() {
		return apexat_2;
	}

	public void setApexat_2(String apexat_2) {
		this.apexat_2 = apexat_2;
	}

	public String getApexat_text2() {
		return apexat_text2;
	}

	public void setApexat_text2(String apexat_text2) {
		this.apexat_text2 = apexat_text2;
	}

	public String getSofttissueedemaof_2() {
		return softtissueedemaof_2;
	}

	public void setSofttissueedemaof_2(String softtissueedemaof_2) {
		this.softtissueedemaof_2 = softtissueedemaof_2;
	}

	public String getSofttissueedemaof_text2() {
		return softtissueedemaof_text2;
	}

	public void setSofttissueedemaof_text2(String softtissueedemaof_text2) {
		this.softtissueedemaof_text2 = softtissueedemaof_text2;
	}

	public String getOther_2() {
		return other_2;
	}

	public void setOther_2(String other_2) {
		this.other_2 = other_2;
	}

	public String getOther_text2() {
		return other_text2;
	}

	public void setOther_text2(String other_text2) {
		this.other_text2 = other_text2;
	}

	public String getViews3() {
		return views3;
	}

	public void setViews3(String views3) {
		this.views3 = views3;
	}

	public String getNegative_3() {
		return negative_3;
	}

	public void setNegative_3(String negative_3) {
		this.negative_3 = negative_3;
	}

	public String getBreak_3() {
		return break_3;
	}

	public void setBreak_3(String break_3) {
		this.break_3 = break_3;
	}

	public String getBreak_text3() {
		return break_text3;
	}

	public void setBreak_text3(String break_text3) {
		this.break_text3 = break_text3;
	}

	public String getOsteoporosis_3() {
		return osteoporosis_3;
	}

	public void setOsteoporosis_3(String osteoporosis_3) {
		this.osteoporosis_3 = osteoporosis_3;
	}

	public String getOsteoporosis_select3() {
		return osteoporosis_select3;
	}

	public void setOsteoporosis_select3(String osteoporosis_select3) {
		this.osteoporosis_select3 = osteoporosis_select3;
	}

	public String getHyperkyphosis_3() {
		return hyperkyphosis_3;
	}

	public void setHyperkyphosis_3(String hyperkyphosis_3) {
		this.hyperkyphosis_3 = hyperkyphosis_3;
	}
	

	public String getHyperkyphosis_select3() {
		return hyperkyphosis_select3;
	}

	public void setHyperkyphosis_select3(String hyperkyphosis_select3) {
		this.hyperkyphosis_select3 = hyperkyphosis_select3;
	}

	public String getNormalkyphosis_select3() {
		return normalkyphosis_select3;
	}

	public void setNormalkyphosis_select3(String normalkyphosis_select3) {
		this.normalkyphosis_select3 = normalkyphosis_select3;
	}

	public String getNormalkyphosis_3() {
		return normalkyphosis_3;
	}

	public void setNormalkyphosis_3(String normalkyphosis_3) {
		this.normalkyphosis_3 = normalkyphosis_3;
	}

	public String getHypokyphosis_3() {
		return hypokyphosis_3;
	}

	public void setHypokyphosis_3(String hypokyphosis_3) {
		this.hypokyphosis_3 = hypokyphosis_3;
	}

	public String getHypokyphosos_select_3() {
		return hypokyphosos_select_3;
	}

	public void setHypokyphosos_select_3(String hypokyphosos_select_3) {
		this.hypokyphosos_select_3 = hypokyphosos_select_3;
	}

	public String getDegenerative_3() {
		return degenerative_3;
	}

	public void setDegenerative_3(String degenerative_3) {
		this.degenerative_3 = degenerative_3;
	}

	public String getDegenerative_select3() {
		return degenerative_select3;
	}

	public void setDegenerative_select3(String degenerative_select3) {
		this.degenerative_select3 = degenerative_select3;
	}

	public String getMild_3() {
		return mild_3;
	}

	public void setMild_3(String mild_3) {
		this.mild_3 = mild_3;
	}

	public String getModerate_3() {
		return moderate_3;
	}

	public void setModerate_3(String moderate_3) {
		this.moderate_3 = moderate_3;
	}

	public String getSevere_3() {
		return severe_3;
	}

	public void setSevere_3(String severe_3) {
		this.severe_3 = severe_3;
	}

	public String getNarrowed_3() {
		return narrowed_3;
	}

	public void setNarrowed_3(String narrowed_3) {
		this.narrowed_3 = narrowed_3;
	}

	public String getNarrowed_text3() {
		return narrowed_text3;
	}

	public void setNarrowed_text3(String narrowed_text3) {
		this.narrowed_text3 = narrowed_text3;
	}

	public String getAnterior_3() {
		return anterior_3;
	}

	public void setAnterior_3(String anterior_3) {
		this.anterior_3 = anterior_3;
	}

	public String getAnterior_text3() {
		return anterior_text3;
	}

	public void setAnterior_text3(String anterior_text3) {
		this.anterior_text3 = anterior_text3;
	}

	public String getSubchondral_3() {
		return subchondral_3;
	}

	public void setSubchondral_3(String subchondral_3) {
		this.subchondral_3 = subchondral_3;
	}

	public String getSubchondral_text3() {
		return subchondral_text3;
	}

	public void setSubchondral_text3(String subchondral_text3) {
		this.subchondral_text3 = subchondral_text3;
	}

	public String getSchmorls_3() {
		return schmorls_3;
	}

	public void setSchmorls_3(String schmorls_3) {
		this.schmorls_3 = schmorls_3;
	}

	public String getSchmorls_text3() {
		return schmorls_text3;
	}

	public void setSchmorls_text3(String schmorls_text3) {
		this.schmorls_text3 = schmorls_text3;
	}

	public String getSpondylolisthesisof_3() {
		return spondylolisthesisof_3;
	}

	public void setSpondylolisthesisof_3(String spondylolisthesisof_3) {
		this.spondylolisthesisof_3 = spondylolisthesisof_3;
	}

	public String getSpondylolisthesisof_select3() {
		return spondylolisthesisof_select3;
	}

	public void setSpondylolisthesisof_select3(String spondylolisthesisof_select3) {
		this.spondylolisthesisof_select3 = spondylolisthesisof_select3;
	}

	public String getOther_text3() {
		return other_text3;
	}

	public void setOther_text3(String other_text3) {
		this.other_text3 = other_text3;
	}

	public String getGrade_3() {
		return grade_3;
	}

	public void setGrade_3(String grade_3) {
		this.grade_3 = grade_3;
	}

	public String getDecreasedRLF_3() {
		return decreasedRLF_3;
	}

	public void setDecreasedRLF_3(String decreasedRLF_3) {
		this.decreasedRLF_3 = decreasedRLF_3;
	}

	public String getDecreasedLLF_3() {
		return decreasedLLF_3;
	}

	public void setDecreasedLLF_3(String decreasedLLF_3) {
		this.decreasedLLF_3 = decreasedLLF_3;
	}

	public String getFacettropism_3() {
		return facettropism_3;
	}

	public void setFacettropism_3(String facettropism_3) {
		this.facettropism_3 = facettropism_3;
	}

	public String getSacralization_3() {
		return sacralization_3;
	}

	public void setSacralization_3(String sacralization_3) {
		this.sacralization_3 = sacralization_3;
	}

	public String getLumbarization_3() {
		return lumbarization_3;
	}

	public void setLumbarization_3(String lumbarization_3) {
		this.lumbarization_3 = lumbarization_3;
	}

	public String getDextro_Levoscoliosis_towering_select3() {
		return dextro_Levoscoliosis_towering_select3;
	}

	public void setDextro_Levoscoliosis_towering_select3(
			String dextro_Levoscoliosis_towering_select3) {
		this.dextro_Levoscoliosis_towering_select3 = dextro_Levoscoliosis_towering_select3;
	}

	public String getMild_33() {
		return mild_33;
	}

	public void setMild_33(String mild_33) {
		this.mild_33 = mild_33;
	}

	public String getModerate_33() {
		return moderate_33;
	}

	public void setModerate_33(String moderate_33) {
		this.moderate_33 = moderate_33;
	}

	public String getSevere_33() {
		return severe_33;
	}

	public void setSevere_33(String severe_33) {
		this.severe_33 = severe_33;
	}

	public String getApexat_3() {
		return apexat_3;
	}

	public void setApexat_3(String apexat_3) {
		this.apexat_3 = apexat_3;
	}

	public String getApexat_text3() {
		return apexat_text3;
	}

	public void setApexat_text3(String apexat_text3) {
		this.apexat_text3 = apexat_text3;
	}

	public String getSofttissueedemaof_3() {
		return softtissueedemaof_3;
	}

	public void setSofttissueedemaof_3(String softtissueedemaof_3) {
		this.softtissueedemaof_3 = softtissueedemaof_3;
	}

	public String getSofttissueedemaof_text3() {
		return softtissueedemaof_text3;
	}

	public void setSofttissueedemaof_text3(String softtissueedemaof_text3) {
		this.softtissueedemaof_text3 = softtissueedemaof_text3;
	}

	public String getOther_3() {
		return other_3;
	}

	public void setOther_3(String other_3) {
		this.other_3 = other_3;
	}

	public String getOther_text33() {
		return other_text33;
	}

	public void setOther_text33(String other_text33) {
		this.other_text33 = other_text33;
	}

	public String getViews4() {
		return views4;
	}

	public void setViews4(String views4) {
		this.views4 = views4;
	}

	public String getNormal_4() {
		return normal_4;
	}

	public void setNormal_4(String normal_4) {
		this.normal_4 = normal_4;
	}

	public String getPositivefor_4() {
		return positivefor_4;
	}

	public void setPositivefor_4(String positivefor_4) {
		this.positivefor_4 = positivefor_4;
	}
	

}