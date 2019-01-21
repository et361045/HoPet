package model.dao.messageboard;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.member.MemberDAO;
import model.messageboard.MessageboardBean;
import model.messageboard.messageboardDAO;
import model.pet.PetBean;

@Repository
public class MessageboardDAOHibernate implements messageboardDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

	public MessageboardBean findbypk(int i) {
		return this.getSession().get(MessageboardBean.class, i);

	}
	
	@Override
	public List<MessageboardBean> findbypermission(String permission) {
		return this.getSession().createQuery("from MessageboardBean where permission = '" + permission + "' ORDER BY messagetime DESC", MessageboardBean.class)
				.setMaxResults(50).list();
	}

	@Override
	public List<MessageboardBean> findall() {
		// TODO Auto-generated method stub
		return this.getSession().createQuery("from MessageboardBean ORDER BY messagetime DESC;", MessageboardBean.class)
				.setMaxResults(50).list();
	}

	@Override
	public boolean insert(MessageboardBean bean) {
	      if(bean.getMemberid()!=null) {
			this.getSession().save(bean);
			return true;
	      }
		return false;
	}

	@Override
	public boolean update(MessageboardBean bean) {
		
		MessageboardBean result = this.getSession().get(MessageboardBean.class, bean.getMessageboardid());
			if (result != null) {
			   result.setMessage(bean.getMessage());
			   result.setMessagetime(bean.getMessagetime());
			   result.setPermission(bean.getPermission());
			   result.setTitle(bean.getTitle());
				return true;
			}
		
		return false;
	}

	@Override
	public boolean delete(MessageboardBean bean) {
		if (bean.getMessageboardid()!=null) {
			this.getSession().delete(bean);
			return true;
		}

		return false;
	}

}
