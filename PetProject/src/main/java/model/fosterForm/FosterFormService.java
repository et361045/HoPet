package model.fosterForm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.fosterCommission.FosterCommissionDao;

@Service
public class FosterFormService {
	@Autowired
	private FosterFormDao fosterFormDao;
	@Autowired
	private FosterCommissionDao fosterCommissionDao;

	public FosterFormBean searchFosterFormId(Integer fosterFormId) {
		FosterFormBean bean = fosterFormDao.findByFosterFormId(fosterFormId);
		return bean;
	}

	public FosterFormBean updateFosterForm(FosterFormBean fosterFormBean) {
		FosterFormBean bean = fosterFormDao.update(fosterFormBean);

		return bean;
	}

	public FosterFormBean insertFosterForm(FosterFormBean fosterFormBean,Integer petId) {
		fosterFormBean.setFosterId(fosterCommissionDao.findByPetId(petId).getFosterCommissionId());
		return fosterFormDao.insert(fosterFormBean);
	}

	public boolean deleteFosterForm(FosterFormBean fosterFormBean) {
		if (fosterFormBean.getFosterFormId() != null) {
			return fosterFormDao.delete(fosterFormBean);
		}
		return false;
	}
}
