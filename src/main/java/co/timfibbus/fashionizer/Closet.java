package co.timfibbus.fashionizer;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;


@Entity
public class Closet {

	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String type;
	private String description;
	private String title;
	@Column(length=2000)
	private String thumbnail;
	private String occasion;

	public Closet() {
	}

	public Closet(Long id, String type, String description, String title, String thumbnail, String occasion) {
		super();
		this.id = id;
		this.type = type;
		this.description = description;
		this.title = title;
		this.thumbnail = thumbnail;
		this.occasion = occasion;
	}

	public Closet(Long id, String type, String description, String title, String thumbnail) {
		super();
		this.id = id;
		this.type = type;
		this.description = description;
		this.title = title;
		this.thumbnail = thumbnail;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	@Override
	public String toString() {
		return "Closet [id=" + id + ", type=" + type + ", description=" + description + ", title=" + title
				+ ", thumbnail=" + thumbnail + "]";
	}

	public String getOccasion() {
		return occasion;
	}

	public void setOccasion(String occasion) {
		this.occasion = occasion;
	}

}