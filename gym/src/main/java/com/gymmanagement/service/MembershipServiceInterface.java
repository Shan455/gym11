package com.gymmanagement.service;



import com.gymmanagement.entity.Membership;

public interface MembershipServiceInterface{
	    
	    Membership addMembership(Membership membership);
	    
	    Membership findById(Long id);
	    
	    // Additional methods as needed
	}


