package model.dao.ReturnMessage;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.messageboard.MessageboardBean;
import model.messageboard.messageboardDAO;
import model.returnmessage.ReturnMessageBean;
import model.returnmessage.ReturnMessageDAO;

@Repository
public class ReturnMessageHibernate implements ReturnMessageDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public List<ReturnMessageBean> findbymessageboardid(Integer id) {
		// TODO Auto-generated method stub
		return this.getSession().createQuery("from ReturnMessageBean where messageboardid = '" + id + "'" , ReturnMessageBean.class)
				.setMaxResults(50).list();
	}

	@Override
	public boolean insert(ReturnMessageBean bean) {
		 if(bean.getMessageboardid()!=null) {
				this.getSession().save(bean);
				return true;
		      }
			return false;
	}

	@Override
	public boolean update(ReturnMessageBean bean) {
		ReturnMessageBean result = this.select(bean.getMessageboardid());
		if (result != null) {
		   result.setMessage(bean.getMessage());
		   result.setMessagetime(bean.getMessagetime());
		   result.setPoint(bean.getPoint());
			return true;
		}
	
	return false;
	}

	@Override
	public boolean delete(ReturnMessageBean bean) {
		if( this.select(bean.getMemberid())!=null) {
			
			this.getSession().delete(bean);;
			return true;
		}
		return false;
	}

	@Override
	public ReturnMessageBean select(Integer id) {
		
		return this.getSession().get(ReturnMessageBean.class, id);
	}

	@Override
	public boolean delete(int Messageboardid) {
	  List<ReturnMessageBean> temp = this.findbymessageboardid(Messageboardid);
	  for(int i=0;i<temp.size();i++) {
		   this.getSession().delete(temp.get(i));
	  }
		return false;
	}
	
}
