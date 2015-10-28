package br.com.caelum.contas.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AutorizadorInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

		String uri = request.getRequestURI();
		if (uri.endsWith("loginForm") || uri.endsWith("efetuarLogin") || uri.contains("resources")) {
			return true;
		}
		if (request.getAttribute("usuarioLogado") != null) {
			return true;
		} else {
			response.sendRedirect("loginForm");
			return false;
		}
	}
}
