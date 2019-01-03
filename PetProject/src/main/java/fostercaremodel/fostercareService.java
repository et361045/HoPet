package fostercaremodel;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hospitalmodel.dao.hospitalDAOHibernate;
@Service
@Transactional
public class fostercareService {
	@Autowired
	private fostercareDAO fostercareDao;
	public fostercareService(fostercareDAO fostercareDao) {
		this.fostercareDao = fostercareDao;
	}
	
	

	public List<fostercareBean> select(fostercareBean bean) {
		List<fostercareBean> result = null;
		if(bean!=null && bean.getFostercareCommissionid()!=0) {
			fostercareBean temp = fostercareDao.findByPrimaryKey(bean.getFostercareCommissionid());
			if(temp!=null) {
				result = new ArrayList<fostercareBean>();
				result.add(temp);
			}
		} else {
			result = fostercareDao.findAll(); 
		}
		return result;
	}
	public fostercareBean insert(fostercareBean bean) {
		fostercareBean result = null;
		if(bean!=null) {
			result = fostercareDao.create(bean);
		}
		return result;
	}
	public fostercareBean update(fostercareBean bean) {
		fostercareBean result = null;
		if(bean!=null) {
			result = fostercareDao.update(bean.getOwner(), bean.getTxt(),
					bean.getPetid(), bean.getRegion(), bean.getDday(),bean.getSize(),bean.getVariety(),bean.getFostercareCommissionid());
		}
		return result;
	}
	public boolean delete(fostercareBean bean) {
		boolean result = false;
		if(bean!=null) {
			result = fostercareDao.remove(bean.getFostercareCommissionid());
		}
		return result;
	}
}
