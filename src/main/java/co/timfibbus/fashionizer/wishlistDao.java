package co.timfibbus.fashionizer;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface wishlistDao extends JpaRepository<Wishlist, Long>{

	List<Wishlist> findByTitleContainsIgnoreCase(String title);
	
	
	List<Wishlist> findAllByOwnerId(Long id);
	
	
}
