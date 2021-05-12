package com.customer;



public class customer {
    private String id;
    private String name;
    private String email;
    private int phone;
    private String userName;
    private String password;
    private String bday;

    
    public customer(String id, String name, String email, int phone, String userName, String password,String bday) {
	this.id = id;
	this.name = name;
	this.email = email;
	this.phone = phone;
	this.userName = userName;
	this.password = password;
	this.bday = bday;

    }





	public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public int getPhone() {
        return phone;
    }

    public String getUserName() {
        return userName;
    }

    public String getPassword() {
        return password;
    }    
    public String getbday() {
    	return bday;
    }
 
}
