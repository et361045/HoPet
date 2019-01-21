package model.dao.fostercareCommission;

import java.sql.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.fosterCommission.FosterCommissionBean;
import model.fostercareCommission.FostercareCommissionBean;
import model.fostercareCommission.FostercareCommissionDao;
import model.pet.PetBean;

@Repository
public class FostercareCommissionDaoHibernate implements FostercareCommissionDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public FostercareCommissionDaoHibernate(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	} 
	
	@Override
	public  FostercareCommissionBean findByPetId(Integer petid) {		
		Query<FostercareCommissionBean> query = this.getSession().createQuery("from FostercareCommissionBean where petid='"+petid+"'");
		FostercareCommissionBean CommissionBean = query.uniqueResult();
		return CommissionBean;
	}
	
	@Override
	public List<FostercareCommissionBean> findByAreaAndVarietyFostercareCommission(String area,String variety) {
		return this.getSession().createQuery("from FostercareCommissionBean where area='"+area+"' and variety='"+variety+"'").list();
	}
	
//	@Override
//	public List<FostercareCommissionBean> findByPetId(Integer petid) {
//		return this.getSession().createQuery("from FostercareCommissionBean where petid = '" + petid + "'", FostercareCommissionBean.class)
//				.setMaxResults(50).list();
//	}
	

	@Override
	public FostercareCommissionBean findByPrimaryKey(Integer fostercareCommissionid) {
		//利用id作為primary key取得product table資料
		//id存在=>傳回裝滿資料的ProductBean物件
		//id不存在=>傳回null
		return this.getSession().get(FostercareCommissionBean.class, fostercareCommissionid);
	}
	@Override
	public List<FostercareCommissionBean> findAll() {
		//取得product table的所有資料
	
		List<FostercareCommissionBean> result = this.getSession().createQuery("from FostercareCommissionBean", FostercareCommissionBean.class).list();
		return result;
	}
	@Override
	public FostercareCommissionBean create(FostercareCommissionBean bean) {
		//將ProductBean物件的資料存入product table
		//id已存在=>新增失敗、傳回null
		//id不存在=>新增成功、傳回裝滿資料的ProductBean物件
		
		if(bean!=null) {
//			FostercareCommissionBean temp = this.getSession().get(FostercareCommissionBean.class, bean.getPetid());
//			if(temp==null) {
				this.getSession().save(bean);
				return bean;
			}
//		}
		return null;
	}
	@Override
	public FostercareCommissionBean update(String name,
			String variety, String area,Date starttime,Date endtime,Integer owner,String reason,String picture,String remark,Integer fostercareCommissionid) {
		//利用id作為primary key修改product table資料
		//id存在=>修改成功、傳回裝滿資料的ProductBean物件
		//id不存在=>修改失敗、傳回null
		
		FostercareCommissionBean temp = this.getSession().get(FostercareCommissionBean.class, fostercareCommissionid);
		if(temp!=null) {	
			temp.setName(name);
			temp.setVariety(variety);
			temp.setArea(area);
			temp.setStarttime(starttime);
			temp.setEndtime(endtime);
			temp.setOwner(owner);
			temp.setPicture(picture);
			temp.setRemark(remark);
			temp.setFostercareCommissionid(fostercareCommissionid);
			return temp;
		}
		
		return null;
	}
	@Override
	public boolean remove(Integer fostercareCommissionid) {
		//利用id作為primary key刪除product table資料
		//id存在=>刪除product table資料並傳回true
		//id不存在=>傳回false
		
		FostercareCommissionBean temp = this.getSession().get(FostercareCommissionBean.class, fostercareCommissionid);
	   if(temp!=null) {
		  this.getSession().delete(temp);
		  return true;
	   }
		return false;
	}

}
