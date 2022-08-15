package edu.poly.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.poly.model.*;



@WebServlet({ "/sreach/check3", "/sreach/title3", "/sreach/findInRange", "/sreach/findInMonth" })
public class SearchServlet3 extends HttpServlet {
	// Nạp persistence.xml và tạo EntityManagerFactory
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("assingment");
	// Tạo EntityManager để bắt đầu làm việc với CSDL
	EntityManager em = emf.createEntityManager();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String uri = req.getRequestURI();
		if (uri.contains("check3")) {
			this.doCheck(req, resp);

		} else if (uri.contains("title3")) {
			this.doTitle(req, resp);

		} else if (uri.contains("findInRange")) {
			this.doFindInRange(req, resp);
		} else if (uri.contains("findInMonth")) {
			this.doFindInMonth(req, resp);
		}
	}

	private void doFindInMonth(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String[] months = req.getParameterValues("month");
		if(months==null) {
			months=new String[] {"0"};
		}
		List<Integer> m = new ArrayList<Integer>();
		for(String month: months) {
			m.add(Integer.valueOf(month));
		}
		TypedQuery<Video> query = (TypedQuery<Video>) em.createNamedQuery("Video.findInMonths");
		query.setParameter("months", m);
		List<Video> list = query.getResultList();
		req.setAttribute("videos", list);
		String month=Arrays.toString(months);
		req.setAttribute("message",month );
		req.getRequestDispatcher("/views/bai3/findInMonth.jsp").forward(req, resp);
	}

	private void doFindInRange(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String from = req.getParameter("from");
		String to = req.getParameter("to");
		Date fromDay = new Date();
		Date toDay = new Date();
		try {
			fromDay = new SimpleDateFormat("yyyy-MM-dd").parse(from);
			toDay = new SimpleDateFormat("yyyy-MM-dd").parse(to);
			System.out.println(toDay);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			System.out.println("loi");
		}
		TypedQuery<Video> query = (TypedQuery<Video>) em.createNamedQuery("Video.findInRange");
		query.setParameter("from", fromDay);
		query.setParameter("to", toDay);
		List<Video> list = (List<Video>) query.getResultList();
		req.setAttribute("dayFrom", from);
		req.setAttribute("dayTo", to);
		req.setAttribute("videos", list);
		req.getRequestDispatcher("/views/bai3/findInRange.jsp").forward(req, resp);

	}

	private void doTitle(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String keyword = req.getParameter("keyword");

		TypedQuery<Video> query = em.createNamedQuery("Video.findByKeyword", Video.class);
		query.setParameter("keyword", keyword);
		List<Video> list = query.getResultList();
		req.setAttribute("videos", list);

		req.getRequestDispatcher("/views/bai3/keyword.jsp").forward(req, resp);

	}

	private void doCheck(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		TypedQuery<Video> query = em.createNamedQuery("Video.findByUser", Video.class);
		query.setParameter("id", username);
		List<Video> list = query.getResultList();
		req.setAttribute("user", list);
		req.getRequestDispatcher("/views/bai3/search.jsp").forward(req, resp);

	}
}
