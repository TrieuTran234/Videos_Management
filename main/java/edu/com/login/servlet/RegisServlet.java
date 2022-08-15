package edu.com.login.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.dao.UserDao;
import edu.poly.model.User;

@WebServlet("/RegisServlet")
public class RegisServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PageInfo.prepareAndForwardLogin(request, response, PageType.USER_REGIST_PAGE);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name").trim();
		String fullname = request.getParameter("fullname").trim();
		String email = request.getParameter("email").trim();
		String pass = request.getParameter("pass").trim();
		String re_pass = request.getParameter("re_pass").trim();
		
		User entity = new User(name,false,email,fullname,pass);
		if (pass.equals(re_pass)) {
			try {

				
				BeanUtils.populate(entity, request.getParameterMap());

				UserDao dao = new UserDao();
				dao.insert(entity);
				request.setAttribute("messageRegist", "Đăng ký thành công!");

			} catch (Exception e) {
				request.setAttribute("messageRegist", "Lỗi đăng ký!");
			}
		} else {
			request.setAttribute("messageRegist", "Nhập lại mật khẩu!");
		}
		request.setAttribute("user", entity);
		PageInfo.prepareAndForwardLogin(request, response, PageType.USER_REGIST_PAGE);
	}

}
