
package com.gymmanagement.service;

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Service;
	import org.springframework.transaction.annotation.Transactional;

import com.gymmanagement.entity.Membership;
import com.gymmanagement.repository.MembershipRepository;

	@Service
	@Transactional
	public class MembershipServiceImpl implements MembershipServiceInterface {
	    
	    @Autowired
	    private MembershipRepository membershipRepository;
	    
	    public Membership addMembership(Membership membership) {
	        return membershipRepository.save(membership);
	    }
	    
	    public Membership findById(Long id) {
	        return ((Object) membershipRepository.findById(id)).orElse(null);
	    }
	    
	    // Additional methods as needed
	}


