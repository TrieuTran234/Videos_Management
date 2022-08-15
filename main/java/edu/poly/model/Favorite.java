package edu.poly.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;


/**
 * The persistent class for the Favorites database table.
 * 
 */
@Entity
@Table(name="Favorites")
@NamedQuery(name="Favorite.findAll", query="SELECT f FROM Favorite f")
public class Favorite implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="FavoriteID")
	private int favoriteID;

	@Temporal(TemporalType.DATE)
	Date LikedDate = new Date();

	//bi-directional many-to-one association to User
	@ManyToOne
	@JoinColumn(name="UserName")
	private User user;

	//bi-directional many-to-one association to Video
	@ManyToOne
	@JoinColumn(name="VideoID")
	private Video video;

	public Favorite() {
	}

	public int getFavoriteID() {
		return this.favoriteID;
	}

	public void setFavoriteID(int favoriteID) {
		this.favoriteID = favoriteID;
	}

	public Date getLikedDate() {
		return this.LikedDate;
	}

	public void setLikedDate(Date likedDate) {
		this.LikedDate = likedDate;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Video getVideo() {
		return this.video;
	}

	public void setVideo(Video video) {
		this.video = video;
	}

}