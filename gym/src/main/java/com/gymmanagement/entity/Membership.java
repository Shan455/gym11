package com.gymmanagement.entity;


	import java.util.Date;

import org.springframework.boot.autoconfigure.domain.EntityScan;

import jakarta.persistence.Column;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

	@EntityScan
	@Table(name = "membership")
	public class Membership {



	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long membershipId;

	    @ManyToOne
	    @JoinColumn(name = "member_id", nullable = false)
	    private Member member;

	    @ManyToOne
	    @JoinColumn(name = "package_id", nullable = false)
	    private Package Membershippackage;

	    @Column(nullable = false)
	    private Date startDate;

	    private Date endDate;

	    // Getters and setters
	    public Long getMembershipId() {
	        return membershipId;
	    }

	    public void setMembershipId(Long membershipId) {
	        this.membershipId = membershipId;
	    }

	    public Member getMember() {
	        return member;
	    }

	    public void setMember(Member member) {
	        this.member = member;
	    }

	    public Package getPackage() {
	        return Membershippackage;
	    }

	    public void setPackage(Package pkg) {
	        this.Membershippackage = pkg;
	    }
	    

	    public Date getStartDate() {
	        return startDate;
	    }

	    public void setStartDate(Date startDate) {
	        this.startDate = startDate;
	    }

	    public Date getEndDate() {
	        return endDate;
	    }

	    public void setEndDate(Date endDate) {
	        this.endDate = endDate;
	    }
	}


