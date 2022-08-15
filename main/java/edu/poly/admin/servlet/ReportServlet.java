package edu.poly.admin.servlet;

import java.io.IOException;
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

import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.model.Report;


@WebServlet("/slSeverlet")
public class ReportServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("assingment");
		
		EntityManager em = emf.createEntityManager();
		try {
//			String sql="SELECT new Report(o.video,title,count(o),max(o.likedDate),min(o.likedDate)) FROM Favorite o GROUP BY o.video.title";
			String jpql = "SELECT new Report(o.video.title, count(o), " //
					+ "max(o.LikedDate), min(o.LikedDate)) " //
					+ "FROM Favorite o " //
					+ "GROUP BY o.video.title"; 
			TypedQuery<Report> query=em.createQuery(jpql,Report.class);
			List<Report> list=query.getResultList();
//			for (Report report : list) {
//				System.out.println(report.getGroup()+"day ne");
//				System.out.println(report.getLikes());
//				System.out.println(report.getNewest());
//				System.out.println(report.getOldest());
//			}
			req.setAttribute("items", list);
		} catch (Exception e) {
			em.getTransaction(); 
			System.out.println("Error: "+e);
		}
		em.close();
		emf.close();		
		PageInfo.prepareAndForward(req, resp, PageType.REPORT_FAVORITE_COUNT );
	}

	

}
