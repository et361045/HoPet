package model.fostercare;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.fostercare.FostercareDao;
import model.fostercareCommission.FostercareBean;
@Service
@Transactional
public class FostercareService {
	@Autowired
	private FostercareDao fostercareDao;
	public FostercareService(FostercareDao fostercareDao) {
		this.fostercareDao = fostercareDao;
	}
	public List<FostercareAllBean> select(FostercareAllBean bean) {
		List<FostercareAllBean> result = null;
		if(bean!=null && bean.getFostercareid()!=null) {
			FostercareAllBean temp = fostercareDao.findByPrimaryKey(bean.getFostercareid());
			if(temp!=null) {
				result = new ArrayList<FostercareAllBean>();
				result.add(temp);
			}
		} else {
			result = fostercareDao.findAll(); 
		}
		return result;
	}
	public FostercareAllBean insert(FostercareAllBean bean) {
		FostercareAllBean result = null;
		if(bean!=null) {
			result = fostercareDao.create(bean);
		}
		return result;
	}
	public boolean delete(FostercareAllBean bean) {
		boolean result = false;
		if(bean!=null) {
			result = fostercareDao.remove(bean.getFostercareid());
		}
		return result;
	}
}
