package model.activityDetail;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class ActivityDetailService {
	@Autowired
	private ActivityDetailDao activityDetailDao;
	public ActivityDetailService(ActivityDetailDao activityDetailDao) {
		this.activityDetailDao = activityDetailDao;
	}
	public List<ActivityDetailBean> select(ActivityDetailBean bean) {
		List<ActivityDetailBean> result = null;
		if(bean!=null && bean.getActivityid()!=null) {
			ActivityDetailBean temp = activityDetailDao.findByPrimaryKey(bean.getActivityid());
			if(temp!=null) {
				result = new ArrayList<ActivityDetailBean>();
				result.add(temp);
			}
		} else {
			result = activityDetailDao.findAll(); 
		}
		return result;
	}
	public ActivityDetailBean insert(ActivityDetailBean bean) {
		ActivityDetailBean result = null;
		if(bean!=null) {
			result = activityDetailDao.create(bean);
		}
		return result;
	}
	public boolean delete(ActivityDetailBean bean) {
		boolean result = false;
		if(bean!=null) {
			result = activityDetailDao.remove(bean.getActivityid());
		}
		return result;
	}
}
