package com.gymmanagement.Controller;

public class PackageController {
	
	import com.yourgym.service.PackageService;
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.web.bind.annotation.*;

	@RestController
	@RequestMapping("/api/packages")
	public class PackageController {
	    
	    @Autowired
	    private PackageService packageService;
	    
	    @PostMapping("/add")
	    public Package addPackage(@RequestBody Package package) {
	        // Validate and add package
	        return packageService.addPackage(package);
	    }
	    
	    @GetMapping("/{id}")
	    public Package findById(@PathVariable Long id) {
	        return packageService.findById(id);
	    }
	    
	    // Additional endpoints as needed
	}

}
