package com.gymmanagement.service;

public class TrainerServiceImpl {

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Service;
	import org.springframework.transaction.annotation.Transactional;

	@Service
	@Transactional
	public class TrainerServiceImpl implements TrainerService {
	    
	    @Autowired
	    private TrainerRepository trainerRepository;
	    
	    @Override
	    public Trainer addTrainer(Trainer trainer) {
	        return trainerRepository.save(trainer);
	    }
	    
	    @Override
	    public Trainer findById(Long id) {
	        return trainerRepository.findById(id).orElse(null);
	    }
	    
	    // Additional methods as needed
	}

