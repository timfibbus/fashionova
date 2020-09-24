package co.timfibbus.fashionizer;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String username;
	private String password;
	@OneToMany(mappedBy = "owner")
	private List<Closet> closetItems;
	@OneToMany(mappedBy = "owner")
	private List<Wishlist> wishlist;
	@OneToMany(mappedBy = "owner")
	private List<Upload> myUploads;
	@OneToMany(mappedBy = "owner")
	private List<SavedCloset> myOutfits;
	

	public List<SavedCloset> getMyOutfits() {
		return myOutfits;
	}

	public void setMyOutfits(List<SavedCloset> myOutfits) {
		this.myOutfits = myOutfits;
	}

	public List<Upload> getMyUploads() {
		return myUploads;
	}

	public void setMyUploads(List<Upload> myUploads) {
		this.myUploads = myUploads;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(Long id, String username, String password) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}




	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", closetItems=" + closetItems
				+ ", wishlist=" + wishlist + ", myUploads=" + myUploads + ", myOutfits=" + myOutfits + "]";
	}

	public List<Closet> getClosetItems() {
		return closetItems;
	}

	public void setClosetItems(List<Closet> closetItems) {
		this.closetItems = closetItems;
	}

	public List<Wishlist> getWishlist() {
		return wishlist;
	}

	public void setWishlist(List<Wishlist> wishlist) {
		this.wishlist = wishlist;
	}

}
