package com.gymmanagement.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.gymmanagement.service.PackageService;

import io.swagger.v3.oas.annotations.parameters.RequestBody;

public class PackageController {
	
	@RestController
	@RequestMapping("/api/packages")
	public class PackageControllerInteface {
	    
	    @Autowired
	    private PackageService packageService;
	    
	    @PostMapping("/add")
	    public Package addPackage(@RequestBody Package packageentity) {
	        // Validate and add package
	        return packageService.addPackage(packageentity);
	    }
	    
	    @GetMapping("/{id}")
	    public Package findById(@PathVariable Long id) {
	        return packageService.findById(id);
	    }
	    
	    // Additional endpoints as needed
	}

}
