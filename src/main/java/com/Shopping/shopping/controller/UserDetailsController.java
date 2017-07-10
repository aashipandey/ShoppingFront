package com.Shopping.shopping.controller;

import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.Shopping.shoppingBackend.dao.UserDetailsDAO;
import com.Shopping.shoppingBackend.model.UserDetails;




@Controller
public class UserDetailsController 
{


	@Autowired
	UserDetailsDAO userdetailsDAO;
	
	@RequestMapping("/Register")
	public String showUserDetail(Model m)
	{
		System.out.println("---UserDetails Page Displaying-----");
		List<UserDetails> list=userdetailsDAO.getUserDetailsDetails();
		m.addAttribute("userdetail",list);
		
		boolean flag=false;
		m.addAttribute("flag",flag);
		
		return "Register";
	}
	
	
	@RequestMapping(value="/InsertUserDetails",method=RequestMethod.POST)
	public String insertUserDetails(@ModelAttribute("userdetail") UserDetails userdetail,Model m)
	{
		System.out.println("---Add UserDetails started -----");
		
		userdetail.setRole("ROLE_USER");
		//userdetail.setEnabled(true);
		userdetailsDAO.insertUpdateUserDetails(userdetail);
		/*
		List<UserDetails> list=userdetailsDAO.getUserDetailsDetails();
		m.addAttribute("userdetail",list);*/
		
		boolean flag=false;
		m.addAttribute("flag",flag);
		
		System.out.println("---UserDetails Added -----");
		
		return "Register";
	}
	
	@RequestMapping(value="/updateUserDetails/{username}")
	public String updateUserDetails(@PathVariable("username") String username,Model m)
	{
		System.out.println("---Getting UserDetails object to be updated -----");
		
		UserDetails userdetails=userdetailsDAO.getUserDetails(username);
		m.addAttribute("userdetails",userdetails);
		
		
		List<UserDetails> list=userdetailsDAO.getUserDetailsDetails();
		m.addAttribute("userdetail",list);
		
		boolean flag=true;
		m.addAttribute("flag",flag);
		
		return "Register";
	}
	
	@RequestMapping(value="/deleteUserDetails,{username}")
	public String deleteUserDetails(@PathVariable("username") String username,Model m)
	{
		UserDetails userdetails=userdetailsDAO.getUserDetails(username);
		userdetailsDAO.deleteUserDetails(userdetails);
		
		UserDetails userdetails1=new UserDetails();
		m.addAttribute("userdetails",userdetails1);
		

		List<UserDetails> list=userdetailsDAO.getUserDetailsDetails();
		m.addAttribute("userdetail",list);
		

		boolean flag=false;
		m.addAttribute("flag",flag);
		
		return "Register";
		
	}
	
	

	
}