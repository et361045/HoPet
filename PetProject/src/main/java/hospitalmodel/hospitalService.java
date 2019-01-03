package hospitalmodel;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hospitalmodel.dao.hospitalDAOHibernate;
@Service
@Transactional
public class hospitalService {
	@Autowired
	private hospitalDAO hospitalDao;
	public hospitalService(hospitalDAO hospitalDao) {
		this.hospitalDao = hospitalDao;
	}
	
	

	public List<hospitalBean> select(hospitalBean bean) {
		List<hospitalBean> result = null;
		if(bean!=null && bean.getLatitude().length()!=0) {
			hospitalBean temp = hospitalDao.findLatitudeKey(bean.getLatitude());
			if(temp!=null) {
				result = new ArrayList<hospitalBean>();
				result.add(temp);
			}
		} else {
			result = hospitalDao.findAll(); 
		}
		return result;
	}
}
