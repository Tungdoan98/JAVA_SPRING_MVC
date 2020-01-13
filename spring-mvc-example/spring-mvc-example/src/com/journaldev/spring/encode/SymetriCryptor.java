package com.journaldev.spring.encode;

import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

public class SymetriCryptor {
	private final String algorithm = "AES";
	private KeyGenerator keyGen;
	private SecretKey secretKey;
	private SecretKeySpec secretKeySpec;
	private Cipher cipher;
		
	public SymetriCryptor() throws NoSuchAlgorithmException {
		keyGen = KeyGenerator.getInstance(algorithm);
		secretKey = keyGen.generateKey();
		String key = "mothaibabonnamsa";
		secretKeySpec = new SecretKeySpec(key.getBytes(), algorithm);
		}
	public String encrypttext1(String msg, SecretKeySpec key)throws NoSuchAlgorithmException,
				NoSuchPaddingException,
				InvalidKeyException,
				IllegalBlockSizeException,
				BadPaddingException,
				UnsupportedEncodingException {
		cipher = Cipher.getInstance(algorithm);
		cipher.init(Cipher.ENCRYPT_MODE, key);
		return Base64.getEncoder().encodeToString(cipher.doFinal(msg.getBytes("UTF-8")));	
	}
	public String deccryptText1(String msg, SecretKeySpec key)throws NoSuchAlgorithmException,
				NoSuchPaddingException,
				InvalidKeyException,
				UnsupportedEncodingException,
	 			IllegalBlockSizeException,
				BadPaddingException {
		cipher = Cipher.getInstance(algorithm);
		cipher.init(Cipher.DECRYPT_MODE, key);
		return new String(cipher.doFinal(Base64.getDecoder().decode(msg)),"UTF-8");	
	}
	public SecretKey getSecretKey() {
		return secretKey;
	}	
	public SecretKeySpec getSecretKeySpec() {
		return secretKeySpec;
	}
}
