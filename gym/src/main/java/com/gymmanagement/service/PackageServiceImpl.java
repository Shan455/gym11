package com.gymmanagement.service;


	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Service;
	import org.springframework.transaction.annotation.Transactional;

import com.gymmanagement.repository.PackageRepository;

	@Service
	@Transactional
	public class PackageServiceImpl extends PackageService {
	    
	    @Autowired
	    private PackageRepository packageRepository;
	    
	    public Package addPackage(Package pkg) {
	        return packageRepository.save(pkg);
	    }
	    
	    public Package findById(Long id) {
	        return packageRepository.findById(id).orElse(null);
	    }
	    
	    // Additional methods as needed
	}


