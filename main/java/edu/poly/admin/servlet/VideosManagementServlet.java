package edu.poly.admin.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.dao.UserDao;
import edu.poly.dao.VideoDao;
import edu.poly.model.User;
import edu.poly.model.Video;

@WebServlet({ "/Admin/VideosManagement", "/Admin/VideosManagement/create", "/Admin/VideosManagement/update",
		"/Admin/VideosManagement/delete", "/Admin/VideosManagement/reset", "/Admin/VideosManagement/edit","/Admin/VideosManagement/edit/*" })
//cần phải upload file
@MultipartConfig
public class VideosManagementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String url = request.getRequestURI().toString();
		VideoDao dao = new VideoDao();
		Video videoEdit = new Video();
		
		if (url.contains("edit")) {
			Integer id =null;
			try {
				id =  Integer.parseInt(url.substring(url.lastIndexOf("/") + 1));
				videoEdit = dao.findById(id);
			} catch (Exception e) {
				
			}
		}	
		List<Video> list = dao.findAll();
		request.setAttribute("videoEdit", videoEdit);
		request.setAttribute("videoList", list);
		PageInfo.prepareAndForward(request, response, PageType.VIDEO_MANAGEMENT_PAGE);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = request.getRequestURI().toString();
		if (url.contains("create")) {
			create(request, response);

		}
		if (url.contains("delete")) {
			delete(request, response);

		}
		if (url.contains("update")) {
			update(request, response);

		}
		if (url.contains("reset")) {
			reset(request, response);

		}
		
	}


	private void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		VideoDao dao = new VideoDao();
		try {
			Integer videoID = Integer.parseInt(request.getParameter("videoID").trim());
			String videoTitle = request.getParameter("videoTitle").trim();
			Integer videoCount = Integer.parseInt(request.getParameter("videoCount").trim());
			String description = request.getParameter("note").trim();
			Boolean activeChuoi = Boolean.parseBoolean(request.getParameter("active").trim());
			
			// load data len
			Video video = new Video(videoID,activeChuoi,description,"dang rong",videoTitle,videoCount);
			
			

			dao.create(video);
			request.getSession().setAttribute("video", video);
			request.setAttribute("videoEdit", video);
			request.setAttribute("messageVideo", "Thêm thành công!");
		} catch (Exception e) {
			e.printStackTrace();
			
			request.setAttribute("messageVideo", "Thêm thất bại!");
		}
		List<Video> list = dao.findAll();
		request.setAttribute("videoList", list);
		
		PageInfo.prepareAndForward(request, response, PageType.VIDEO_MANAGEMENT_PAGE);
	}


	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		VideoDao dao = new VideoDao();
		try {
			Integer videoID = Integer.parseInt(request.getParameter("videoID").trim());
			try {
				dao.remove(videoID);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			request.setAttribute("messageVideo", "Xóa thành công!");
		} catch (Exception e) {
			e.printStackTrace();
			
			request.setAttribute("messageVideo", "Xóa thất bại!");
		}
		List<Video> list = dao.findAll();
		request.setAttribute("videoList", list);
		PageInfo.prepareAndForward(request, response, PageType.VIDEO_MANAGEMENT_PAGE);
	}
	
	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		VideoDao dao = new VideoDao();
		try {
			Integer videoID = Integer.parseInt(request.getParameter("videoID").trim());
			String videoTitle = request.getParameter("videoTitle").trim();
			Integer videoCount = Integer.parseInt(request.getParameter("videoCount").trim());
			String description = request.getParameter("note").trim();
			Boolean activeChuoi = Boolean.parseBoolean(request.getParameter("active").trim());
			
			// load data len
			Video video = new Video(videoID,activeChuoi,description,"dang rong",videoTitle,videoCount);
			dao.update(video);
			
			request.getSession().setAttribute("video", video);
			
			request.setAttribute("messageVideo", "Cập nhật thành công!");
		} catch (Exception e) {
			e.printStackTrace();
			
			request.setAttribute("messageVideo", "Cập nhật thất bại!");
		}
		List<Video> list = dao.findAll();
		request.setAttribute("videoList", list);
		PageInfo.prepareAndForward(request, response, PageType.VIDEO_MANAGEMENT_PAGE);
	}
	private void reset(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		VideoDao dao = new VideoDao();
		Video video = new Video();
		request.setAttribute("videoEdit", video);
		List<Video> list = dao.findAll();
		request.setAttribute("videoList", list);
		PageInfo.prepareAndForward(request, response, PageType.VIDEO_MANAGEMENT_PAGE);
	}

}
