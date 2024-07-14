package com.gymmanagement.entity;

public class PackageEntity {

	import javax.persistence.*;

	@Entity
	@Table(name = "package")
	public class Package {

	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long packageId;

	    @Column(nullable = false)
	    private String name;

	    @Column(columnDefinition = "TEXT")
	    private String description;

	    @Column(nullable = false)
	    private Double price;

	    // Getters and setters
	    public Long getPackageId() {
	        return packageId;
	    }

	    public void setPackageId(Long packageId) {
	        this.packageId = packageId;
	    }

	    public String getName() {
	        return name;
	    }

	    public void setName(String name) {
	        this.name = name;
	    }

	    public String getDescription() {
	        return description;
	    }

	    public void setDescription(String description) {
	        this.description = description;
	    }

	    public Double getPrice() {
	        return price;
	    }

	    public void setPrice(Double price) {
	        this.price = price;
	    }
	}

}
