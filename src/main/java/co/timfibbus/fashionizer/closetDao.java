package co.timfibbus.fashionizer;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;


public interface closetDao extends JpaRepository<Closet, Long>{

	List<Closet> findAllByOccasion(String occasion);

	List<Closet> findAllByOwnerId(Long id);
	
	Closet findByThumbnail(String thumbnail);
	List<Closet> findAllByOccasionAndOwnerId(String occasion, Long id);
	
	
}
