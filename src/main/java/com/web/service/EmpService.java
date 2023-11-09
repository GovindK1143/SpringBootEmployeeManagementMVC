package com.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.model.Emp_New;
import com.web.repository.EmpRepository;



@Service
public class EmpService {
	@Autowired
	private EmpRepository repo;
	public void addEmp(Emp_New emp) {
		repo.save(emp);
		
	}
	public List<Emp_New> getAllEmp(){
		return repo.findAll();
		
	}
	public void delete(int id) {
		repo.deleteById(id);
	}
	public List<Emp_New> getEmp(int id){
		return (List<Emp_New>) repo.findById(id).get();
	}
	public Emp_New getEmployee(int id) {
		return repo.findById(id).get();
	}
	
	
	
	

}
