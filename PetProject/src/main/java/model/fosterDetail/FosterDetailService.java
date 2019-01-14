package model.fosterDetail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FosterDetailService {
	@Autowired
	private FosterDetailDao fosterDetailDao;
	
	public FosterDetailBean searchFosterId(Integer fosterId) {
		FosterDetailBean bean = fosterDetailDao.findByFosterId(fosterId);
		if(bean != null) {
			return bean;
		}		
		return null;
	}
	public FosterDetailBean searchCarer(Integer carer) {
		FosterDetailBean bean = fosterDetailDao.findByFosterId(carer);
		if(bean != null) {
			return bean;
		}		
		return null;
	}
	public FosterDetailBean updateFoster(FosterDetailBean fosterBean) {
		FosterDetailBean bean = fosterDetailDao.update(fosterBean);
		if(bean != null) {
			return bean;
		}		
		return null;
	}
	public FosterDetailBean insertFoster(FosterDetailBean fosterBean) {
		FosterDetailBean bean = fosterDetailDao.insert(fosterBean);
		if(bean != null) {
			return bean;
		}		
		return null;
	}
	public boolean deleteFoster(FosterDetailBean fosterBean) {
		if(fosterBean.getFosterDetailId() != null) {
			return fosterDetailDao.delete(fosterBean);
		}
		return false;
	}

}
