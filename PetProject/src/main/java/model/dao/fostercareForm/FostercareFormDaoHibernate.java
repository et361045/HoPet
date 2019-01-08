package model.dao.fostercareForm;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.fostercareCommission.FostercareCommissionBean;
import model.fostercareForm.FostercareFormBean;
import model.fostercareForm.FostercareFormDao;
@Repository
public class FostercareFormDaoHibernate implements FostercareFormDao{
	@Autowired
	private SessionFactory sessionFactory;
	
	public FostercareFormDaoHibernate(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	} 
	@Override
	public FostercareFormBean findByPrimaryKey(Integer FostercareFormid) {
		//利用id作為primary key取得product table資料
		//id存在=>傳回裝滿資料的ProductBean物件
		//id不存在=>傳回null
		return this.getSession().get(FostercareFormBean.class, FostercareFormid);
	}
	@Override
	public List<FostercareFormBean> findAll() {
		//取得product table的所有資料
	
		List<FostercareFormBean> result = this.getSession().createQuery("from FostercareFormBean", FostercareFormBean.class).list();
		return result;
	}
	@Override
	public FostercareFormBean create(FostercareFormBean bean) {
		//將ProductBean物件的資料存入product table
		//id已存在=>新增失敗、傳回null
		//id不存在=>新增成功、傳回裝滿資料的ProductBean物件
		
		if(bean!=null) {
			FostercareFormBean temp = this.getSession().get(FostercareFormBean.class, bean.getFostercareCommissionid());
			if(temp==null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}
	@Override
	public FostercareFormBean update(Integer carer,String status,
			Integer fostercareCommissionid) 
	{
		//利用id作為primary key修改product table資料
		//id存在=>修改成功、傳回裝滿資料的ProductBean物件
		//id不存在=>修改失敗、傳回null
		
		FostercareFormBean temp = this.getSession().get(FostercareFormBean.class, fostercareCommissionid);
		if(temp!=null) {	
			temp.setCarer(carer);
			temp.setStatus(status);
			temp.setFostercareCommissionid(fostercareCommissionid);
			return temp;
		}
		
		return null;
	}
	@Override
	public boolean remove(Integer FostercareFormid) {
		//利用id作為primary key刪除product table資料
		//id存在=>刪除product table資料並傳回true
		//id不存在=>傳回false
		
		FostercareFormBean temp = this.getSession().get(FostercareFormBean.class, FostercareFormid);
	   if(temp!=null) {
		  this.getSession().delete(temp);
		  return true;
	   }
		return false;
	}
}
