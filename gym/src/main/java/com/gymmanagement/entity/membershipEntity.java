package com.gymmanagement.entity;

public class membershipEntity {
	
	import java.util.Date;

	@Entity
	@Table(name = "membership")
	public class Membership {

	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long membershipId;

	    @ManyToOne
	    @JoinColumn(name = "member_id", nullable = false)
	    private Member member;

	    @ManyToOne
	    @JoinColumn(name = "package_id", nullable = false)
	    private Package package;

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
	        return package;
	    }

	    public void setPackage(Package package) {
	        this.package = package;
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

}
