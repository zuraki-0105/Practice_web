package com.example.practice_web;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PlusController {
	
	@GetMapping("/api/plus")
	public Result plus(@RequestParam int a, @RequestParam int b) {
        return new Result(PlusFromJS.plus(a, b));
    }
	
	record Result(int sum) {}
}
