package model.activityForm;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class ActivityFormService{
	@Autowired 
	private ActivityFormDAO activityFormDAO;
	public  ActivityFormService (ActivityFormDAO activityFormDAO) {
		this.activityFormDAO = activityFormDAO;
	}
	public List<ActivityFormBean> select(ActivityFormBean bean) {
		List<ActivityFormBean> result = null;
		if(bean!=null && bean.getActivityformid()!=null) {
			ActivityFormBean temp = activityFormDAO.findByPrimaryKey(bean.getActivityformid());
			if(temp!=null) {
				result = new ArrayList<ActivityFormBean>();
				result.add(temp);
			}
		} else {
			result = activityFormDAO.findAll(); 
		}
		return result;
	}
	public ActivityFormBean insert(ActivityFormBean bean) {
		ActivityFormBean result = null;
		if(bean!=null) {
			result = activityFormDAO.create(bean);
		}
		return result;
	}
	public ActivityFormBean update(ActivityFormBean bean) {
		ActivityFormBean result = null;
		if(bean!=null) {
			result = activityFormDAO.update(bean.getParticipate(), bean.getRemarks(),bean.getMnumber()
					,bean.getActivityformid());
		}
		
		return result;
	}
	public boolean delete(ActivityFormBean bean) {
		boolean result = false;
		if(bean!=null) {
			result = activityFormDAO.remove(bean.getActivityid());
		}
		return result;
	}
}
