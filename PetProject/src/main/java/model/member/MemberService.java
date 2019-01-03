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
		if (bean != null) {
			if (psw != null && psw.length() != 0) {
				if (psw == bean.getPsw()) {
					return bean;

				}

			}
		}
		return null;
	}

	public boolean Signon(MemberBean bean) {
		boolean result = false;
		MemberBean temp = memberDao.findMemberBean(bean.getEmail());
		if (temp != null) {
			result = memberDao.insert(temp);
			return result;
		}
		return result;
	}
}