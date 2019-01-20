package model.messageboard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.member.MemberBean;
import model.pet.PetBean;



@Service
public class messageboardservice {
	@Autowired
	private  messageboardDAO dao;
	
	public List<MessageboardBean> selectByPermission(String Permission){
		List<MessageboardBean> result = dao.findbypermission(Permission);
		System.out.println(result);
		return result;
	}
	
	public boolean insert(MessageboardBean bean) {
	return dao.insert(bean);
	}
	
	public boolean delete(MessageboardBean bean) {
		return dao.delete(bean);
	}
}
