package co.timfibbus.fashionizer;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;


public interface closetDao extends JpaRepository<Closet, Long>{

	List<Closet> findAllByOccasion(String occasion);
	
	Closet findByThumbnail(String thumbnail);
	
	
}
