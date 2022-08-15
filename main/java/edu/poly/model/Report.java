package edu.poly.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;

/**
 * Entity implementation class for Entity: Report
 *
 */
@NamedStoredProcedureQueries({
	@NamedStoredProcedureQuery(
        name="Report.spFavoriteByYear",
        procedureName="spFavoriteByYear",
        parameters={
            @StoredProcedureParameter(name="Year", type=Integer.class)
        }
	)
})
@Entity
public class Report implements Serializable {
	
	private static final long serialVersionUID = 1L;

	public Report() {
		super();
		
	}
	@Id
	Serializable group;
	Long likes;
	Date newest;
	Date oldest;
	public Report(Serializable group, Long likes, Date newest, Date oldest) {
		super();
		this.group = group;
		this.likes = likes;
		this.newest = newest;
		this.oldest = oldest;
	}
	public Serializable getGroup() {
		return group;
	}
	public void setGroup(Serializable group) {
		this.group = group;
	}
	public Long getLikes() {
		return likes;
	}
	public void setLikes(Long likes) {
		this.likes = likes;
	}
	public Date getNewest() {
		return newest;
	}
	public void setNewest(Date newest) {
		this.newest = newest;
	}
	public Date getOldest() {
		return oldest;
	}
	public void setOldest(Date oldest) {
		this.oldest = oldest;
	}
}
