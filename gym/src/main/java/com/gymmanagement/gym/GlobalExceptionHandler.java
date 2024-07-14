package com.gymmanagement.gym;
	import org.springframework.http.HttpStatus;
	import org.springframework.web.bind.annotation.ControllerAdvice;
	import org.springframework.web.bind.annotation.ExceptionHandler;
	import org.springframework.web.bind.annotation.ResponseStatus;
	import org.springframework.web.servlet.NoHandlerFoundException;

	@ControllerAdvice
	public class GlobalExceptionHandler {

	    @ExceptionHandler(NoHandlerFoundException.class)
	    @ResponseStatus(HttpStatus.NOT_FOUND)
	    public String handleNotFound() {
	        return "error/404"; // This would map to an HTML file in src/main/resources/templates/error/404.html
	    }
	}


