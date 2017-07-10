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
public class CartController 
{

	@Autowired
	CartDAO cartDAO;
	

	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping(value="/addToCart/{prodid}")
	public String addToCart(@PathVariable("prodid") int prodid,@RequestParam ("quantity") int quantity,HttpSession session,Model m)
	{
		Cart cart=new Cart();
		String username=(String)session.getAttribute("username");
		
		cart.setCartid(1001);
		cart.setProdid(prodid);
		cart.setQuantity(quantity);
		
		cart.setStatus("N");
		cart.setUsername(username);
		
		Product product=productDAO.getProduct(prodid);
		cart.setProdname(product.getProdname());
		cart.setPrice(product.getPrice());
		
		cartDAO.addToCart(cart);
		
		List<Cart> list=cartDAO.getCartItems(username);
		m.addAttribute("cartitems",list);
		return "Cart";
	}
	
	@RequestMapping(value="/updatecartItem/{citemid}")
	public String updateCartItem(@PathVariable("citemid")int citemid,@RequestParam ("quantity") int quantity,HttpSession session,Model m)
	{
		
		Cart cart=cartDAO.getCartItem(citemid);
		
		//Validation with Product Stock
		
		cart.setQuantity(quantity);
		cartDAO.updateCartItem(cart);
		
		String username=(String)session.getAttribute("username");
		
		List<Cart> list=cartDAO.getCartItems(username);
		m.addAttribute("cartitems",list);
		
		return "Cart";
	}
	
	@RequestMapping(value="/deletecartItem/{citemid}")
	public String deleteCartItem(@PathVariable("citemid")int citemid,HttpSession session,Model m)
	{
		
		Cart cart=cartDAO.getCartItem(citemid);
		cartDAO.deleteCartItem(cart);
	
		String username=(String)session.getAttribute("username");
		

		List<Cart> list=cartDAO.getCartItems(username);
		m.addAttribute("cartitems",list);
		
		return "Cart";
	}
}