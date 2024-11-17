package asm2.com.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import asm2.com.entity.Category;
import asm2.com.service.CategoryService;

@Component
public class GlobalInterceptor  implements HandlerInterceptor{
@Autowired
CategoryService categoryService;

   	@Override
   		public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
   				ModelAndView modelAndView) throws Exception {
   		request.setAttribute("cates", categoryService.findALL());
   		}
}
