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
import com.Shopping.shoppingBackend.dao.CartDAO;
import com.Shopping.shoppingBackend.dao.CategoryDAO;
import com.Shopping.shoppingBackend.dao.ProductDAO;
import com.Shopping.shoppingBackend.dao.ShippingDetailsDAO;
import com.Shopping.shoppingBackend.dao.UserDetailsDAO;
import com.Shopping.shoppingBackend.model.Cart;
import com.Shopping.shoppingBackend.model.Product;
import com.Shopping.shoppingBackend.model.ShippingDetails;
import com.Shopping.shoppingBackend.model.UserDetails;


@Controller
public class ShippingController 
{

	@Autowired
	ShippingDetailsDAO shippingdetailsDAO;
	
	@RequestMapping(value="/InsertShippingDetails",method=RequestMethod.POST)
	public String insertShippingDetails(@ModelAttribute("shippingdetail") ShippingDetails shippingdetail,Model m)
	{
		System.out.println("---Add ShippingDetails started -----");
		
		
		
		shippingdetailsDAO.insertShippingDetails(shippingdetail);
	
		
		boolean flag=false;
		m.addAttribute("flag",flag);
		
		System.out.println("---ShippingDetails Added -----");
		
		return "Thankyou";
	}
	
	
	
	
	

}