package model.fosterCommission;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FosterCommissionService {
	@Autowired
	private FosterCommissionDao fosterCommissionDao;

	public FosterCommissionBean searchFosterCommissionId(Integer fosterCommissionId) {
		FosterCommissionBean bean = fosterCommissionDao.findByFosterCommissionId(fosterCommissionId);
		if (bean != null) {
			return bean;
		}
		return null;
	}

	public FosterCommissionBean updateFosterCommission(FosterCommissionBean fosterCommissionBean) {
		FosterCommissionBean bean = fosterCommissionDao.update(fosterCommissionBean);
		if (bean != null) {
			return bean;
		}
		return null;
	}

	public FosterCommissionBean insertFosterCommission(FosterCommissionBean fosterCommissionBean) {
		FosterCommissionBean bean = fosterCommissionDao.insert(fosterCommissionBean);
		if (bean != null) {
			return bean;
		}
		return null;
	}

	public boolean deleteFosterCommission(FosterCommissionBean fosterCommissionBean) {
		if (fosterCommissionBean.getFosterCommissionId() != null) {
			return fosterCommissionDao.delete(fosterCommissionBean);
		}
		return false;
	}
}
