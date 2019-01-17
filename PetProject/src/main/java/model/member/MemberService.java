package model.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.dao.member.MemberDAOHibernate;

@Service
public class MemberService {
	@Autowired
	private MemberDAO memberDao;

	public MemberBean login(String email, String psw) {
		MemberBean bean = memberDao.findMemberBean(email);
		System.out.println("email,psw  = " +email+" "+psw );
		System.out.println("service bean = " + bean);
		if (bean != null) {
			if (psw != null && psw.length() != 0) {
				System.out.println("進入service 密碼驗證");
				System.out.println("密碼判斷  psw = "+psw+" bean.getPsw() = "+bean.getPsw());
				System.out.println("密碼判斷  psw.toString() = "+psw.toString()+" bean.getPsw().toString() = "+bean.getPsw().toString());
				System.out.println("service bean 1 = " + bean);
				if (psw.trim().equals( bean.getPsw().trim())) {
					System.out.println("進入service 密碼驗證1");
					System.out.println("service bean 2 = " + bean);
					return bean;
				}
			}
		}
		return null;
	}

	public boolean Signon(MemberBean bean) {
		boolean result = false;
		System.out.println("enter Signon bean = " + bean);
		bean.setMemberPermission("user");
		bean.setPoint("0");
		bean.setCheckSuccess("0");
		MemberBean temp = memberDao.findMemberBean(bean.getEmail());
		System.out.println("enter Signon temp = " + temp);
		if (temp == null) {
			result = memberDao.insert(bean);
			return result;
		}
		return result;
	}
	
	
	public  MemberBean selectemail(String email) {
	MemberBean temp = memberDao.findMemberBean(email);
	return temp;
		}
	
	public boolean update(MemberBean bean) {
	return	memberDao.update(bean);		
	}
	
	
	public MemberBean selectbymembreID(int id ) {
	  return memberDao.findMemberBean(id);
	}
	
}