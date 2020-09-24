package co.timfibbus.fashionizer;

import java.util.List;
import java.util.Set;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;

@Entity
public class SavedCloset {

	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String top;
	private String bottom;
	private String accessory;
	private String shoes;
	private String title;
	@ManyToOne
	private User owner;

	
	
	public SavedCloset(Long id, String top, String bottom, String accessory, String shoes, String title, User owner) {
		super();
		this.id = id;
		this.top = top;
		this.bottom = bottom;
		this.accessory = accessory;
		this.shoes = shoes;
		this.title = title;
		this.owner = owner;
	}

	public SavedCloset() {
		super();
	}

	public SavedCloset(Long id, String top, String bottom, String accessory, String shoes, String title) {
		super();
		this.id = id;
		this.top = top;
		this.bottom = bottom;
		this.accessory = accessory;
		this.shoes = shoes;
		this.title = title;
	}

	public String getTop() {
		return top;
	}

	public void setTop(String top) {
		this.top = top;
	}

	public String getBottom() {
		return bottom;
	}

	public void setBottom(String bottom) {
		this.bottom = bottom;
	}

	public String getAccessory() {
		return accessory;
	}

	public void setAccessory(String accessory) {
		this.accessory = accessory;
	}

	public String getShoes() {
		return shoes;
	}

	public void setShoes(String shoes) {
		this.shoes = shoes;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Override
	public String toString() {
		return "SavedCloset [id=" + id + ", top=" + top + ", bottom=" + bottom + ", accessory=" + accessory + ", shoes="
				+ shoes + ", title=" + title + "]";
	}

	public User getOwner() {
		return owner;
	}

	public void setOwner(User owner) {
		this.owner = owner;
	}	
	
}	