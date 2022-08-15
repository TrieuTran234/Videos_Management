package edu.poly.servlet;

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

import edu.poly.model.Video;


@WebServlet("/VideoServlet")
public class VideoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("Lab6_Ps15056");
		
		EntityManager em = emf.createEntityManager();
		try {
			boolean favorite = Boolean.parseBoolean(req.getParameter("favorite-video"));
			String jpql = "SELECT o FROM Video o WHERE o.favorites IS EMPTY";
			if(favorite) {
			jpql = "SELECT o FROM Video o WHERE o.favorites IS NOT EMPTY";
			}
			TypedQuery<Video> query = em.createQuery(jpql, Video.class);
			List<Video> list = query.getResultList();
			req.setAttribute("Video", list);
		} catch (Exception e) {
			em.getTransaction(); 
			System.out.println("Error: "+e);
		}
		em.close();
		emf.close();		
		req.getRequestDispatcher("/checkbox.jsp").forward(req, resp);	
	}



}
