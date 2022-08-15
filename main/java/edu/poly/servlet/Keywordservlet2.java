package edu.poly.servlet;

import java.io.IOException;
import java.util.Iterator;
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

import edu.poly.model.User;




@WebServlet("/Keywordservlet2")
public class Keywordservlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String keyword = req.getParameter("keyword");
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("assingment");
		
		EntityManager em = emf.createEntityManager();
//		// MÃ THAO TÁC BÀI THẦY			
//		User user = em.find(User.class, username);
//		System.out.print("User: "+user.getFullname());//test
//		
//		List<Favorite> favorites = user.getFavorites();
//		for(Favorite f : favorites) {
//			System.out.print("\n"+f.getId()+" - "+f.getUser().getFullname()+" - "+f.getLikeDate()+" - "+
//					f.getVideo().getTitle());				
//		}
		
		//==========================
		try {
//			String jpql = "SELECT DISTINCT o.video FROM Favorite o WHERE o.video.title LIKE :keyword"; cau nay sai ?????????????
			String jpql = "SELECT o FROM User o WHERE o.userName LIKE :keyword";
			TypedQuery<User> query = em.createQuery(jpql, User.class);
			
			query.setParameter("keyword",  "%"+keyword +"%");
			
			System.out.println(jpql);
			
			List<User> list = query.getResultList();
//			for (Video video : list) {
//				System.out.println(video.getVideoId());
//				System.out.println(video.getTitle());
//				System.out.println(video.getViews());
//				System.out.println(video.getActive());
//				
//			}
			req.setAttribute("video",list);
			
		} catch (Exception e) {
			em.getTransaction(); 
			System.out.println("Error: "+e);
		}
		//==================load tat ca video
//			TypedQuery<Video> query = em.createNamedQuery("Video.findAll", Video.class);
//			
//			List<Video> list = query.getResultList() ;
//			for (Video video : list) {
//				System.out.println(video.getVideoId());
//				System.out.println(video.getTitle());
//				System.out.println(video.getViews());
//				System.out.println(video.getActive());
//				
//			}
		//==================
		em.close();
		emf.close();		
		req.getRequestDispatcher("/keyword2.jsp").forward(req, resp);

	}

	
}
