package com.Shopping.shopping.controller;

import java.io.BufferedOutputStream;

import java.io.File;
import java.io.FileOutputStream;
import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.Shopping.shoppingBackend.dao.CategoryDAO;
import com.Shopping.shoppingBackend.dao.ProductDAO;
import com.Shopping.shoppingBackend.dao.SupplierDAO;
import com.Shopping.shoppingBackend.model.Category;
import com.Shopping.shoppingBackend.model.Product;
import com.Shopping.shoppingBackend.model.Supplier;





@Controller
public class ProductController 
{

	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	SupplierDAO supplierDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("/Product")
	public String showProduct(Model m)
	{
		
		
		Product product=new Product();
		
		m.addAttribute("catlist",this.getCatList());
		m.addAttribute("supplist",this.getSuppList());
		m.addAttribute("product",product);
		
		List<Product> prodlist=productDAO.getProductDetails();
		m.addAttribute("prodlist",prodlist);
		
		m.addAttribute("flag",true);
		return "Product";
	}
	
	@RequestMapping(value="/InsertProduct",method=RequestMethod.POST)
	public String insertProduct(@ModelAttribute("product") Product product,Model m,@RequestParam("pimage") MultipartFile filedet,BindingResult result)
	{
		System.out.println("---Product Inserted---");
		productDAO.insertUpdateProduct(product);	
		
		System.out.println("---Images Sorting Started---");
		String path="E:\\Aashi\\sample\\shopping\\src\\main\\webapp\\resources\\images\\";
		
		String fileinfo=path+product.getProdid()+".jpg";
		
		File f=new File(fileinfo);
		if(!filedet.isEmpty())
		{
			try
			{
				byte buff[]=filedet.getBytes();
				FileOutputStream fos=new FileOutputStream(f);
				BufferedOutputStream bs=new BufferedOutputStream(fos);
				bs.write(buff);
			}
			catch(Exception e)
			{
				System.out.println("Exception Arised");
			}
		}
		else
		{
			System.out.println("----File Uploading Problem----");
		}
		System.out.println("-------Images Sorted----------");
		
		List<Product> prodlist=productDAO.getProductDetails();
		m.addAttribute("prodlist",prodlist);
		
		if(result.hasErrors())
		{
			return "Product";
		}
		
		m.addAttribute("flag",true);
		return "redirect:Product";
	}
	
	/*@RequestMapping(value="/updateProduct/{prodid}")
	public String updateProduct(@PathVariable("prodid")int prodid,Model m)
	{
		
		Product product=productDAO.getProduct(prodid);
		m.addAttribute("product",product);
		m.addAttribute("catlist",this.getCatList());
		List<Product> prodlist=productDAO.getProductDetails();
		m.addAttribute("prodlist",prodlist);
		
		m.addAttribute("flag",false);
		return "redirect:/Product";
	}*/
	
	
	
	@RequestMapping(value="/updateProduct" ,method=RequestMethod.GET)
	public String updateProduct(@RequestParam("prodid") int prodid,Model m)
	{
		System.out.println("id is "+prodid);
		Product product=productDAO.getProduct(prodid);
		System.out.println(product.getProdid());
		m.addAttribute("product",product);
		
		m.addAttribute("catlist",this.getCatList());
		m.addAttribute("supplist",this.getSuppList());
		List<Product> list=productDAO.getProductDetails();
		m.addAttribute("prodlist",list);
		
		boolean flag=true;
		m.addAttribute("flag",flag);
		
		
		return "Product";
	}
	
	
	
	
	/*
	@RequestMapping(value="/deleteProduct/{prodid}")
	public String deleteProduct(@PathVariable("prodid")int prodid,Model m)
	{
		
		Product product=productDAO.getProduct(prodid);
		productDAO.deleteProduct(product);
		
		Product product1=new Product();
		m.addAttribute("product",product1);
		m.addAttribute("catlist",this.getCatList());
		List<Product> prodlist=productDAO.getProductDetails();
		m.addAttribute("prodlist",prodlist);
		
		m.addAttribute("flag",true);
		return "Product";
	}*/
	
	@RequestMapping(value="/deleteProduct" ,method=RequestMethod.GET)
	public String deleteProduct(@RequestParam("prodid") int prodid,Model m)
	{
		Product product=productDAO.getProduct(prodid);
		productDAO.deleteProduct(product);
		
		Product product1=new Product();
		m.addAttribute("product",product1);
		m.addAttribute("catlist",this.getCatList());
		List<Product> prodlist=productDAO.getProductDetails();
		m.addAttribute("prodlist",prodlist);
		
		boolean flag=false;
		m.addAttribute("flag",flag);
		
		
		return "Product";
	}
	
	
	
	
	public LinkedHashMap<Integer,String> getCatList()
	{
		List<Category> list=categoryDAO.getCategoryDetails();
		
		LinkedHashMap<Integer,String> catlist=new LinkedHashMap<Integer,String>();
		
		for(Category cat:list)
		{
			catlist.put(cat.getCatid(),cat.getCatname());
		}
		
		return catlist;
	}
	public LinkedHashMap<Integer,String> getSuppList()
	{
		List<Supplier> list=supplierDAO.getSupplierDetails();
		
		LinkedHashMap<Integer,String> supplist=new LinkedHashMap<Integer,String>();
		
		for(Supplier supp:list)
		{
			supplist.put(supp.getSuppid(),supp.getSuppname());
		}
		
		return supplist;
	}
	
	/*@RequestMapping(value="/displayProduct")
	public String displayProduct(Model m)
	{
		
		List<Product> prodlist=productDAO.getProductDetails();
		m.addAttribute("prodlist",prodlist);
		
		return "ProductPage";
	}*/
	@ModelAttribute("product")
	public Product getProduct()
	{
		return new Product();
	}
	
	@RequestMapping(value="/ProductDesc")
	public String showProductDesc(@RequestParam("prodid") int prodid,Model m)
	{
		Product product=productDAO.getProduct(prodid);
		m.addAttribute("prodinfo",product);
		return "ProductDesc";
	}
	
}