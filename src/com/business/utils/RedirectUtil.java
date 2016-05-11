package com.business.utils;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

public class RedirectUtil {
	public static void redirect(HttpServletResponse response,String url){
		try {
			response.sendRedirect(url);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
