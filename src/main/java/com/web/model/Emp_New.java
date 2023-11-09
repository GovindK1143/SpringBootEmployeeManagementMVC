package com.web.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="EMP_NEW")
public class Emp_New {
	@Id
	private Integer id;
	private String name;
	private String gender;
	private String mobile;
	private String email;
	private String pwd;
	private String city;
	private double salary;
	private String company;
	private String desg;
	/**
	 * 
	 */
	public Emp_New() {
		super();
	}
	/**
	 * @param id
	 * @param name
	 * @param gender
	 * @param mobile
	 * @param email
	 * @param pwd
	 * @param city
	 * @param salary
	 * @param company
	 * @param desg
	 */
	public Emp_New(Integer id, String name, String gender, String mobile, String email, String pwd, String city,
			double salary, String company, String desg) {
		super();
		this.id = id;
		this.name = name;
		this.gender = gender;
		this.mobile = mobile;
		this.email = email;
		this.pwd = pwd;
		this.city = city;
		this.salary = salary;
		this.company = company;
		this.desg = desg;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getDesg() {
		return desg;
	}
	public void setDesg(String desg) {
		this.desg = desg;
	}
	@Override
	public String toString() {
		return "Emp_New [id=" + id + ", name=" + name + ", gender=" + gender + ", mobile=" + mobile + ", email=" + email
				+ ", pwd=" + pwd + ", city=" + city + ", salary=" + salary + ", company=" + company + ", desg=" + desg
				+ "]";
	}
	
	

}
