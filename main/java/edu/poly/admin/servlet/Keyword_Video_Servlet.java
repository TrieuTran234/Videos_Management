package edu.poly.admin.servlet;

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

import edu.poly.common.PageInfo;
import edu.poly.common.PageType;
import edu.poly.model.User;
import edu.poly.model.Video;



@WebServlet("/Keywordservlet")
public class Keyword_Video_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String keyword = req.getParameter("keyword");
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("assingment");

			
			EntityManager em = emf.createEntityManager();
//			// MÃ THAO TÁC BÀI THẦY			
//			User user = em.find(User.class, username);
//			System.out.print("User: "+user.getFullname());//test
//			
//			List<Favorite> favorites = user.getFavorites();
//			for(Favorite f : favorites) {
//				System.out.print("\n"+f.getId()+" - "+f.getUser().getFullname()+" - "+f.getLikeDate()+" - "+
//						f.getVideo().getTitle());				
//			}
			
			//==========================
			try {
//				String jpql = "SELECT DISTINCT o.video FROM Favorite o WHERE o.video.title LIKE :keyword"; cau nay sai ?????????????
				String jpql = "SELECT DISTINCT o FROM Video o WHERE o.title LIKE :keyword";
				TypedQuery<Video> query = em.createQuery(jpql, Video.class);
				
				query.setParameter("keyword",  "%"+keyword +"%");
				
				System.out.println(jpql);
				
				List<Video> list = query.getResultList();

				req.setAttribute("video",list);
				
			} catch (Exception e) {
				em.getTransaction(); 
				System.out.println("Error: "+e);
			}

			em.close();
			emf.close();		
			PageInfo.prepareAndForward(req, resp, PageType.FIND_VIDEOS );
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("loi keyword do get");
		}

	}

	
}
