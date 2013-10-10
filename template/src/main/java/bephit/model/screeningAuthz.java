package bephit.model;

public class screeningAuthz
{
	
	private String date;
	private String name;
	


	public screeningAuthz()
	{
		
	}
	
	public screeningAuthz(String date,
			String name
			
			)
	{
		this.date=date;
	this.name=name;
	
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