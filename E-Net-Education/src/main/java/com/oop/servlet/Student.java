package com.oop.servlet;

public class Student {
	
	private String name;
	private String l_name;
	private String email;
	private int p_number;
	private String psw ;
	private String c_psw;
	private String gender;
	
	public Student(String name, String l_name, String email, int p_number, String psw, String c_psw, String gender) {
		
		this.name = name;
		this.l_name = l_name;
		this.email = email;
		this.p_number = p_number;
		this.psw = psw;
		this.c_psw = c_psw;
		this.gender = gender;
	}

	public String getName() {
		return name;
	}


	public String getL_name() {
		return l_name;
	}



	public String getEmail() {
		return email;
	}


	public int getP_number() {
		return p_number;
	}


	public String getPsw() {
		return psw;
	}



	public String getC_psw() {
		return c_psw;
	}


	public String getGender() {
		return gender;
	}


}
