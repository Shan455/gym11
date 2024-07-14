package com.gymmanagement.service;

public class PackageServiceImpl {

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Service;
	import org.springframework.transaction.annotation.Transactional;

	@Service
	@Transactional
	public class PackageServiceImpl implements PackageService {
	    
	    @Autowired
	    private PackageRepository packageRepository;
	    
	    @Override
	    public Package addPackage(Package package) {
	        return packageRepository.save(package);
	    }
	    
	    @Override
	    public Package findById(Long id) {
	        return packageRepository.findById(id).orElse(null);
	    }
	    
	    // Additional methods as needed
	}

}
