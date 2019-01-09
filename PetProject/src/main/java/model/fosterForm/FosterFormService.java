package model.fosterForm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FosterFormService {
	@Autowired
	private FosterFormDao fosterFormDao;

	public FosterFormBean searchFosterFormId(Integer fosterFormId) {
		FosterFormBean bean = fosterFormDao.findByFosterFormId(fosterFormId);
		if (bean != null) {
			return bean;
		}
		return null;
	}

	public FosterFormBean updateFosterForm(FosterFormBean fosterFormBean) {
		FosterFormBean bean = fosterFormDao.update(fosterFormBean);
		if (bean != null) {
			return bean;
		}
		return null;
	}

	public FosterFormBean insertFosterForm(FosterFormBean fosterFormBean) {
		FosterFormBean bean = fosterFormDao.insert(fosterFormBean);
		if (bean != null) {
			return bean;
		}
		return null;
	}

	public boolean deleteFosterForm(FosterFormBean fosterFormBean) {
		if (fosterFormBean.getFosterFormId() != null) {
			return fosterFormDao.delete(fosterFormBean);
		}
		return false;
	}
}
