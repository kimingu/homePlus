package com.kh.homeplus.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/*
 * Interceptor개요
 * - 정확하게 이야기하면 HadnlerInterceptor이다
 * - HandlerInterceptorAdapter을 상속하여 구현
 * - 아래 세가지 메소드를 오버라이딩하여 사용
 * 
 * 1. preHandle(전처리) : DispatcherServlet이 컨트롤러를 호출하기 전
 * 2. postHandle(후처리) : 컨트롤러에서 DispatcherServlet으로 리턴되는 순간
 * 3. afterCompletion(뷰 단 처리 후) : 모든 뷰에서 최종결과를 생성하는 일을 포함한 모든 작업이 끝난 후
 * 		>> 요청 처리 중에 사용한 리소스를 변환하는 용도로 적당
 */
public class LoggerInterceptor extends HandlerInterceptorAdapter {
	protected Logger logger = LoggerFactory.getLogger(LoggerInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		if(logger.isDebugEnabled()) {
			logger.debug("======start======");
			logger.debug(request.getRequestURI());
		}
		
		
		return super.preHandle(request, response, handler);
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView mav) {
		if(logger.isDebugEnabled()) {
			logger.debug("======view======");
		}
		
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception e) throws Exception {
		if(logger.isDebugEnabled()) {
			logger.debug("======end=====");
		}
		
		super.afterCompletion(request, response, handler, e);
		
	}
	
	// 작성 완료 후 log4.xml에 코드 입력
}
