package com.gymmanagement.repository;

public class MemberRepository {
	
	import org.springframework.data.jpa.repository.JpaRepository;

	public interface MemberRepository extends JpaRepository<Member, Long> {
	    
	    Member findByEmail(String email);
	}

}
