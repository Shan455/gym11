package com.gymmanagement.service;

public class MembershipServiceImpl {
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Service;
	import org.springframework.transaction.annotation.Transactional;

	@Service
	@Transactional
	public class MembershipServiceImpl implements MembershipService {
	    
	    @Autowired
	    private MembershipRepository membershipRepository;
	    
	    @Override
	    public Membership addMembership(Membership membership) {
	        return membershipRepository.save(membership);
	    }
	    
	    @Override
	    public Membership findById(Long id) {
	        return membershipRepository.findById(id).orElse(null);
	    }
	    
	    // Additional methods as needed
	}

}
