package com.gymmanagement.repository;


	
	import com.gymmanagement.entity.Member;

	public interface MemberRepository extends JpaRepository<Member, Long> {
	    
	    Member findByEmail(String email);
	}


