package model.returnmessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.dao.member.MemberDAOHibernate;

@Service
public class returnmessageService {
	@Autowired
	private ReturnMessageDAO Dao;

 public void insert(ReturnMessageBean bean) {
	
	 Dao.insert(bean);
	 
 }
 
 
 public void delete(int t) {
	 Dao.delete(t);
	 
 }
 
 
 
}