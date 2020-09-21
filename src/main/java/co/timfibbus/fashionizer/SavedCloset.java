package co.timfibbus.fashionizer;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class SavedCloset {

	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String outfit;
	private String top;
	private String bottom;
	private String accessories;
	private String shoes;
	
	public SavedCloset() {
	}
	
	public SavedCloset(Long id, String top, String bottom, String accessories, String shoes) {
		super();
		this.id=id;
		this.top=top;
		this.bottom=bottom;
		this.accessories=accessories;
		this.shoes=shoes;
	}
	public SavedCloset(String outfit) {
		super();
		this.outfit=outfit;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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

	public String getAccessories() {
		return accessories;
	}

	public void setAccessories(String accessories) {
		this.accessories = accessories;
	}

	public String getShoes() {
		return shoes;
	}

	public void setShoes(String shoes) {
		this.shoes = shoes;
	}

	public String getOutfit() {
		return outfit;
	}

	public void setOutfit(String outfit) {
		this.outfit = outfit;
	}

	@Override
	public String toString() {
		return "savedCloset [id=" + id + ", outfit=" + outfit + ", top=" + top + ", bottom=" + bottom
				+ ", accessories=" + accessories + ", shoes=" + shoes + "]";
	}


	
	
}