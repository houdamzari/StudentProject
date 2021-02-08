package com.luv2code.web.jdbc;


/**
 * JavaBean class used in jsp action tags.
 * 
 */
public class Student  {
    /**
     * 
     */ 
    	 
    private String CODE_DAPOGEE;
    private String NOM_COMPLET;
    private String CIN;
    private String EMAIL_ADDRESS;
    
    
	

	


	public Student(String CODE_DAPOGEE, String NOM_COMPLET, String CIN, String EMAIL_ADDRESS) {
		super();
		this.CODE_DAPOGEE = CODE_DAPOGEE;
		this.NOM_COMPLET = NOM_COMPLET;
		this.CIN = CIN;
		this.EMAIL_ADDRESS = EMAIL_ADDRESS;
	}







	public String getCODE_DAPOGEE() {
		return CODE_DAPOGEE;
	}







	public void setCODE_DAPOGEE(String CODE_DAPOGEE) {
		CODE_DAPOGEE = CODE_DAPOGEE;
	}







	public String getNOM_COMPLET() {
		return NOM_COMPLET;
	}







	public void setNOM_COMPLET(String NOM_COMPLET) {
		NOM_COMPLET = NOM_COMPLET;
	}







	public String getCIN() {
		return CIN;
	}







	public void setCIN(String CIN) {
		CIN = CIN;
	}







	public String getEMAIL_ADDRESS() {
		return EMAIL_ADDRESS;
	}







	public void setEMAIL_ADDRESS(String EMAIL_ADDRESS) {
		EMAIL_ADDRESS = EMAIL_ADDRESS;
	}







	@Override
	public String toString() {
		return "Student [CODE_DAPOGEE=" + CODE_DAPOGEE + ", NOM_COMPLET=" + NOM_COMPLET + ", CIN=" + CIN + ", EMAIL_ADDRESS=" + EMAIL_ADDRESS + "]";
	}	
} 
