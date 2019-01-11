package model.fostercareForm;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
@Transactional
public class FostercareFormService {
	@Autowired
	private FostercareFormDao fostercareFormDao;
	public FostercareFormService(FostercareFormDao fostercareFormDao) {
		this.fostercareFormDao = fostercareFormDao;
	}
	public List<FostercareFormBean> select(FostercareFormBean bean) {
		List<FostercareFormBean> result = null;
		if(bean!=null && bean.getFostercareFormid()!=null) {
			FostercareFormBean temp = fostercareFormDao.findByPrimaryKey(bean.getFostercareFormid());
			if(temp!=null) {
				result = new ArrayList<FostercareFormBean>();
				result.add(temp);
			}
		} else {
			result = fostercareFormDao.findAll(); 
		}
		return result;
	}
	public FostercareFormBean insert(FostercareFormBean bean) {
		FostercareFormBean result = null;
		if(bean!=null) {
			result = fostercareFormDao.create(bean);
		}
		return result;
	}
	public FostercareFormBean update(FostercareFormBean bean) {
		FostercareFormBean result = null;
		if(bean!=null) {
			result = fostercareFormDao.update(bean.getCarer(), bean.getStatus(),bean.getJob(),bean.getExperience()
					,bean.getPettime(),bean.getFostercareCommissionid());
		}
		return result;
	}
	public boolean delete(FostercareFormBean bean) {
		boolean result = false;
		if(bean!=null) {
			result = fostercareFormDao.remove(bean.getFostercareCommissionid());
		}
		return result;
	}
}
