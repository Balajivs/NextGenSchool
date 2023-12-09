package com.airwire.nextgenschool.security;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class EncodeUtility {

	
	public static void main(String args[]) {
		
		String password = "balaji12345";
		BCryptPasswordEncoder passwordencoder = new BCryptPasswordEncoder();
		String testpasswordencoded =  passwordencoder.encode(password);
		
		System.out.println("######### password encoded **********" + testpasswordencoded);
	}
}
