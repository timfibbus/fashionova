package co.timfibbus.fashionizer;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;


@Entity
public class Wishlist {
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	private String type;
	private String description;
	private String title;
	@Column(length=2000)
	private String link;
	private String price;
	@Column(length=2000)
	private String thumbnail;
	private String occasion;
	@ManyToOne
	private User owner;
	private Long user;
	
	public Wishlist() {	
	}
	
	public Wishlist(Long id, String type, String description, String title, String link, String price, String thumbnail,
			String occasion, Long user) {
		super();
		this.id = id;
		this.type = type;
		this.description = description;
		this.title = title;
		this.link = link;
		this.price = price;
		this.thumbnail = thumbnail;
		this.occasion = occasion;
		this.user = user;
	}

	public Wishlist(Long id, String type, String description, String title, String link, String price, String thumbnail,
			String occasion) {
		super();
		this.id = id;
		this.type = type;
		this.description = description;
		this.title = title;
		this.link = link;
		this.price = price;
		this.thumbnail = thumbnail;
		this.occasion = occasion;
	}

	public Wishlist(Long id, String type, String description, String title, String link, String price, String thumbnail,
			String occasion, User owner) {
		super();
		this.id = id;
		this.type = type;
		this.description = description;
		this.title = title;
		this.link = link;
		this.price = price;
		this.thumbnail = thumbnail;
		this.occasion = occasion;
		this.owner = owner;
	}

	public Wishlist(Long id, String type, String description, String title, String link, String price,
			String thumbnail) {
		super();
		this.id = id;
		this.type = type;
		this.description = description;
		this.title = title;
		this.link = link;
		this.price = price;
		this.thumbnail = thumbnail;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
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
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	@Override
	public String toString() {
		return "Wishlist [id=" + id + ", type=" + type + ", description=" + description + ", title=" + title + ", link="
				+ link + ", price=" + price + ", thumbnail=" + thumbnail
				+ "]";
	}

	public String getOccasion() {
		return occasion;
	}

	public void setOccasion(String occasion) {
		this.occasion = occasion;
	}

	public Long getUser() {
		return user;
	}

	public void setUser(Long user) {
		this.user = user;
	}



	public User getOwner() {
		return owner;
	}



	public void setOwner(User owner) {
		this.owner = owner;
	}
	
}