package com.sateesh.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sateesh.entity.Account;
import com.sateesh.service.IAccountService;
import com.sateesh.service.ICustomerService;

@Controller
@RequestMapping("/accounts")
public class AccountController {

	@Autowired
	private IAccountService accountServices;
	
	@Autowired
	private ICustomerService customerService;
	
	@GetMapping("/add")
	public String addForm(Model model) {
		model.addAttribute("account", new Account());
		model.addAttribute("customers",customerService.listAll());
		return "add_account";
	}
	
	@PostMapping("/save")
	public String save(@ModelAttribute Account account,@RequestParam Long customerId,Map<String,Object> map) {
		account.setCustomer(customerService.findById(customerId));
		Long id = accountServices.createAccount(account).getId();
		String msg="Congratulations.."+account.getCustomer().getName()+" Your Account is Created With Account Number :"+id;
		map.put("congrats", msg);
		return "create_accounts";
	}
	
	@GetMapping("/show")
	public String getAllAvailableAccounts(Model model) {
		List<Account> listAll = accountServices.listAll();
		model.addAttribute("listOfAllAccounts", listAll);
		return "show_all_accounts";
	}	
	
}
