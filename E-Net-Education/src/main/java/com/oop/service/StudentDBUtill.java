package com.oop.service;

import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.oop.model.Student;
import com.oop.util.DBConnect;

import java.sql.Connection;



public class StudentDBUtill implements IstudentDBUtill {
	

	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static java.sql.ResultSet rs = null;
    
	public  boolean validate(String email, String psw) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from registration where S_email='"+email+"' and Password='"+psw+"'";
			rs =  stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public  boolean ValidateEmailRepeat(String email) {
		    isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select S_email from registration where S_email='"+email+"'";
			rs =  stmt.executeQuery(sql);
			
			System.out.println(rs.next());
			while (rs.next()) {
				
					isSuccess = true;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
		
	}
	
	
	
	public Student getStudent(String email) {	
		Student std = null;
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();			
			String sql = "select * from registration where S_email='"+email+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				
				
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String UserID =rs.getString(9);
				String stdemail = rs.getString(4);
				int phone = rs.getInt(5);
				String psw = rs.getString(6);
				String cpsw = rs.getString(7);
				String Gender = rs.getString(8);
				String Pos = rs.getString(10);
				
				
				std = new Student(fname,lname,UserID,stdemail,phone,psw,cpsw,Gender,Pos);
				
				System.out.println("abc"+std);
				
			}
			
		} catch (Exception e) {
			
		}
		
		return std;	
	}
	
	
	
	  
	
	
	public  boolean insertstudent(String name, String l_name,String UserID, String email, int p_number, String psw, String c_psw, String gender) {
		
		boolean isSuccess = false ;
		
		
		
		try {
			
			con = DBConnect.getConnection();
			stmt =  con.createStatement();
			
			String sql = "insert into registration(F_name,L_name,UserID,S_email,P_number,Password,Confirm_psw,Gender) values ('"+name+"','"+l_name+"','"+UserID+"','"+email+"','"+p_number+"','"+psw+"','"+c_psw+"','"+gender+"')";
			int rs =  stmt.executeUpdate(sql);
			
			if (rs > 0) {
				
				isSuccess = true;
				
			}else {
				
				isSuccess = false ;
				
			}
			
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
public  boolean updatePassword( String Email,  String userid, String psw,String Rpsw) {
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update registration set Password='"+psw+"',Confirm_psw='"+Rpsw+"' where UserID='"+userid+"' and S_email='"+Email+"'";
    				
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }

public  boolean updateProfile( String fname ,  String lname, String email,String phone ,String userid) {
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "update registration set F_name='"+fname+"', L_name='"+lname+"', S_email='"+email+"',P_number='"+phone+"' where UserID='"+userid+"'";
				
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}


public  List<Student> getStudentpassword(String userid) {
	
	
	
	ArrayList<Student> std = new ArrayList<>();
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from registration where UserID='"+userid+"'";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			String fname = rs.getString(2);
			String lname = rs.getString(3);
			String UserID =rs.getString(9);
			String stdemail = rs.getString(4);
			int phone = rs.getInt(5);
			String psw = rs.getString(6);
			String cpsw = rs.getString(7);
			String Gender = rs.getString(8);
			String Pos = rs.getString(10);
			
			Student c = new Student(fname,lname,UserID,stdemail,phone,psw,cpsw,Gender,Pos);
			std.add(c);
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}	
	return std;	
}


public  boolean deleteProfile(String id) {
	
	try {
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "delete from registration where UserID='"+id+"'";
		int r = stmt.executeUpdate(sql);
		
		if (r > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}


	
}


