package com.gymmanagement.repository;

public class PackageRepository {

	import org.springframework.data.jpa.repository.JpaRepository;

	public interface PackageRepository extends JpaRepository<Package, Long> {
	    // Additional query methods if needed
	}

}
