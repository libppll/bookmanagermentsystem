package com.hta.member.repository;

import java.util.Date;

import com.hta.exception.IdPasswordNotMachingException;

public class Member {
	
	private String email;
	private String password;
	private String name;
	private String address;
	private String phonenumber;

	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public Member(){
		
	}
	public Member(String email, String password, String name) {
		
		this.email = email;
		this.password = password;
		this.name = name;
		
	}
	
	
	



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}





	public void changePassword(String oldPassword, String newPassword){
		
		if(!password.equals(oldPassword))//�뙣�뒪�썙�뱶 �씪移� �솗�씤
		{
			throw new IdPasswordNotMachingException();
		}
		this.password = newPassword;
	}
	
	public boolean matchPassword(String password){ //�떎�젣 �뙣�뒪�썙�뱶媛� 留욌뒗 吏� 寃��궗
		return this.password.equals(password);
	}
	
	
}
