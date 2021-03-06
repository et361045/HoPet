package model.dao.member;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.member.MemberBean;
import model.member.MemberDAO;


@Repository
public class MemberDAOHibernate implements MemberDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

	@Override
	public Integer findMemberId(String email) {
		// TODO Auto-generated method stub
		Query<MemberBean> query = this.getSession().createQuery("From MemberBean where email='"+email+"'");
		MemberBean member = query.uniqueResult();
		return member.getMemberId();
	}

	@Override
	public MemberBean findMemberBean(int MemberId) {
		// TODO Auto-generated method stub
		return this.getSession().get(MemberBean.class,MemberId);
	}

	@Override
	public MemberBean findMemberBean(String email) {
		Query<MemberBean> query = this.getSession().createQuery("From MemberBean where email='"+email+"'");
		MemberBean member = query.uniqueResult();
		return member;
		
	}

	@Override
	public boolean update(MemberBean member) {
		if(member.getMemberId()!=null) {
			MemberBean result = this.getSession().get(MemberBean.class, member.getMemberId());
			result.setAddress(member.getAddress());
			result.setPsw(member.getPsw());
			result.setMemberName(member.getMemberName());
			result.setMemberPhone(member.getMemberPhone());
			result.setMemberPicture(member.getMemberPicture());
			result.setMemberPermission(member.getMemberPermission());
			result.setCheckSuccess(member.getCheckSuccess());
	        return true;
		}
			
		return false;
	}

	@Override
	public boolean insert(MemberBean member) {
		if(this.findMemberBean(member.getEmail())==null) {
			this.getSession().save(member);
			return true;
		}
		return false;
	}

	@Override
	public boolean delete(MemberBean member) {
		if(this.findMemberBean(member.getMemberId())!=null)
		{
			this.getSession().delete(member);
			return true;
		}
		return false;
	}

	

	


	
}
