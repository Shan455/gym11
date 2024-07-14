package com.gymmanagement.service;

public class MemberService {

	public interface MemberService {
	    
	    Member registerMember(Member member);
	    
	    Member findByEmail(String email);
	    
	    Member updateMember(Member member);
	    
	    // Additional methods as needed
	}

}
