package com.fxeie.crm.utils;

import java.io.UnsupportedEncodingException;

import org.apache.commons.codec.digest.DigestUtils;

public class EncryptUtils {
	public static String md5(String str){
		try {
			return new String(DigestUtils.md5Hex(str.getBytes("UTF-8")));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
