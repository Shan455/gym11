package com.gymmanagement.entity;

public class TrainerEntity {
	
	@Entity
	@Table(name = "trainer")
	public class Trainer {

	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long trainerId;

	    @Column(nullable = false)
	    private String fullName;

	    private String specialization;

	    // Getters and setters
	    public Long getTrainerId() {
	        return trainerId;
	    }

	    public void setTrainerId(Long trainerId) {
	        this.trainerId = trainerId;
	    }

	    public String getFullName() {
	        return fullName;
	    }

	    public void setFullName(String fullName) {
	        this.fullName = fullName;
	    }

	    public String getSpecialization() {
	        return specialization;
	    }

	    public void setSpecialization(String specialization) {
	        this.specialization = specialization;
	    }
	}

}
