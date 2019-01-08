package model.fostercareCommission;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class FostercareService {
	@Autowired
	private FostercareDao fostercareDao;
	public FostercareService(FostercareDao fostercareDao) {
		this.fostercareDao = fostercareDao;
	}
	
	

	public List<FostercareBean> select(FostercareBean bean) {
		List<FostercareBean> result = null;
		if(bean!=null && bean.getPetid()!=null) {
			FostercareBean temp = fostercareDao.findByPrimaryKey(bean.getPetid());
			if(temp!=null) {
				result = new ArrayList<FostercareBean>();
				result.add(temp);
			}
		} else {
			result = fostercareDao.findAll(); 
		}
		return result;
	}
	public FostercareBean insert(FostercareBean bean) {
		FostercareBean result = null;
		if(bean!=null) {
			result = fostercareDao.create(bean);
		}
		return result;
	}
	public FostercareBean update(FostercareBean bean) {
		FostercareBean result = null;
		if(bean!=null) {
			result = fostercareDao.update(bean.getDday(), bean.getRegion(),
					bean.getSize(),bean.getVariety(),bean.getTxt(),bean.getPetid());
		}
		return result;
	}
	public boolean delete(FostercareBean bean) {
		boolean result = false;
		if(bean!=null) {
			result = fostercareDao.remove(bean.getPetid());
		}
		return result;
	}
}
