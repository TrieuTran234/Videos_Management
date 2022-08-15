package edu.poly.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the Share database table.
 * 
 */
@Entity
@NamedQuery(name="Share.findAll", query="SELECT s FROM Share s")
public class Share implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="ShareID")
	private int shareID;

	@Column(name="Emails")
	private String emails;

	@Column(name="ShareDate")
	private String shareDate;

	//bi-directional many-to-one association to User
	@ManyToOne
	@JoinColumn(name="UserName")
	private User user;

	//bi-directional many-to-one association to Video
	@ManyToOne
	@JoinColumn(name="VideoID")
	private Video video;

	public Share() {
	}

	public int getShareID() {
		return this.shareID;
	}

	public void setShareID(int shareID) {
		this.shareID = shareID;
	}

	public String getEmails() {
		return this.emails;
	}

	public void setEmails(String emails) {
		this.emails = emails;
	}

	public String getShareDate() {
		return this.shareDate;
	}

	public void setShareDate(String shareDate) {
		this.shareDate = shareDate;
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