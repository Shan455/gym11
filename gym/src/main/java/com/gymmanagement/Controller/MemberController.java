package com.gymmanagement.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/members")
public class MemberController {
    
    @Autowired
    private MemberService memberService;
    
    @PostMapping("/register")
    public Member registerMember(@RequestBody Member member) {
        // Validate and register member
        return memberService.registerMember(member);
    }
    
    @GetMapping("/findByEmail")
    public Member findByEmail(@RequestParam String email) {
        return memberService.findByEmail(email);
    }
    
    @PutMapping("/update")
    public Member updateMember(@RequestBody Member member) {
        // Validate and update member details
        return memberService.updateMember(member);
    }
    
    // Additional endpoints as needed
}
