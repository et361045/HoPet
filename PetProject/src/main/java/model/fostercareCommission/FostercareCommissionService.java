package model.fostercareCommission;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class FostercareCommissionService {
	@Autowired
	private FostercareCommissionDao fostercareDao;
	public FostercareCommissionService(FostercareCommissionDao fostercareDao) {
		this.fostercareDao = fostercareDao;
	}
	
	

	public List<FostercareCommissionBean> select(FostercareCommissionBean bean) {
		List<FostercareCommissionBean> result = null;
		if(bean!=null && bean.getPetid()!=null) {
			FostercareCommissionBean temp = fostercareDao.findByPrimaryKey(bean.getPetid());
			if(temp!=null) {
				result = new ArrayList<FostercareCommissionBean>();
				result.add(temp);
			}
		} else {
			result = fostercareDao.findAll(); 
		}
		return result;
	}
	public FostercareCommissionBean insert(FostercareCommissionBean bean) {
		FostercareCommissionBean result = null;
		if(bean!=null) {
			result = fostercareDao.create(bean);
		}
		return result;
	}
	public FostercareCommissionBean update(FostercareCommissionBean bean) {
		FostercareCommissionBean result = null;
		if(bean!=null) {
			result = fostercareDao.update(bean.getDday(), bean.getRegion(),
					bean.getSize(),bean.getVariety(),bean.getTxt(),bean.getPetid());
		}
		return result;
	}
	public boolean delete(FostercareCommissionBean bean) {
		boolean result = false;
		if(bean!=null) {
			result = fostercareDao.remove(bean.getPetid());
		}
		return result;
	}
}
