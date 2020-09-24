package co.timfibbus.fashionizer;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonProperty;

@Entity
public class Upload {
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	@JsonProperty("public_id")
	private String publicId;
	private String signature;
	private int width;
	private int height;
	private String format;
	@JsonProperty("resource_type")
	private String resourceType;
	@JsonProperty("created_at")
	private String createdAt;
	private int bytes;
	private String type;
	private String url;
	@JsonProperty("secure_url")
	private String secureUrl;
	private String etag;
	@ManyToOne
	private User owner;
	
	public Upload() {
		
	}
	
	public Upload(Long id, String publicId, String signature, int width, int height, String format, String resourceType,
			String createdAt, int bytes, String type, String url, String secureUrl, String etag) {
		super();
		this.id = id;
		this.publicId = publicId;
		this.signature = signature;
		this.width = width;
		this.height = height;
		this.format = format;
		this.resourceType = resourceType;
		this.createdAt = createdAt;
		this.bytes = bytes;
		this.type = type;
		this.url = url;
		this.secureUrl = secureUrl;
		this.etag = etag;
	}
	
	public Upload(Long id, String publicId, String signature, int width, int height, String format, String resourceType,
			String createdAt, int bytes, String type, String url, String secureUrl, String etag, User owner) {
		super();
		this.id = id;
		this.publicId = publicId;
		this.signature = signature;
		this.width = width;
		this.height = height;
		this.format = format;
		this.resourceType = resourceType;
		this.createdAt = createdAt;
		this.bytes = bytes;
		this.type = type;
		this.url = url;
		this.secureUrl = secureUrl;
		this.etag = etag;
		this.owner = owner;
	}

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getPublicId() {
		return publicId;
	}
	public void setPublicId(String publicId) {
		this.publicId = publicId;
	}
	public String getSignature() {
		return signature;
	}
	public void setSignature(String signature) {
		this.signature = signature;
	}
	public int getWidth() {
		return width;
	}
	public void setWidth(int width) {
		this.width = width;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	public String getFormat() {
		return format;
	}
	public void setFormat(String format) {
		this.format = format;
	}
	public String getResourceType() {
		return resourceType;
	}
	public void setResourceType(String resourceType) {
		this.resourceType = resourceType;
	}
	public String getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(String createdAt) {
		this.createdAt = createdAt;
	}
	public int getBytes() {
		return bytes;
	}
	public void setBytes(int bytes) {
		this.bytes = bytes;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getSecureUrl() {
		return secureUrl;
	}
	public void setSecureUrl(String secureUrl) {
		this.secureUrl = secureUrl;
	}
	public String getEtag() {
		return etag;
	}
	public void setEtag(String etag) {
		this.etag = etag;
	}

	public User getOwner() {
		return owner;
	}

	public void setOwner(User owner) {
		this.owner = owner;
	}
	
	
	
	

}
