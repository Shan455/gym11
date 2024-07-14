package com.gymmanagement.gym;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.ControllerAdvice;

@SpringBootApplication
@ComponentScan(basePackages="com.gymmanagement.controller"+"com.gymmanagement.MemberService")

public class GymApplication {

	public static void main(String[] args) {
		SpringApplication.run(GymApplication.class, args);
		
	}

}
