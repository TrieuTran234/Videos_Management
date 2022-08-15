package edu.poly.admin.servlet;

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

@WebServlet({ "/UsersManagementServlet", "/UsersManagementServlet/create", "/UsersManagementServlet/update", "/UsersManagementServlet/delete", "/UsersManagementServlet/edit/*",
"/UsersManagementServlet/reset" })
public class UsersManagementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserDao dao = new UserDao();
		User user = new User();
		String uri = req.getRequestURI();

		if (uri.contains("edit")) {
			//cat chuoi
			String id = uri.substring(uri.lastIndexOf("/") + 1);
			System.out.println("userId: "+id);
			user = dao.findById(id);
		} else if (uri.contains("create")) {
			try {
				BeanUtils.populate(user, req.getParameterMap());
				dao.insert(user);
				req.setAttribute("message", "Thêm mới thành công");
			} catch (Exception e) {
				req.setAttribute("message", "Thêm mới thất bại");
			}
		} else if (uri.contains("update")) {
			try {
				BeanUtils.populate(user, req.getParameterMap());
				dao.update(user);
				req.setAttribute("message", "Cập nhật thành công");
			} catch (Exception e) {
				req.setAttribute("message", "Cập nhật thất bại");
			}
		} else if (uri.contains("delete")) {
			try {
				String id = req.getParameter("userId");
				dao.delete(id);
				req.setAttribute("message", "Xóa thành công");
			} catch (Exception e) {
				req.setAttribute("message", "Xóa thất bại");
			}
		}

		req.setAttribute("userEdit", user);
		req.setAttribute("users", dao.findAll());
		/*
		 * // Truy vấn List<User> list = dao.findAll(); // Hiển thị kết quả truy vấn
		 * for(User u : list) {
		 * System.out.println("----------------------------------");
		 * System.out.println(">>ID: " + u.getId()); System.out.println(">>Fullname: " +
		 * u.getFullname()); System.out.println(">>Email: " + u.getEmail());
		 * System.out.println(">>Is Admin: " + u.getAdmin()); }
		 */
		PageInfo.prepareAndForward(req, resp, PageType.USER_MANAGEMENT_PAGE);
	}

}
