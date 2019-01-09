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
					bean.getBusinessPhone(),bean.getIdname(),bean.getBusinessGooglemap(),bean.getlatitude(),bean.getBusinessId());
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
