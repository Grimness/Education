package com.mvc.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.business.utils.Content;

public class AuthFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method 2stub
		HttpServletRequest hsrq = (HttpServletRequest) request;
	      HttpServletResponse hsrp = (HttpServletResponse) response;
	      String uri = hsrq.getRequestURI();
	      String cp = hsrq.getContextPath();
	      uri = uri.replaceAll(cp, "");
	      uri = uri.substring(0,uri.indexOf(".do"));
        if(Content.PASSURI.indexOf(uri)==-1){
      	  HttpSession session = hsrq.getSession();
      	  if(session.getAttribute(Content.LOGUSER) == null){
      		  hsrp.sendRedirect(hsrq.getContextPath());
      		  return;
      	  }
        }
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=utf-8");
        chain.doFilter(request, response);		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
