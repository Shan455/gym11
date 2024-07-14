package com.yourgym.repository;

import org.springframework.data.jpa.repository.JpaRepository;

public interface MembershipRepository extends JpaRepository<Membership, Long> {
    // Additional query methods if needed
}
