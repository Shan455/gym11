package com.gymmanagement.service;

public class TrainerService {

	public interface TrainerService {
	    
	    Trainer addTrainer(Trainer trainer);
	    
	    Trainer findById(Long id);
	    
	    // Additional methods as needed
	}

}
