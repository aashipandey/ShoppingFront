package com.Shopping.shopping.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.Shopping.shoppingBackend.dao.CategoryDAO;
import com.Shopping.shoppingBackend.model.Category;
import com.Shopping.shoppingBackend.model.Product;
import com.Shopping.shoppingBackend.model.Supplier;

@Controller
public class CategoryController 
{

	@Autowired
	CategoryDAO categoryDAO;
	
	@RequestMapping("/Category")
	public String showCategoryPage(Model m)
	{
		System.out.println("---Category Page Displaying-----");
		List<Category> list=categoryDAO.getCategoryDetails();
		m.addAttribute("catdetail",list);
		
		boolean flag=false;
		m.addAttribute("flag",flag);
		
		return "Category";
	}
	
	@RequestMapping(value="/AddCategory",method=RequestMethod.POST)
	public String addCategory(@RequestParam("catname") String catname,@RequestParam("catdesc") String catdesc,Model m)
	{
		System.out.println("---Add Category Starting-----");
		
		System.out.println(catname+":::"+catdesc);
		
		Category category=new Category();
		category.setCatname(catname);
		category.setCatdesc(catdesc);
		
		categoryDAO.insertUpdateCategory(category);
		
		List<Category> list=categoryDAO.getCategoryDetails();
		m.addAttribute("catdetail",list);
		
		boolean flag=false;
		m.addAttribute("flag",flag);
		
		System.out.println("---Category Added----");
		return "Category";
	}
	
	/*@RequestMapping(value="/deleteCategory/{catid}")
	public String deleteCategory(@PathVariable("catid") int catid,Model m)
	{
		System.out.println("---Deleted Category -----");
		
		Category category=categoryDAO.getCategory(catid);
		categoryDAO.deleteCategory(category);
		
		
		List<Category> list=categoryDAO.getCategoryDetails();
		m.addAttribute("catdetail",list);
		
		boolean flag=false;
		m.addAttribute("flag",flag);
		
		return "Category";
	}*/
	
	@RequestMapping(value="/deleteCategory" ,method=RequestMethod.GET)
	public String deleteCategory(@RequestParam("catid") int catid,Model m)
	{
		Category category=categoryDAO.getCategory(catid);
		categoryDAO.deleteCategory(category);
		
		
		List<Category> list=categoryDAO.getCategoryDetails();
		m.addAttribute("catdetail",list);
		
		boolean flag=false;
		m.addAttribute("flag",flag);
		
		return "Category";
		
	}
	
	@RequestMapping(value="/updateCategory" ,method=RequestMethod.GET)
	public String updateCategory(@RequestParam("catid") int catid,Model m)
	{
		Category category=categoryDAO.getCategory(catid);
		m.addAttribute("category",category);
		
		
		List<Category> list=categoryDAO.getCategoryDetails();
		m.addAttribute("catdetail",list);
		
		boolean flag=true;
		m.addAttribute("flag",flag);
		
		
		return "Category";
	}
	
/*	@RequestMapping("/updateCategory/{catid}")
	public String updateCategory(@PathVariable("catid") int catid,Model m)
	{
		System.out.println("---Getting Category object to be updated -----");
		
		Category category=categoryDAO.getCategory(catid);
		m.addAttribute("category",category);
		
		
		List<Category> list=categoryDAO.getCategoryDetails();
		m.addAttribute("catdetail",list);
		
		boolean flag=true;
		m.addAttribute("flag",flag);
		
		return "Category";
	}*/
	
	@RequestMapping(value="/updateCategory",method=RequestMethod.POST)
	public String updateCategory(@RequestParam("catid") int catid,@RequestParam("catname") String catname,@RequestParam("catdesc") String catdesc,Model m)
	{
		try
		{
			Category category=new Category();
			category.setCatid(catid);
			category.setCatname(catname);
			category.setCatdesc(catdesc);
			
			categoryDAO.insertUpdateCategory(category);
			
			List<Category> list=categoryDAO.getCategoryDetails();
			m.addAttribute("catdetail",list);
			
			boolean flag=false;
			m.addAttribute("flag",flag);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "Category";
	}
	
	@ModelAttribute("category")
	public Category getCategory()
	{
		return new Category();
	}
}
