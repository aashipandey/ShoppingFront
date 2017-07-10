package com.Shopping.shopping.controller;

import org.springframework.stereotype.Controller;


import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController 
{
	@RequestMapping(value={("/"),("index")} )
	public String showIndex()
	{
		return "index";
	}
	@RequestMapping("/Main")
	public String showMain()
	{
		return "Main";
	}
	@RequestMapping("/Login")
	public String showLogin()
	{
		return "Login";
	}
/*	@RequestMapping("/Register")
	public String showRegister()
	{
		return "Register";
	}*/
	@RequestMapping("/ContactUs")
	public String showContactUs()
	{
		return "ContactUs";
	}
	@RequestMapping("/AboutUs")
	public String showAboutUs()
	{
		return "AboutUs";
	}
	/*@RequestMapping("/Category")
	public String showCategory()
	{
		return "Category";
	}*/
/*	@RequestMapping("/Supplier")
	public String showSupplier()
	{
		return "Supplier";
	}*/
	/*@RequestMapping("/Product")
	public String showProduct()
	{
		return "Product";
	}*/
	@RequestMapping("/ProductPage")
	public String showProductPage()
	{
		return "ProductPage";
	}

}