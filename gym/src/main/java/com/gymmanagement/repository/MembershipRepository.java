package com.gymmanagement.repository;
import org.springframework.data.jpa.repository.JpaRepository;

import com.gymmanagement.entity.Membership;

public interface MembershipRepository extends JpaRepository<Membership, Long> {

	Membership save(Membership membership);
    // Additional query methods if needed

	Object findById(Long id);
}
