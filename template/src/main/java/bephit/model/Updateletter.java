package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;

public class Updateletter
{
	private String updateid;
	@NotEmpty
	private String toattorney1;
	@NotEmpty
	private String toattorney2;
	@NotEmpty
	private String toattorney3;
	@NotEmpty
	private String reg;	
	@NotEmpty
	private String injury;
	@NotEmpty
	private String todaydate;
	
	public Updateletter() {
		super();
	}

	public String getUpdateid() {
		return updateid;
	}

	public void setUpdateid(String updateid) {
		this.updateid = updateid;
	}

	public String getToattorney1() {
		return toattorney1;
	}

	public void setToattorney1(String toattorney1) {
		this.toattorney1 = toattorney1;
	}

	public String getToattorney2() {
		return toattorney2;
	}

	public void setToattorney2(String toattorney2) {
		this.toattorney2 = toattorney2;
	}

	public String getToattorney3() {
		return toattorney3;
	}

	public void setToattorney3(String toattorney3) {
		this.toattorney3 = toattorney3;
	}

	public String getReg() {
		return reg;
	}

	public void setReg(String reg) {
		this.reg = reg;
	}

	public String getInjury() {
		return injury;
	}

	public void setInjury(String injury) {
		this.injury = injury;
	}

	public String getTodaydate() {
		return todaydate;
	}

	public void setTodaydate(String todaydate) {
		this.todaydate = todaydate;
	}

	public Updateletter(String updateid, String toattorney1,
			String toattorney2, String toattorney3, String reg, String injury,
			String todaydate) {
		super();
		this.updateid = updateid;
		this.toattorney1 = toattorney1;
		this.toattorney2 = toattorney2;
		this.toattorney3 = toattorney3;
		this.reg = reg;
		this.injury = injury;
		this.todaydate = todaydate;
	}
	
	
	
}