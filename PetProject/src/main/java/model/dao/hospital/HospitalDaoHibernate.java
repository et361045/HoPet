package model.dao.hospital;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.hospital.HospitalBean;
import model.hospital.HospitalDao;
@Repository
public class HospitalDaoHibernate implements HospitalDao{
	@Autowired
	private SessionFactory sessionFactory;
	
	public HospitalDaoHibernate(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	public Session getSession() {
		return this.sessionFactory.getCurrentSession();
	} 

	@Override
	public HospitalBean findByPrimaryKey(Integer hospitalId) {
		//利用id作為primary key取得product table資料
		//id存在=>傳回裝滿資料的ProductBean物件
		//id不存在=>傳回null
		return this.getSession().get(HospitalBean.class, hospitalId);
	}
	@Override
	public List<HospitalBean> findAll() {
		//取得product table的所有資料
	
		List<HospitalBean> result = this.getSession().createQuery("from HospitalBean", HospitalBean.class).list();
		return result;
	}
	@Override
	public HospitalBean create(HospitalBean bean) {
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
	public HospitalBean update(String hospitalName,
			String hospitalAddress, String hospitalphone,String hospitalowner,String hospitalgooglemap,Double longitude,Double latitude,Integer hospitalId) {
		//利用id作為primary key修改product table資料
		//id存在=>修改成功、傳回裝滿資料的ProductBean物件
		//id不存在=>修改失敗、傳回null
		
		HospitalBean temp = this.getSession().get(HospitalBean.class, hospitalId);
		if(temp!=null) {	
			temp.setHospitalName(hospitalName);
			temp.setHospitalAddress(hospitalAddress);
			temp.setHospitalphone(hospitalphone);
			temp.setHospitalowner(hospitalowner);
			temp.setHospitalgooglemap(hospitalgooglemap);
			temp.setLongitude(longitude);
			temp.setLatitude(latitude);
			temp.setHospitalId(hospitalId);
			return temp;
		}
		
		return null;
	}
	@Override
	public boolean remove(Integer hospitalId) {
		//利用id作為primary key刪除product table資料
		//id存在=>刪除product table資料並傳回true
		//id不存在=>傳回false
		
		HospitalBean temp = this.getSession().get(HospitalBean.class, hospitalId);
	   if(temp!=null) {
		  this.getSession().delete(temp);
		  return true;
	   }
		return false;
	}

}
