package edu.poly.dao;

import java.util.List;

import javax.persistence.Query;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import edu.poly.model.KhachHang;
import edu.poly.utils.JpaUtils;

public class NguoiDungDao {
	public void insert(KhachHang user) {
		EntityManager em = JpaUtils.getEntityManager();

		EntityTransaction trans = em.getTransaction();

		try {
			trans.begin();

			em.persist(user);

			trans.commit();

		} catch (Exception e) {
			e.printStackTrace();

			trans.rollback();

			throw e;
		} finally {
			em.close();
		}
	}

	public void update(KhachHang user) {
		EntityManager em = JpaUtils.getEntityManager();

		EntityTransaction trans = em.getTransaction();

		try {
			trans.begin();

			em.merge(user);

			trans.commit();

		} catch (Exception e) {
			e.printStackTrace();

			trans.rollback();

			throw e;
		} finally {
			em.close();
		}
	}

	public void delete(String userId) {
		EntityManager em = JpaUtils.getEntityManager();

		EntityTransaction trans = em.getTransaction();

		try {
			trans.begin();

			KhachHang user = em.find(KhachHang.class, userId);
			if (user != null) {
				em.remove(user);
				System.out.println("xoa thanh cong!");
			} else {
				System.out.println("xoa that bai!");
			}

			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();

			trans.rollback();

			throw e;
		} finally {
			em.close();
		}
	}

	public KhachHang findById(String userId) {
		EntityManager em = JpaUtils.getEntityManager();

		KhachHang user = em.find(KhachHang.class, userId);
		
		return user;
	}
	
	public List<KhachHang> findAll() {
		EntityManager em = JpaUtils.getEntityManager();
		
		TypedQuery<KhachHang> query = em.createNamedQuery("KhachHang.findAll", KhachHang.class);
		
		return query.getResultList() ;
	}
	

	
	public List<KhachHang> findByFullName(String fullname) {
		EntityManager em = JpaUtils.getEntityManager();
		
		String jqpl ="SELECT u FROM NguoiDung u where u.fullname like :fullname ";
		
		TypedQuery<KhachHang> query = em.createQuery(jqpl,KhachHang.class);
		
		query.setParameter("fullname",  "%"+ fullname+"%");
		
		return query.getResultList() ;
	}

	
	
	
	
}
