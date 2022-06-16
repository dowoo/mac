package util;

import org.apache.commons.codec.digest.DigestUtils;

public class PasswordUtil {

	public static String generateSecretPassword(String userId, String password) {
		String src = password + userId + reverse(password);
		return DigestUtils.sha256Hex(src);
	}
	
	private static String reverse(String password) {
		StringBuilder sb = new StringBuilder();
		for (int index = password.length() - 1; index >= 0; index--) {
			sb.append(password.charAt(index));
		}
		return sb.toString();
	}
	
	public static void main(String[] args) {
		System.out.println(PasswordUtil.generateSecretPassword("lee", "zxcv1234"));
		System.out.println(PasswordUtil.generateSecretPassword("hong-gs", "zxcv1234"));
		System.out.println(PasswordUtil.generateSecretPassword("ddsszz", "zxcv1234"));
		System.out.println(PasswordUtil.generateSecretPassword("leelee", "zxcv1234"));
	}
}
