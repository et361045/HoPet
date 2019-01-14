package model.foster;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FosterService {
	@Autowired
	private FosterDao fosterDao;
	
	public FosterBean searchFosterId(Integer fosterId) {
		FosterBean bean = fosterDao.findByFosterId(fosterId);
		if(bean != null) {
			return bean;
		}		
		return null;
	}
	public FosterBean searchCarer(Integer carer) {
		FosterBean bean = fosterDao.findByFosterId(carer);
		if(bean != null) {
			return bean;
		}		
		return null;
	}
	public FosterBean updateFoster(FosterBean fosterBean) {
		FosterBean bean = fosterDao.update(fosterBean);
		if(bean != null) {
			return bean;
		}		
		return null;
	}
	public FosterBean insertFoster(FosterBean fosterBean) {
		FosterBean bean = fosterDao.insert(fosterBean);
		if(bean != null) {
			return bean;
		}		
		return null;
	}
	public boolean deleteFoster(FosterBean fosterBean) {
		if(fosterBean.getFosterId() != null) {
			return fosterDao.delete(fosterBean);
		}
		return false;
	}

}
