package co.timfibbus.fashionizer;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface SavedClosetOutfitDao extends JpaRepository<SavedCloset, Long>{

	List<String> findAllById(int id);
	
}
