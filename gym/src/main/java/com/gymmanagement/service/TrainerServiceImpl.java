package com.gymmanagement.service;

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Service;
	import org.springframework.transaction.annotation.Transactional;

import com.gymmanagement.entity.TrainerEntity.Trainer;
import com.gymmanagement.repository.TrainerRepository;

	@Service
	@Transactional
	public class TrainerServiceImpl extends TrainerService {
	    
	    @Autowired
	    private TrainerRepository trainerRepository;
	    
	    public Trainer addTrainer(Trainer trainer) {
	        return trainerRepository.save(trainer);
	    }
	    
	    public Trainer findById(Long id) {
	        return trainerRepository.findById(id).orElse(null);
	    }
	    
	    // Additional methods as needed
	}

