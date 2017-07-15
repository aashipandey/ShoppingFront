package com.Shopping.shopping.controller;

import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.Shopping.shoppingBackend.dao.CartDAO;
import com.Shopping.shoppingBackend.dao.PaymentDAO;
import com.Shopping.shoppingBackend.dao.ProductDAO;
import com.Shopping.shoppingBackend.model.Cart;
import com.Shopping.shoppingBackend.model.Payment;
import com.Shopping.shoppingBackend.model.Product;

@Controller
public class PageController 
{
	
	@Autowired 
	ProductDAO productDAO;
	
	@Autowired 
	CartDAO cartDAO;
	
	/*@Autowired 
	PaymentDAO paymentDAO;*/
	
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
	public String showProducts(Model m,HttpSession s)
	{
		List<Product> prodlist=productDAO.getProductDetails();
		System.out.println("product list getting printed "+prodlist);
		m.addAttribute("prodlist",prodlist);
		boolean status=Boolean.parseBoolean(s.getAttribute("loggedIn").toString());
		if(status)
		{
	      return "ProductPage";		
		}
		else
		{
		return "Login";

		}
	}
	
	
	
	/*
	@RequestMapping(value="/Payment/{citemid}")
	public String showPayment(@RequestParam("citemid") int citemid,Model m)
	{
		Cart cart=cartDAO.getCartItem(citemid);
		m.addAttribute("cart",cart);
		
		return "Payment";
	}
	
	@RequestMapping(value="/Payment/{citemid}",method=RequestMethod.POST)
	public String showPaymentcard(@RequestParam("citemid") int citemid,@RequestParam("ptype")  String ptype,Model m,HttpSession session,@RequestParam("cardnumber")int cardnumber)
	{
		Cart cart=cartDAO.getCartItem(citemid);
		m.addAttribute("cart",cart);
		Payment obj=new Payment();
		if(ptype.equals("card"))
		{
			obj.setCardnumber(cardnumber);
			
		}
		else
		{
			obj.setCardnumber(0);
		}
	    obj.setCartid(cart.getCartid());
	    
	    float gtotal=Float.parseFloat(session.getAttribute("gtotal").toString());
  obj.setPrice((int)gtotal);
  paymentDAO.insertPayment(obj);
  
	    return "PaySuccess";
	}
	*/

}