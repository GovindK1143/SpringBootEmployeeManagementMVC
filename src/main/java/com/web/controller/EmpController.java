package com.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.Emp_New;
import com.web.repository.EmpRepository;
import com.web.service.EmpService;

@Controller
public class EmpController {
	@Autowired
	private EmpService service;

	@Autowired
	private EmpRepository empRepo;

	@RequestMapping("/")
	public String home() {
		return "home";
	}

	@RequestMapping("/registerform")
	public String empForm() {

		return "register";

	}

	@RequestMapping("/register")
	public String empRegister(@ModelAttribute Emp_New emp, HttpSession session) {

		service.addEmp(emp);
		session.setAttribute("msg", "Employee Added Successfully...");
		return "login";

	}

	@RequestMapping("/viewemp")
	public String viewAll(Model model) {
		model.addAttribute("emplist", service.getAllEmp());

		return "viewall";
	}

	@RequestMapping("/deleteemp/{id}")
	public String deleteEmp(@PathVariable int id) {
		service.delete(id);
		return "home";
	}

	@RequestMapping("editemp/{id}")
	public String update(@PathVariable int id, Model m) {

		return "";

	}

	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	@RequestMapping("/loginValidation")
	public String loginValid(@RequestParam String email, @RequestParam String pwd, Model m) {
		//Emp_New e1=new Emp_New();
		int loginAutprintlnhentication = empRepo.loginAuthentication(email, pwd);
		System.out.println(loginAutprintlnhentication);
		// }
		if(loginAutprintlnhentication==1) {
			m.addAttribute("emplist", service.getAllEmp());
			//Emp_New e1=empRepo.getemp1(email, pwd);
			//System.out.println(e1.getId());
			return "viewall";
		}
		else {
		return "login";
		}

	}
	

}
