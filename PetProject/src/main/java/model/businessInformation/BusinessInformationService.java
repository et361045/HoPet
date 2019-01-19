package model.businessInformation;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
@Transactional
public class BusinessInformationService {
	@Autowired
	private BusinessInformationDao businessInformationDao;
	public BusinessInformationService(BusinessInformationDao businessInformationDao) {
		this.businessInformationDao = businessInformationDao;
	}
	
	public BusinessInformationBean findone(Integer businessId)
	{
		BusinessInformationBean temp = businessInformationDao.findByPrimaryKey(businessId);
		return temp;
	}
	
	
	
	public List<BusinessInformationBean> select(BusinessInformationBean bean) {
		List<BusinessInformationBean> result = null;
		if(bean!=null && bean.getBusinessId()!=null) {
			BusinessInformationBean temp = businessInformationDao.findByPrimaryKey(bean.getBusinessId());
			if(temp!=null) {
				result = new ArrayList<BusinessInformationBean>();
				result.add(temp);
			}
		} else {
			result = businessInformationDao.findAll(); 
		}
		return result;
	}
	
	public List<BusinessInformationBean> selectarea(String  area) {
		List<BusinessInformationBean> result;
		List<BusinessInformationBean> temp =new ArrayList<BusinessInformationBean>();
		result = businessInformationDao.findAll();
		for(int i=0;i<result.size();i++)
		{ 
		
			
			if(result.get(i).getBusinessAddress().indexOf(area)>-1)
			{
				
				temp.add(result.get(i));
			}
	
	
		}
		System.out.println(temp);
		return temp;
	}
	
	
	
	
	public BusinessInformationBean insert(BusinessInformationBean bean) {
		BusinessInformationBean result = null;
		if(bean!=null) {
			result = businessInformationDao.create(bean);
		}
		return result;
	}
	public BusinessInformationBean update(BusinessInformationBean bean) {
		BusinessInformationBean result = null;
		if(bean!=null) {
			result = businessInformationDao.update(bean.getCompanyname(), bean.getBusinessAddress(),
					bean.getBusinessPhone(),bean.getIdname(),bean.getBusinessGooglemap(),bean.getLongitude(),bean.getLatitude(),bean.getBusinessId());
		}
		return result;
	}
	public boolean delete(BusinessInformationBean bean) {
		boolean result = false;
		if(bean!=null) {
			result = businessInformationDao.remove(bean.getBusinessId());
		}
		return result;
	}
	
}
