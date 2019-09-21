package common.filter;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class EncryptPasswordWrapper extends HttpServletRequestWrapper {

	public EncryptPasswordWrapper(HttpServletRequest request) {
		super(request);
	}
	
	@Override
	public String getParameter(String key) {
		String value="";
		
		if(key != null && key.equals("password") || key.equals("nPw") || key.equals("cPw")) {
			value = getEncryptPw(super.getParameter(key));
			System.out.println(value);
		} else {
			value = super.getParameter(key);
		}
		return value;
	}
	
	private static String getEncryptPw(String pw) {
		MessageDigest md = null;
		try {
			md = MessageDigest.getInstance("SHA-512");
			
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		String encPw = Base64.getEncoder().encodeToString(md.digest());
		return encPw;
	}
}
