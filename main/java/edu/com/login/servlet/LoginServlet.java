package edu.com.login.servlet;

import java.io.IOException;
import java.util.List;

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
import edu.poly.dao.VideoDao;
import edu.poly.model.User;
import edu.poly.model.Video;

@WebServlet({ "/LoginServlet", "/sign-out" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PageInfo.prepareAndForwardLogin(request, response, PageType.USER_LOGIN_PAGE);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("username").trim();
		String pw = request.getParameter("password").trim();
		System.out.println(id + ", " + pw);

		try {

			EntityManagerFactory factory = Persistence.createEntityManagerFactory("assingment");

			EntityManager em = factory.createEntityManager();

			User user = em.find(User.class, id);
			if (!user.getPassword().trim().equals(pw)) {
				request.setAttribute("messageLogin", "Sai mật khẩu!");
				PageInfo.prepareAndForwardLogin(request, response, PageType.USER_LOGIN_PAGE);
			} else {

				request.getSession().setAttribute("user", user);
				VideoDao dao = new VideoDao();
				List<Video> list = dao.findAll();
				request.setAttribute("videoHome", list);
				request.getRequestDispatcher("/UsersHomeServlet").forward(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("messageLogin", "Sai tên đăng nhập!");
			PageInfo.prepareAndForwardLogin(request, response, PageType.USER_LOGIN_PAGE);
		}
		request.getSession().setAttribute("userName", id);
	}


}
