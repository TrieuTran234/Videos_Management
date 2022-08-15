package edu.poly.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import edu.poly.model.Favorite;
import edu.poly.utils.JpaUtils;



public class FavoriteDao {
	private EntityManager em = JpaUtils.getEntityManager();
	public FavoriteDao() {
		
		
	}
	@Override
	protected void finalize() throws Throwable {
		// TODO Auto-generated method stub
		em.close();
		super.finalize();
	}
	public Favorite create(Favorite entity) {
		try {
			em.getTransaction().begin();
			em.persist(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			// TODO: handle exception
			em.getTransaction().rollback();
			throw new RuntimeException();
		}

	}
	public Favorite update(Favorite entity) {
		try {
			em.getTransaction().begin();
			em.merge(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			// TODO: handle exception
			em.getTransaction().rollback();
			throw new RuntimeException();
		}

	}

	public Favorite remove(String id) {
		try {
			Favorite entity = this.findById(id);
			em.getTransaction().begin();
			em.remove(entity);
			em.getTransaction().commit();
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException();
		}
	}
	public Favorite findById(String id) {
		Favorite entity = em.find(Favorite.class, id);
		return entity;
	}
	public List<Favorite> findAll(){
		String jpql = "SELECT o FROM Favorite o";
		TypedQuery<Favorite> query = em.createQuery(jpql, Favorite.class);
		List<Favorite> list = query.getResultList();
		return list;
	}
//	public Favorite findLast(){
//		//
//		String jpql = "select top 1 o from Favorites o ORDER BY o.FavoriteID DESC";
//		TypedQuery<Favorite> query = em.createQuery(jpql, Favorite.class);
//		Favorite entity = query.getSingleResult();
//		return entity;
//	}

}
