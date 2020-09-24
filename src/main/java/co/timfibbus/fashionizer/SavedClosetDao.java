package co.timfibbus.fashionizer;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface SavedClosetDao extends JpaRepository<SavedCloset, Long>{
	//List<SavedCloset> findByOutfit(String outfit);
	List<SavedCloset> findAllByTitle(String title);
	
	List<SavedCloset> findAllByOwnerId(Long id);
	
}