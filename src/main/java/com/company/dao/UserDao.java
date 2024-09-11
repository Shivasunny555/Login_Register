package com.company.dao;

public interface UserDao {
	boolean isValidUser(String uername, String password);

	boolean addUser(User user);
	

}
