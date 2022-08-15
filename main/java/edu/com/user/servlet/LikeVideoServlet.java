package edu.com.user.servlet;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.common.SessionUtils;
import edu.poly.dao.FavoriteDao;
import edu.poly.dao.VideoDao;
import edu.poly.model.Favorite;
import edu.poly.model.User;
import edu.poly.model.Video;

@WebServlet({ "/LikeVideoServlet", "/LikeVideoServlet/like/*" })
public class LikeVideoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			if (!SessionUtils.isLogin(request)) {

				request.setAttribute("LoginNao", "Hãy đăng nhập!");
				VideoDao dao = new VideoDao();
				List<Video> list = dao.findAll();
				request.setAttribute("videoHome", list);
				PageInfo.prepareAndForwardUser(request, response, PageType.USER_HOME_PAGE);
			} else {

				try {
					String uri = request.getRequestURI();
					if (uri.contains("like")) {
						String id = uri.substring(uri.lastIndexOf("/") + 1);

						FavoriteDao dao = new FavoriteDao();
						Favorite favorite = new Favorite();
						List<Favorite> favoritelist = dao.findAll();
						Integer index = favoritelist.size();
						Video video = new Video();
						video.setVideoID(Integer.parseInt(id));

						String userName = SessionUtils.getLoginedUsername(request);
						User user = new User();
						user.setUserName(userName);
					
						favorite.setFavoriteID(favoritelist.get(index-1).getFavoriteID()+1);
						System.out.println(favoritelist.get(index-1).getFavoriteID()+1);
						favorite.setVideo(video);
						favorite.setUser(user);
						favorite.setLikedDate(new Date());

						dao.create(favorite);
						request.setAttribute("LoginNao", "Like thành công");
					}
					

				} catch (Exception e) {
					e.printStackTrace();
					request.setAttribute("LoginNao", "Like thất bại");
				}

				VideoDao dao = new VideoDao();
				List<Video> list = dao.findAll();
				request.setAttribute("videoHome", list);
				PageInfo.prepareAndForwardUser(request, response, PageType.USER_HOME_PAGE);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("loi like video servlet do post");
		}
	}

}
