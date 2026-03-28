package com.sateesh.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sateesh.entity.Customer;
import com.sateesh.service.ICustomerService;

@Controller
//@RequestMapping("/customers")
public class CustomerController {

	@Autowired
	private ICustomerService customerService;
	
	@GetMapping("/")
	public String homePage() {
		
		return "layout";
	}
	
	@GetMapping("/add")
	public String addCustomer(Model model) {
		model.addAttribute("cust", new Customer());
		return "register-customer";
	}
	@PostMapping("/register")
	public String registerNewAccountHolder(@ModelAttribute("cust") Customer customer,RedirectAttributes redirect) {
		customerService.addCustomer(customer);
		redirect.addFlashAttribute("cust", customer); 
		redirect.addFlashAttribute("customerId", customer.getId());
		return "redirect:/customer/details";
	}
	
	@GetMapping("/customer/details")
	public String showCustomerDetails() {
	    return "all_customer_details"; 
	}
	
	@GetMapping("/allCustomer")
	public String listOfCustomer(@ModelAttribute("cust") Customer customer,Map<String,Object> map) {
		
		return "show_all_customer";
	}
	
	@GetMapping("/customerDetails")
	public String list(RedirectAttributes reditectAtr) {
		reditectAtr.addFlashAttribute("cust", customerService.listAll());
		return "redirect:/allCustomer";   // customers.jsp
	}
	
	
	
	
	
}
