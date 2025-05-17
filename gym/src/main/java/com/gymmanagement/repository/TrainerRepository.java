
package com.gymmanagement.repository;


	import org.springframework.data.jpa.repository.JpaRepository;

import com.gymmanagement.entity.TrainerEntity.Trainer;

	public interface TrainerRepository extends JpaRepository<Trainer, Long> {
	    // Additional query methods if needed
	}


