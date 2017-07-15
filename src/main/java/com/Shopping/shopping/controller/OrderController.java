package com.Shopping.shopping.controller;

import java.io.BufferedOutputStream;

import java.io.File;
import java.io.FileOutputStream;
import java.util.LinkedHashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

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

import com.Shopping.shoppingBackend.dao.CartDAO;
import com.Shopping.shoppingBackend.dao.CategoryDAO;
import com.Shopping.shoppingBackend.dao.ProductDAO;
import com.Shopping.shoppingBackend.model.Cart;
import com.Shopping.shoppingBackend.model.Category;
import com.Shopping.shoppingBackend.model.Product;





@Controller
public class OrderController 
{

	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("/Checkout")
	public String orderConfirmation(HttpSession session,Model m)
	{
		String username=(String)session.getAttribute("username");
		
		List<Cart> list=cartDAO.getCartItems(username);
		int grandtotal=0;
		
		for(Cart cart:list)
		{
			grandtotal=grandtotal+(cart.getQuantity()*cart.getPrice());
		}
		
		m.addAttribute("grandtotal",grandtotal);
		m.addAttribute("cartitems",list);
		
		return "OrderConfirmation";
	}
	
	
}