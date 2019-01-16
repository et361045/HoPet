package model.pet;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import model.member.MemberBean;
import model.member.MemberDAO;

@Service
public class PetService {
	@Autowired
	private PetDAO petDAO;

	public List<PetBean> selectByMemberID(Integer id) {
		List<PetBean> result = petDAO.findpetBymember(id);
		System.out.println(result);
		return result;
	}

	public boolean insert(PetBean bean) {
		if (bean.getPetId() == null) {
				
			   petDAO.insert(bean);
				return true;
		}
		return false;
	}
	
	public boolean delete(Integer id) {
		PetBean petbean =  petDAO.findpetBean(id);
		if(petbean!=null) {
			petDAO.delete(petbean);
			return true;
		}
		return false;
	}
	
}
