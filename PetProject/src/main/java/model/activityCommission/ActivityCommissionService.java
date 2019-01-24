package model.activityCommission;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.member.MemberBean;
import model.member.MemberDAO;

@Service
@Transactional
public class ActivityCommissionService {
	
	@Autowired
	private ActivityCommissionDAO activityCommissionDAO;
	
	@Autowired
	private MemberDAO memberDAO;
	
	public ActivityCommissionService(ActivityCommissionDAO activityCommissionDAO) {
		this.activityCommissionDAO = activityCommissionDAO;
	}
	
	public ActivityDetailBean searchformId(Integer activityid) {
		ActivityCommissionBean CommissionBean = activityCommissionDAO.findByactivityId(activityid);
//		PetBean petbean = petDAO.findpetBean(petid);
		MemberBean memberBean = memberDAO.findMemberBean(CommissionBean.getActivitymemberid());
		ActivityDetailBean detailBean = new ActivityDetailBean();
		detailBean.setMemberName(memberBean.getMemberName());
//		detailBean.setPetName(petbean.getPetName());
//		detailBean.setVariety(petbean.getPetVariety());
//		detailBean.setAge(petbean.getAge());
//		detailBean.setVaccine(petbean.getVaccine());
		detailBean.setActivityname(CommissionBean.getActivityname());
		detailBean.setActivites(CommissionBean.getActivites());
		detailBean.setLimit(CommissionBean.getLimit());
		detailBean.setPhone(CommissionBean.getPhone());
		detailBean.setAddress(CommissionBean.getAddress());
		
		
		return detailBean;
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
			result = activityCommissionDAO.update(bean.getActivityname(), bean.getActivites(),
					bean.getLimit(),bean.getSignup(),bean.getAddress(),bean.getPhone(),bean.getStatus(),bean.getActivitymemberid());
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
