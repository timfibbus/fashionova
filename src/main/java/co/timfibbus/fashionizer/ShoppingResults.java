package co.timfibbus.fashionizer;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

public class ShoppingResults {
	
	@JsonProperty("position")
	private Long id;
	private String title;
	private String link;
	private String price;
	private double rating;
	private int reviews;
	private String snippet;
	private List<String> extensions;
	private String thumbnail;
	
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
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public Double getRating() {
		return rating;
	}
	public void setRating(Double rating) {
		this.rating = rating;
	}
	public Integer getReviews() {
		return reviews;
	}
	public void setReviews(Integer reviews) {
		this.reviews = reviews;
	}
	public String getSnippet() {
		return snippet;
	}
	public void setSnippet(String snippet) {
		this.snippet = snippet;
	}
	public List<String> getExtensions() {
		return extensions;
	}
	public void setExtensions(List<String> extensions) {
		this.extensions = extensions;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	
}