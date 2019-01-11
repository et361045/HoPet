package model.activityCommission;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class ActivityCommissionService {
	
	@Autowired
	private ActivityCommissionDAO activityCommissionDAO;
	public ActivityCommissionService(ActivityCommissionDAO activityCommissionDAO) {
		this.activityCommissionDAO = activityCommissionDAO;
	}
	
	public List<ActivityCommissionBean> select(ActivityCommissionBean bean) {
		List<ActivityCommissionBean> result = null;
		if(bean!=null && bean.getActivitymemberid()!=null) {
			ActivityCommissionBean temp = activityCommissionDAO.findByPrimaryKey(bean.getActivitymemberid());
			if(temp!=null) {
				result = new ArrayList<ActivityCommissionBean>();
				result.add(temp);
			}
		} else {
			result = activityCommissionDAO.findAll(); 
		}
		return result;
	}
	public ActivityCommissionBean insert(ActivityCommissionBean bean) {
		System.out.println("service= bean "+bean);
		ActivityCommissionBean result = null;
		if(bean!=null) {
			result = activityCommissionDAO.create(bean);
		}
		return result;
	}
	public ActivityCommissionBean update(ActivityCommissionBean bean) {
		ActivityCommissionBean result = null;
		if(bean!=null) {
			result = activityCommissionDAO.update(bean.getActivityname(), bean.getActivities(),
					bean.getLimit(),bean.getSignup(),bean.getStatus(),bean.getActivitymemberid());
		}
//		String activityname, String activities,Integer limit,Integer signup,Integer Activitymemberid
		
		return result;
	}
	public boolean delete(ActivityCommissionBean bean) {
		boolean result = false;
		if(bean!=null) {
			result = activityCommissionDAO.remove(bean.getActivitymemberid());
		}
		return result;
	}
	
}
