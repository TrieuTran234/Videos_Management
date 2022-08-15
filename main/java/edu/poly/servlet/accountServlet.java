package edu.poly.servlet;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import edu.poly.dao.UserDao;
import edu.poly.model.User;
import edu.poly.uitils.Auth;

@WebServlet({ "/account/sign-up", "/account/sign-in", "/account/sign-out", "/account/forgot-password",
		"/account/change-password", "/account/edit-profile" })
public class accountServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		if (uri.contains("sign-in")) {
			this.doSignIn(req, resp);

		} else if (uri.contains("sign-up")) {
			this.doSignUp(req, resp);

		} else if (uri.contains("sign-out")) {
		} else if (uri.contains("forgot-password")) {
		} else if (uri.contains("change-password")) {
		} else if (uri.contains("edit-profile")) {

		}

	}

	private void doSignIn(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String method = req.getMethod();

		if (method.equalsIgnoreCase("POST")) {
			// TODO: ĐĂNG NHẬP
			String id = req.getParameter("username").trim();
			String pw = req.getParameter("password").trim();
			System.out.println(id + "," + pw);

			try {

				// ==================================
				EntityManagerFactory factory = Persistence.createEntityManagerFactory("assingment");

				EntityManager em = factory.createEntityManager();

				User user = em.find(User.class, id);

				System.out.println(user.getPassword() + "day ne");

				if (!user.getPassword().trim().equals(pw)) {
					req.setAttribute("messageLogin", "Sai mật khẩu!");
				} else {
					if (user.getAdmin() == true) {
						
						req.setAttribute("messageLogin", "Đăng nhập thành công admin true!");
						req.getSession().setAttribute("user", user);
					} else {
						
						req.setAttribute("messageLogin", "Đăng nhập thành công admin false!");
						req.getSession().setAttribute("user", user);
					}
				}

			} catch (Exception e) {
				e.printStackTrace();
				req.setAttribute("messageLogin", "Sai tên đăng nhập!");
			}
		}
		req.getRequestDispatcher("/views/login.jsp").forward(req, resp);
	}

	private void doSignUp(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String method = req.getMethod();
		if (method.equalsIgnoreCase("POST")) {
			// TODO: ĐĂNG KÝ
			try {

				User entity = new User();
				BeanUtils.populate(entity, req.getParameterMap());

				UserDao dao = new UserDao();
				dao.insert(entity);
				req.setAttribute("message", "Đăng ký thành công!");

			} catch (Exception e) {
				req.setAttribute("message", "Lỗi đăng ký!");
			}
		}
		req.getRequestDispatcher("/views/register.jsp").forward(req, resp);
	}

}
