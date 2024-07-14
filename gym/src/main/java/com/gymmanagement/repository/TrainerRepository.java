package com.gymmanagement.repository;

public class TrainerRepository {
	
	import org.springframework.data.jpa.repository.JpaRepository;

	public interface TrainerRepository extends JpaRepository<Trainer, Long> {
	    // Additional query methods if needed
	}

}
