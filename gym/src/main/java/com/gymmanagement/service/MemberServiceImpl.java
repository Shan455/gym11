package com.gymmanagement.service;

public class MemberServiceImpl {
	import com.gymmanagement.TrainerService;
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.web.bind.annotation.*;

	@RestController
	@RequestMapping("/api/trainers")
	public class TrainerController {
	    
	    @Autowired
	    private TrainerService trainerService;
	    
	    @PostMapping("/add")
	    public Trainer addTrainer(@RequestBody Trainer trainer) {
	        // Validate and add trainer
	        return trainerService.addTrainer(trainer);
	    }
	    
	    @GetMapping("/{id}")
	    public Trainer findById(@PathVariable Long id) {
	        return trainerService.findById(id);
	    }
	    
	    // Additional endpoints as needed
	}

}
