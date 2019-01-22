package model.fostercareForm;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.fosterCommission.FosterCommissionBean;
import model.fosterCommission.FosterCommissionDao;
import model.fosterForm.FosterFormBean;
import model.fostercareCommission.FostercareCommissionBean;
import model.fostercareCommission.FostercareCommissionDao;
@Service
@Transactional
public class FostercareFormService {
	@Autowired
	private FostercareFormDao fostercareFormDao;
	@Autowired
	private FostercareCommissionDao fostercareCommissionDao;
	
	public FostercareFormService(FostercareFormDao fostercareFormDao) {
		this.fostercareFormDao = fostercareFormDao;
	}
	
	
	public List<FostercareFormBean> selectFostercareCommission (FostercareFormBean bean) {
		List<FostercareFormBean> result = null;
		if(bean!=null && bean.getFostercareCommissionid()!=null) {
			FostercareFormBean temp = (FostercareFormBean) fostercareFormDao.findCommissionid(bean.getFostercareCommissionid());
			return result;
		}else {
			return null;
		}
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
	
	
	public FostercareFormBean insertFostercareForm(FostercareFormBean fostercareFormBean,Integer petId) {
		fostercareFormBean.setFostercareCommissionid(fostercareCommissionDao.findByPetId(petId).getFostercareCommissionid());
		return fostercareFormBean;
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
