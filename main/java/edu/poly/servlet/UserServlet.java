package edu.poly.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import edu.poly.dao.UserDao;
import edu.poly.model.User;

@WebServlet({ "/UserServlet", "/UserServlet/create", "/UserServlet/update", "/UserServlet/delete", "/UserServlet/edit/*",
		"/UserServlet/reset" })
public class UserServlet extends HttpServlet {

//	protected void doGet(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		
//		String url = request.getRequestURI().toString();
//		User user = null;
//		
//		if (url.contains("delete")) {
//			user = new User();
//			request.setAttribute("user", user);
//			
//		}else if (url.contains("edit")) {
//			edit(request, response);
//			
//		}else if (url.contains("rest")) {
//			user = new User();
//			request.setAttribute("user", user);
//		}
//
//		findAll(request, response);
//		request.getRequestDispatcher("/user.jsp").forward(request, response);
//		
//		System.out.println("dang chay do get");
//	}
//
//	protected void doPost(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		
//		String url = request.getRequestURI().toString();
//		//insert chua chay????????????
//		insert(request, response);
//		
////		if (url.contains("insert")) {
////			insert(request, response);
////		}else if (url.contains("delete")) {
////			
////		}else if (url.contains("rest")) {
////			
////		}else if (url.contains("update")) {
////			
////		}
//		findAll(request, response);
//		System.out.println("dang chay do posttt");
//
//		request.getRequestDispatcher("/user.jsp").forward(request, response);
//	}
//	protected void insert(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		try {
//			User user = new User();
//			
//			//thong tin user nguoi dung gui len
//			BeanUtils.populate(user, request.getParameterMap());
//			
//			UserDao dao = new UserDao();
//			dao.insert(user);
//			
//			request.setAttribute("message","Insert thanh cong");
//					
//		} catch (Exception e) {
//			System.out.println(e);
//			request.setAttribute("error","loi ne" + e.getMessage());
//		}
//		
//	}
//	protected void edit(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		try {
//			
//			String userId = request.getParameter("userId");
//			
//			UserDao dao = new UserDao();
//			User user = dao.findById(userId);
//			
//			request.setAttribute("userEdit", user);
//
//					
//		} catch (Exception e) {
//			System.out.println(e);
//			request.setAttribute("error","loi ne" + e.getMessage());
//		}
//		
//	}
//	protected void findAll(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		try {
//
//			
//			UserDao dao = new UserDao();
//			List<User>list = dao.findAll();
//			
//			request.setAttribute("users",list);
//
//					
//		} catch (Exception e) {
//			System.out.println(e);
//			request.setAttribute("error","loi ne" + e.getMessage());
//		}
//		
//	}
//	//service

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
		req.getRequestDispatcher("/views/editUser.jsp").forward(req, resp);
	}
}
