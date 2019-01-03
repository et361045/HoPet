package fostercaremodel.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fostercaremodel.fostercareBean;
import fostercaremodel.fostercareDAO;
import hospitalmodel.hospitalBean;
import hospitalmodel.hospitalDAO;
@Repository
public class fostercareDAOHibernate implements fostercareDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	public fostercareDAOHibernate(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	} 

	@Override
	public fostercareBean findByPrimaryKey(int FostercareCommissionid) {
		//利用id作為primary key取得product table資料
		//id存在=>傳回裝滿資料的ProductBean物件
		//id不存在=>傳回null
		return this.getSession().get(fostercareBean.class, FostercareCommissionid);
	}
	@Override
	public List<fostercareBean> findAll() {
		//取得product table的所有資料
	
		List<fostercareBean> result = this.getSession().createQuery("from fostercareBean", fostercareBean.class).list();
		return result;
	}
	@Override
	public fostercareBean create(fostercareBean bean) {
		//將ProductBean物件的資料存入product table
		//id已存在=>新增失敗、傳回null
		//id不存在=>新增成功、傳回裝滿資料的ProductBean物件
		
		if(bean!=null) {
			fostercareBean temp = this.getSession().get(fostercareBean.class, bean.getFostercareCommissionid());
			if(temp==null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}
	@Override
	public fostercareBean update(Integer owner, String txt,
			Integer petid, String region, Integer dday,String size,String Variety,Integer FostercareCommissionid) {
		//利用id作為primary key修改product table資料
		//id存在=>修改成功、傳回裝滿資料的ProductBean物件
		//id不存在=>修改失敗、傳回null
		
		fostercareBean temp = this.getSession().get(fostercareBean.class, FostercareCommissionid);
		if(temp!=null) {
			temp.setOwner(owner);
			temp.setTxt(txt);
			temp.setPetid(petid);
			temp.setRegion(region);
			temp.setDday(dday);
			temp.setSize(size);
			temp.setVariety(Variety);
			temp.setFostercareCommissionid(FostercareCommissionid);
			return temp;
		}
		
		return null;
	}
	@Override
	public boolean remove(int FostercareCommissionid) {
		//利用id作為primary key刪除product table資料
		//id存在=>刪除product table資料並傳回true
		//id不存在=>傳回false
		
		fostercareBean temp = this.getSession().get(fostercareBean.class, FostercareCommissionid);
	   if(temp!=null) {
		  this.getSession().delete(temp);
		  return true;
	   }
		return false;
	}

}
