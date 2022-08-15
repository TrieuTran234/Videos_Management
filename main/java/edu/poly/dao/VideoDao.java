package edu.poly.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import edu.poly.model.User;
import edu.poly.model.Video;
import edu.poly.utils.JpaUtils;

public class VideoDao {
	
	EntityManager em = JpaUtils.getEntityManager();
	public VideoDao() {

	}

//	@Override
//	protected void finalize() throws Throwable {
//		// TODO Auto-generated method stub
//		em.close();
//		super.finalize();
//	}

	public void create(Video entity) {
		EntityManager em = JpaUtils.getEntityManager();
		EntityTransaction trans = em.getTransaction();
		try {
			trans.begin();
			
			em.persist(entity);

			trans.commit();
			
		} catch (Exception e) {
			// TODO: handle exception
			trans.rollback();
			throw e;
		}
	}

	public void update(Video entity) {
		try {
			em.getTransaction().begin();
			em.merge(entity);
			em.getTransaction().commit();
			
		} catch (Exception e) {
			// TODO: handle exception
			em.getTransaction().rollback();
			throw new RuntimeException();
		}

	}

	public void remove(Integer id) {
		EntityManager em = JpaUtils.getEntityManager();
		EntityTransaction trans = em.getTransaction();
		
		try {
			trans.begin();
			Video entity =  em.find(Video.class, id);
		
			if (entity != null) {
				em.remove(entity);
				System.out.println("xoa thanh cong!");
			} else {
				System.out.println("xoa that bai!");
			}
			
			trans.commit();
		} catch (Exception e) {
			trans.rollback();
			throw e;
		} finally {
			em.close();
		}
	}

	public Video findById(Integer id) {
		
		EntityManager em = JpaUtils.getEntityManager();
		Video entity = em.find(Video.class, id);
		return entity;
		
	}

	public List<Video> findAll() {
		String jpql = "SELECT o FROM Video o";
		
		TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		List<Video> list = query.getResultList();
		return list;
	}
}
