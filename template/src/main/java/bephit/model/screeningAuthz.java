package bephit.model;

import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Length;

public class screeningAuthz
{
	private String screen_no;
	
	private String date;
	
	@NotEmpty
	@Length(min=4,max=32,message="Required Field should between 4 to 32 characters!!!")
	private String name;
	


	public screeningAuthz()
	{
	
	}
	
	public screeningAuthz(String screen_no,String date,
			String name
			
			)
	{
		this.screen_no=screen_no;
		this.date=date;
	this.name=name;
	
	}

	public String getScreen_no() {
		return screen_no;
	}

	public void setScreen_no(String screen_no) {
		this.screen_no = screen_no;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	
	
}