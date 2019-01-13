package model.dao.VerificationCode;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.member.MemberBean;
import model.verificationCode.VerificationCodeBean;
import model.verificationCode.VerificationCodeDAO;

@Repository
public class VerificationCode implements VerificationCodeDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

	@Override
	public Integer findMemberID(String code) {
		Query<VerificationCodeBean> query = this.getSession().createQuery("From VerificationCodeBean where randomverificationcode='"+code+"'");
		VerificationCodeBean temp = query.uniqueResult();
		return temp.getMemberId();
		
	}

	@Override
	public String findcode(int memberId) {
		Query<VerificationCodeBean> query = this.getSession().createQuery("From VerificationCodeBean where memberId='"+memberId+"'");
		VerificationCodeBean temp = query.uniqueResult();
		if(temp!=null) {
		return temp.getRandomverificationcode();
	}
	 return null;	
	}
	@Override
	public boolean insert(VerificationCodeBean codeBean) {
		if(this.findcode(codeBean.getMemberId())!=null) {
			this.delete(codeBean);
			this.getSession().save(codeBean);
			return true;
		}
		this.getSession().save(codeBean);
		return true;
	}

	
	@Override
	public boolean delete(VerificationCodeBean codeBean) {
		// TODO Auto-generated method stub
		VerificationCodeBean temp =this.findCodeBean(codeBean.getMemberId());
		if(temp!=null) {
		this.getSession().delete(temp);
		return true;
		}
		return false;
	}

	@Override
	public VerificationCodeBean findCodeBean(int memberId) {
	
		return this.getSession().get(VerificationCodeBean.class, memberId);
	}




}
