package edu.poly.uitils;

import edu.poly.model.User;

public class Auth {
	 public static User user = null;
	 
	    public static void clear(){
	        Auth.user = null;
	    }
	    public static boolean isLogin(){
	        return Auth.user !=null;
	    }
	    public  static boolean  isManager(){
	        return Auth.isLogin()&&user.getAdmin();
	    }
}
