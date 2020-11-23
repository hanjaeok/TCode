package com.hanker.Controller;

import java.security.MessageDigest;

public class testUserRegister {
	
	public static void main(String ar[]) throws Exception{
		String planText = "hanker";
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			md.update(planText.getBytes());
			byte byteData[] = md.digest();
			StringBuffer sb = new StringBuffer();
			
			for(int i = 0 ; i < byteData.length ; i++) {
				sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
			}
			
			StringBuffer hexString = new StringBuffer();
			
			for(int i = 0 ; i < byteData.length ; i++) {
				String hex = Integer.toHexString(0xff & byteData[i]);
				if(hex.length() == 1) {
					hexString.append('0');
				}
				
				hexString.append(hex);
			}
			
			System.out.println(hexString.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
