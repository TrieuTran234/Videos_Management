package edu.poly.common;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections.map.HashedMap;

public class PageInfo {
	public static Map<PageType, PageInfo> pageRoute = new HashedMap();
	
	static {
		pageRoute.put(PageType.USER_MANAGEMENT_PAGE, new PageInfo("User Management", "/views/admin/users/users.jsp", null));
		pageRoute.put(PageType.REPORT_MANAGEMENT_PAGE, new PageInfo("Reports ", "/views/admin/reports/reports.jsp", null));
		pageRoute.put(PageType.VIDEO_MANAGEMENT_PAGE, new PageInfo("Videos Management", "/views/admin/videos/videos.jsp", null));
		pageRoute.put(PageType.REPORT_FAVORITE_COUNT, new PageInfo("Favorite Count", "/Report.jsp", null));
		pageRoute.put(PageType.FIND_VIDEOS, new PageInfo("Find Videos", "/keyword.jsp", null));

		
		pageRoute.put(PageType.USER_HOME_PAGE, new PageInfo("User Home", "/views/admin_NDung/videos/videos.jsp", null));
		pageRoute.put(PageType.USER_LOGIN_PAGE, new PageInfo("Login Page", "/views/login/login.jsp", null));
		pageRoute.put(PageType.USER_REGIST_PAGE, new PageInfo("Registration Page", "/views/login/register.jsp", null));
		pageRoute.put(PageType.USER_CHANGEPASS_PAGE, new PageInfo("Change Pass Page", "/views/login/chancePass.jsp", null));
		pageRoute.put(PageType.USER_EDITPROFILE_PAGE, new PageInfo("Edit Profile Page", "/views/login/editProfile.jsp", null));
		pageRoute.put(PageType.USER_FAVORITE_PAGE, new PageInfo("Favorite Page", "/views/admin_NDung/videos/favorite.jsp", null));

	}
	private String title;
	private String contenUrl;
	private String scripUrl;

	public static void prepareAndForward(HttpServletRequest request ,HttpServletResponse response ,PageType pageType) throws ServletException, IOException {
		PageInfo page=pageRoute.get(pageType);
		
		request.setAttribute("page", page);
		
		request.getRequestDispatcher("/views/admin/index_admin.jsp").forward(request, response);
		
	}
	
	public static void prepareAndForwardUser(HttpServletRequest request ,HttpServletResponse response ,PageType pageType) throws ServletException, IOException {
		PageInfo page=pageRoute.get(pageType);
		
		request.setAttribute("page", page);
		
		request.getRequestDispatcher("/views/admin_NDung/index_user.jsp").forward(request, response);
		
	}
	public static void prepareAndForwardLogin(HttpServletRequest request ,HttpServletResponse response ,PageType pageType) throws ServletException, IOException {
		PageInfo page=pageRoute.get(pageType);
		
		request.setAttribute("page", page);
		
		request.getRequestDispatcher("/views/login/index_login.jsp").forward(request, response);
		
	}
	
	public PageInfo(String title, String contenUrl, String scripUrl) {
		super();
		this.title = title;
		this.contenUrl = contenUrl;
		this.scripUrl = scripUrl;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContenUrl() {
		return contenUrl;
	}

	public void setContenUrl(String contenUrl) {
		this.contenUrl = contenUrl;
	}

	public String getScripUrl() {
		return scripUrl;
	}

	public void setScripUrl(String scripUrl) {
		this.scripUrl = scripUrl;
	}

}
