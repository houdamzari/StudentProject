package com.luv2code.web.jdbc;


import java.io.Serializable;

/**
 * JavaBean class used in jsp action tags.
 * @author Ramesh Fadatare
 */
public class Stuudent implements Serializable {
    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    private String codedapogee;
    private String nomcomplet;
    private String cin;
    private String emailaddress;
    
	public Stuudent(String codedapogee, String nomcomplet, String cin, String emailaddress) {
		super();
		this.codedapogee = codedapogee;
		this.nomcomplet = nomcomplet;
		this.cin = cin;
		this.emailaddress = emailaddress;
	}

	public String getCodedapogee() {
		return codedapogee;
	}

	public void setCodedapogee(String codedapogee) {
		this.codedapogee = codedapogee;
	}

	public String getNomcomplet() {
		return nomcomplet;
	}

	public void setNomcomplet(String nomcomplet) {
		this.nomcomplet = nomcomplet;
	}

	public String getCin() {
		return cin;
	}

	public void setCin(String cin) {
		this.cin = cin;
	}

	public String getEmailaddress() {
		return emailaddress;
	}

	public void setEmailaddress(String emailaddress) {
		this.emailaddress = emailaddress;
	}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
} 
