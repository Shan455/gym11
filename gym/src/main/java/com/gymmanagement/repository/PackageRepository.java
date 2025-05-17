package com.gymmanagement.repository;


	import org.springframework.data.jpa.repository.JpaRepository;

	public interface PackageRepository extends JpaRepository<Package, Long> {
	    // Additional query methods if needed
	}


