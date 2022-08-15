package edu.com.login.servlet;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.dao.UserDao;
import edu.poly.model.User;

@WebServlet("/EditProfileServlet")
public class EditProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PageInfo.prepareAndForwardLogin(request, response, PageType.USER_EDITPROFILE_PAGE);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name").trim();
		String pass = request.getParameter("pass").trim();
		String fullname = request.getParameter("fullname").trim();
		String email = request.getParameter("email").trim();
		String newpass = request.getParameter("newpass").trim();

		System.out.println(name);
		System.out.println(pass);
		System.out.println(fullname);
		System.out.println(email);
		System.out.println(newpass);

		try {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("assingment");

			EntityManager em = factory.createEntityManager();

			User userOld = em.find(User.class, name);
			if (!userOld.getPassword().trim().equals(pass.trim())) {
				request.setAttribute("messageEdit", "Sai mật khẩu!");
				User user = new User(name, userOld.getAdmin(), email, fullname, newpass);
				request.setAttribute("user", user);
				PageInfo.prepareAndForwardLogin(request, response, null);
			} else {
				
				User user = new User(name, userOld.getAdmin(), email, fullname, newpass);
				UserDao dao = new UserDao();
				dao.update(user);
				request.setAttribute("messageEdit", "Cập nhật thành công!");
				request.setAttribute("user", user);
				PageInfo.prepareAndForwardUser(request, response, PageType.USER_EDITPROFILE_PAGE);
				
			}

		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("messageEdit", "Lỗi!");
			PageInfo.prepareAndForwardLogin(request, response, PageType.USER_EDITPROFILE_PAGE);
		}
	}

}
