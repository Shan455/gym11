package com.gymmanagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.gymmanagement.service.TrainerService;

@RestController
@RequestMapping("/trainers")
public class TrainerController {

    @Autowired
    private TrainerService trainerService;

    @PostMapping
    public TrainerService addTrainer(@RequestBody TrainerService trainer) {
        return trainerService.addTrainer(trainer);
    }

    @GetMapping("/{id}")
    public TrainerService getTrainer(@PathVariable Long id) {
        return trainerService.findById(id);
    }
}
