package co.timfibbus.fashionizer;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface PhotoDao extends JpaRepository<Upload, Long>{
	
	
	List<Upload> findAllByOwnerId(Long id);
	

}
