package com.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.business.service.UserService;

@Controller
public class MixedAbilityController {
	@Autowired
	private UserService  userservice;
}
