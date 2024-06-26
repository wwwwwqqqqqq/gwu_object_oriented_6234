package cn.bjsxt.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import cn.bjsxt.pojo.User;
import cn.bjsxt.service.LogtableService;

public class LoginCheck implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object arg2, Exception arg3) throws Exception {
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3) throws Exception {

	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		String uri = request.getRequestURI();
		Object user = request.getSession().getAttribute("currentUser");
		boolean flag = true;// true
		if (user == null) {
			flag = false;
		}
		if (flag) {
			return true;
		} else {

			System.out.println("Invalid："+uri);
			response.getWriter().println("<script>window.top.location.href='" + request.getContextPath() + "'</script>");
			return false;
		}
	}

}
