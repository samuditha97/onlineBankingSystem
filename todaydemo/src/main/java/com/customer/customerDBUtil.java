package com.customer;

import java.sql.Connection;



import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

  public class customerDBUtil {
	private static Connection con=null;
	 private static Statement stmt = null;
	 private static ResultSet rs= null;
	public static List<customer> validate(String userName, String password){
		
ArrayList<customer> cus = new ArrayList<>();

//validate
		
		try {
			con = DBConnector.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where userName='"+userName+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				String id = rs.getString(1);
				String name = rs.getString(2);
				String email = rs.getString(4);
				int phone = rs.getInt(3);
				String username = rs.getString(5);
				String passU = rs.getString(6);
				String bday = rs.getString(7);
				
				customer c= new customer(id,name,email,phone,username,passU,bday);
				cus.add(c);
			}
			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return cus;	
	
    
	}
	 public static boolean insertcustomer(String id,String name, int phone, String email, String userName, String passU, String bday){
		 
		 boolean isSuccess = false;
		
		 
		 try {
			
			con= DBConnector.getConnection();
			stmt = con.createStatement();
				String sql= "insert into customer values('"+id+"','"+name+"','"+phone+"','"+email+"','"+userName+"','"+passU+"','"+bday+"')";
		    int rs = stmt.executeUpdate(sql);
		    
		    if(rs>0) {
		    	
		    	isSuccess = true;
		    }
		    else {
		    	isSuccess =false; 
		    }
		 
		 
		 }
		 catch (Exception e) {
			 e.printStackTrace();
		 }
	 
		 return isSuccess;
	 }
  }
