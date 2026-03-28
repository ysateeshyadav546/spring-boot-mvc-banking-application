package com.sateesh.controller;

import java.math.BigDecimal;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sateesh.entity.TransactionRecord;
import com.sateesh.service.IAccountService;
import com.sateesh.service.ITransactionRecord;
import com.sateesh.vo.TransferMoneyVO;

@Controller
public class TransactionController {

	@Autowired
	private ITransactionRecord transactionRecord;
	@Autowired
	private IAccountService acountService;
	
	@GetMapping("/deposit")
	public String depositAmountform() {		
		return "deposit";
	}
	
	
	@PostMapping("/deposit")
	public String depositAmount(@RequestParam Long id,@RequestParam BigDecimal amount,@RequestParam(required = false)String remarks, Map<String,Object> map) {
		TransactionRecord deposit = transactionRecord.deposit(id, amount, remarks);
		map.put("status", "Account Number :"+deposit.getAccount().getId()+" :: "+amount+" Rupess Deposited successfully...");
		map.put("AccountDetails",deposit);
		return "deposit_success";
	} 
	
	
	
	 @GetMapping("/withdraw")
	public String withdrawAmountform() {		
		return "withdraw";
	}
	 
	 @PostMapping("/withdraw")
		public String withdrawAmount(@RequestParam Long id,@RequestParam BigDecimal amount,@RequestParam(required = false)String remarks, Map<String,Object> map) {
			TransactionRecord withdraw = transactionRecord.withdraw(id, amount, remarks);
			map.put("status", "Account Number :"+withdraw.getAccount().getId()+" :: "+amount+" Rupess withdraw successfully...");
			map.put("AccountDetails",withdraw);
			return "withdraw_success";
		} 
	 
	
	 @GetMapping("/transfer")
	 public String showTransferPage(Model model) {
	     model.addAttribute("accounts", acountService.listAll());
	     return "transfer";
	 }
	
	 @PostMapping("/transfer")
	 public String transfer(
	          @ModelAttribute("transferMoney") TransferMoneyVO transferMoney,
	         Map<String, Object> map,RedirectAttributes redirects) {

	     TransactionRecord transfer = transactionRecord.transfer(
	             transferMoney.getFromAccountNumber(),
	             transferMoney.getToAccountNumber(),
	             transferMoney.getAmount(),
	             transferMoney.getRemarks()
	     );

	     redirects.addFlashAttribute("success", transfer.getAmount() + " Rupess transferred from Account "
	             + transferMoney.getFromAccountNumber() + " to Account "
	             + transferMoney.getToAccountNumber());
	     
	     /*
	     put("success", transfer.getAmount() + " Rupess transferred from Account "
	             + transferMoney.getFromAccountNumber() + " to Account "
	             + transferMoney.getToAccountNumber());  */

	     return "redirect:/transfer"; // JSP page
	 }
	 
	 @GetMapping("/transactions")
	 public String showTransactionForm(Model model) {
	     model.addAttribute("transactions", new TransactionRecord());
	     return "show_transaction_form"; // your JSP name
	 }

	
	@PostMapping("/history")
	public String history(@RequestParam Long id,Model model) {
		model.addAttribute("transactions",transactionRecord.history(id));
		return "transactions";
	}
		
}
