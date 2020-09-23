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

@Entity
public class SavedCloset {

	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@ElementCollection
	@Column(name="the_outfit", length=3000)
	private List<String> outfit;
	
	public List<String> getOutfit(){
		return outfit;
	}
	
	public void setOutfit(List<String> outfit) {
		this.outfit=outfit;
	}
	
	public SavedCloset() {
	}

	public SavedCloset(List<String> outfit) {
		super();
		this.outfit = outfit;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "SavedCloset [id=" + id + ", outfit=" + outfit + "]";
	}
		
	
}

	