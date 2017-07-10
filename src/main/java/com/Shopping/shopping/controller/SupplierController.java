package com.Shopping.shopping.controller;

import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import com.Shopping.shoppingBackend.dao.SupplierDAO;
import com.Shopping.shoppingBackend.model.Supplier;




@Controller
public class SupplierController 
{


	@Autowired
	SupplierDAO supplierDAO;
	
	@RequestMapping("/Supplier")
	public String showSupplierPage(Model m)
	{
		System.out.println("---Supplier Page Displaying-----");
		List<Supplier> list=supplierDAO.getSupplierDetails();
		m.addAttribute("suppdetail",list);
		
		boolean flag=false;
		m.addAttribute("flag",flag);
		
		return "Supplier";
	}
	
	/*@RequestMapping(value="/AddSupplier",method=RequestMethod.POST)
	public String addSupplier(@RequestParam("suppid") int suppid,@RequestParam("suppname") String suppname,@RequestParam("address") String address,Model m)
	{
		System.out.println("---Add Supplier Starting-----");
		
		System.out.println(suppname+":::"+address);
		
		Supplier supplier=new Supplier();
		supplier.setSuppname(suppname);
		supplier.setAddress(address);
		
		supplierDAO.insertUpdateSupplier(supplier);
		
		List<Supplier> list=supplierDAO.getSupplierDetails();
		m.addAttribute("suppdetail",list);
		
		boolean flag=false;
		m.addAttribute("flag",flag);

		System.out.println("---Supplier Added----");
		return "Supplier";
	}
	*/
	@RequestMapping(value="/deleteSupplier/{Suppid}")
	public String deleteSupplier(@PathVariable("Suppid") int Suppid,Model m)
	{
		System.out.println("---Deleted Supplier -----");
		
		Supplier supplier=supplierDAO.getSupplier(Suppid);
		supplierDAO.deleteSupplier(supplier);
		
		
		List<Supplier> list=supplierDAO.getSupplierDetails();
		m.addAttribute("suppdetail",list);
		
		boolean flag=false;
		m.addAttribute("flag",flag);
		
		return "Supplier";
	}
	
	@RequestMapping(value="/updateSupplier/{Suppid}")
	public String updateSupplier(@PathVariable("Suppid") int Suppid,Model m)
	{
		System.out.println("---Getting Supplier object to be updated -----");
		
		Supplier supplier=supplierDAO.getSupplier(Suppid);
		m.addAttribute("supplier",supplier);
		
		
		List<Supplier> list=supplierDAO.getSupplierDetails();
		m.addAttribute("suppdetail",list);
		
		boolean flag=true;
		m.addAttribute("flag",flag);
		
		return "Supplier";
	}
	
	@RequestMapping(value="/UpdateSupplier",method=RequestMethod.POST)
	public String addSupplier(@RequestParam("Suppid") int Suppid,@RequestParam("Suppname") String Suppname,@RequestParam("address") String Address,Model m)
	{
		try
		{
			Supplier supplier=new Supplier();
			supplier.setSuppid(Suppid);
			supplier.setSuppname(Suppname);
			supplier.setAddress(Address);
			
			supplierDAO.insertUpdateSupplier(supplier);
			
			List<Supplier> list=supplierDAO.getSupplierDetails();
			m.addAttribute("suppdetail",list);
			
			boolean flag=false;
			m.addAttribute("flag",flag);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "Supplier";
	}
	

	
}