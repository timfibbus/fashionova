package co.timfibbus.fashionizer;

import com.fasterxml.jackson.annotation.JsonProperty;

public class ImagesResults {
	
	@JsonProperty("position")
	private Long id;
	private String thumbnail;
	private String link;
	private String original;
	
	
	
	public String getOriginal() {
		return original;
	}
	public void setOriginal(String original) {
		this.original = original;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	
	
	

}
