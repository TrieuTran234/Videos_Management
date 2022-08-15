package edu.com.user.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.dao.FavoriteDao;
import edu.poly.dao.VideoDao;
import edu.poly.model.Video;

@WebServlet("/UsersHomeServlet")
public class UsersHomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			VideoDao dao = new VideoDao();
			List<Video> list = dao.findAll();
			request.setAttribute("videoHome", list);
			
			
			FavoriteDao favoriteDao = new FavoriteDao();
			
			
			
			
			PageInfo.prepareAndForwardUser(request, response, PageType.USER_HOME_PAGE);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("loi userhome servlet do get");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			PageInfo.prepareAndForwardUser(request, response, PageType.USER_HOME_PAGE);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("loi userhome servlet do post");
		}
	}
}
