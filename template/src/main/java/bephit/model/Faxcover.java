package bephit.model;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

public class Faxcover
{
	private String faxid;
	
	private String username;
	
	
	private String date;
	
	private String tos;
	
	//@Pattern(regexp="(^$|[0-9-()]{11})",message="Not a valid Social Security number")

	private String faxno;
	
	private String froms;
	private String reply;
	private String regarding;
	private String pages;
	
	private String msg;
	
	private String claimno;
	
	private String doi;
	public Faxcover() {
		super();
	}
	public String getFaxid() {
		return faxid;
	}
	public void setFaxid(String faxid) {
		this.faxid = faxid;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTos() {
		return tos;
	}
	public void setTos(String tos) {
		this.tos = tos;
	}
	public String getFaxno() {
		return faxno;
	}
	public void setFaxno(String faxno) {
		this.faxno = faxno;
	}
	public String getFroms() {
		return froms;
	}
	public void setFroms(String froms) {
		this.froms = froms;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public String getRegarding() {
		return regarding;
	}
	public void setRegarding(String regarding) {
		this.regarding = regarding;
	}
	public String getPages() {
		return pages;
	}
	public void setPages(String pages) {
		this.pages = pages;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String getClaimno() {
		return claimno;
	}
	public void setClaimno(String claimno) {
		this.claimno = claimno;
	}
	public String getDoi() {
		return doi;
	}
	public void setDoi(String doi) {
		this.doi = doi;
	}
	public Faxcover(String faxid, String date, String tos, String faxno,
			String froms, String reply, String regarding, String pages,
			String msg, String claimno, String doi) {
		super();
		this.faxid = faxid;
		this.date = date;
		this.tos = tos;
		this.faxno = faxno;
		this.froms = froms;
		this.reply = reply;
		this.regarding = regarding;
		this.pages = pages;
		this.msg = msg;
		this.claimno = claimno;
		this.doi = doi;
	}
	
}