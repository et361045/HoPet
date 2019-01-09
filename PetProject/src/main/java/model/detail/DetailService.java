package model.detail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DetailService {
	
	@Autowired
	private DetailDAO detailDAO;
	
	public DetailBean SearchDetail(Integer detailID) {
		DetailBean bean = detailDAO.findByDetailId(detailID);
		if(bean != null) {
			return bean;
		}
		return null;
	}
	
	public boolean insertDetail(DetailBean bean) {
		if(bean != null) {
			return detailDAO.insert(bean);
		}
		return false;
	}
	
	public boolean updateDetail(DetailBean bean) {
		if(bean.getDetailId() != null) {
			return detailDAO.update(bean);
		}
		return false;
	}
	
	public boolean deleteDetail(DetailBean bean) {
		if(bean.getDetailId() != null) {
			return detailDAO.delete(bean);
		}
		return false;
	}

}
