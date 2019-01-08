package model.dao.businessInformation;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.businessInformation.BusinessInformationBean;
import model.businessInformation.BusinessInformationDao;

@Repository
public class BusinessInformationDaoHibernate implements BusinessInformationDao{
	@Autowired
	private SessionFactory sessionFactory;
	
	public BusinessInformationDaoHibernate(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	} 

	@Override
	public BusinessInformationBean findByPrimaryKey(Integer businessId) {
		//利用id作為primary key取得product table資料
		//id存在=>傳回裝滿資料的ProductBean物件
		//id不存在=>傳回null
		return this.getSession().get(BusinessInformationBean.class, businessId);
	}
	@Override
	public List<BusinessInformationBean> findAll() {
		//取得product table的所有資料
	
		List<BusinessInformationBean> result = this.getSession().createQuery("from BusinessInformationBean", BusinessInformationBean.class).list();
		System.out.println(result);
		return result;
	}
	@Override
	public BusinessInformationBean create(BusinessInformationBean bean) {
		//將ProductBean物件的資料存入product table
		//id已存在=>新增失敗、傳回null
		//id不存在=>新增成功、傳回裝滿資料的ProductBean物件
		
		if(bean!=null) {
//			HospitalBean temp = this.getSession().get(HospitalBean.class, bean.getHospitalId());
//			if(temp==null) {
				this.getSession().save(bean);
				return bean;
//			}
		}
		return null;
	}
	@Override
	public BusinessInformationBean update(String companyname,
			String businessAddress, String businessPhone,String idname,String businessGooglemap,String Latitude,Integer businessId) {
		//利用id作為primary key修改product table資料
		//id存在=>修改成功、傳回裝滿資料的ProductBean物件
		//id不存在=>修改失敗、傳回null
		
		BusinessInformationBean temp = this.getSession().get(BusinessInformationBean.class, businessId);
		if(temp!=null) {	
			temp.setCompanyname(companyname);
			temp.setBusinessAddress(businessAddress);
			temp.setBusinessPhone(businessPhone);
			temp.setIdname(idname);
			temp.setBusinessGooglemap(businessGooglemap);
			temp.setLatitude(Latitude);
			temp.setBusinessId(businessId);
			return temp;
		}
		
		return null;
	}
	@Override
	public boolean remove(Integer businessId) {
		//利用id作為primary key刪除product table資料
		//id存在=>刪除product table資料並傳回true
		//id不存在=>傳回false
		
		BusinessInformationBean temp = this.getSession().get(BusinessInformationBean.class, businessId);
	   if(temp!=null) {
		  this.getSession().delete(temp);
		  return true;
	   }
		return false;
	}

}
