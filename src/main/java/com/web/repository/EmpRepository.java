package com.web.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.support.JpaRepositoryImplementation;
import org.springframework.stereotype.Repository;

import com.web.model.Emp_New;
@Repository
public interface EmpRepository extends JpaRepositoryImplementation<Emp_New,Integer> {
	//@Query("SELECT u FROM User u WHERE u.status = ?1 and u.name = ?2")

	@Query(value="select count(*) from EMP_NEW e where e.email=?1 and e.pwd=?2",nativeQuery = true)
	public int loginAuthentication(String email,String password);
}
