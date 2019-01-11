package model.fostercaredetail;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.fostercareCommission.FostercareCommissionBean;
import model.fostercaredetail.FostercareDetailDao;
@Service
@Transactional
public class FostercareDetailService {
	@Autowired
	private FostercareDetailDao fostercareDao;
	public FostercareDetailService(FostercareDetailDao fostercareDao) {
		this.fostercareDao = fostercareDao;
	}
	public List<FostercareDetailBean> select(FostercareDetailBean bean) {
		List<FostercareDetailBean> result = null;
		if(bean!=null && bean.getFostercareCommissionid()!=null) {
			FostercareDetailBean temp = fostercareDao.findByPrimaryKey(bean.getFostercareCommissionid());
			if(temp!=null) {
				result = new ArrayList<FostercareDetailBean>();
				result.add(temp);
			}
		} else {
			result = fostercareDao.findAll(); 
		}
		return result;
	}
	public FostercareDetailBean insert(FostercareDetailBean bean) {
		FostercareDetailBean result = null;
		if(bean!=null) {
			result = fostercareDao.create(bean);
		}
		return result;
	}
	public boolean delete(FostercareDetailBean bean) {
		boolean result = false;
		if(bean!=null) {
			result = fostercareDao.remove(bean.getFostercareCommissionid());
		}
		return result;
	}
}
