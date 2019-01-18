package model.fostercareCommission;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.fosterCommission.FosterCommissionBean;
import  model.fostercareCommission.PetDetailBean;

import model.member.MemberBean;
import model.member.MemberDAO;
import model.pet.PetBean;
import model.pet.PetDAO;

@Service
@Transactional
public class FostercareCommissionService {
	@Autowired
	private FostercareCommissionDao fostercareDao;
	@Autowired 
	private PetDAO petDAO;
	@Autowired
	private MemberDAO memberDAO;
	public FostercareCommissionService(FostercareCommissionDao fostercareDao) {
		this.fostercareDao = fostercareDao;
	}
	
	
	public PetDetailBean searchPetId(Integer petid) {
		FostercareCommissionBean CommissionBean = fostercareDao.findByPetId(petid);
		PetBean petbean = petDAO.findpetBean(petid);
		MemberBean memberBean = memberDAO.findMemberBean(CommissionBean.getOwner());
		PetDetailBean detailBean = new PetDetailBean();
		detailBean.setMemberName(memberBean.getMemberName());
		detailBean.setPetName(petbean.getPetName());
		detailBean.setArea(CommissionBean.getArea());
		detailBean.setVariety(petbean.getPetVariety());
		detailBean.setAge(petbean.getAge());
		detailBean.setVaccine(petbean.getVaccine());
		detailBean.setPicture(CommissionBean.getPicture());
		detailBean.setReason(CommissionBean.getReason());
		detailBean.setRemark(CommissionBean.getRemark());
		detailBean.setStarttime(CommissionBean.getStarttime());
		detailBean.setEndtime(CommissionBean.getEndtime());
		return detailBean;
	}
	
	
	
	

	public List<FostercareCommissionBean> select(FostercareCommissionBean bean) {
		List<FostercareCommissionBean> result = null;
		if(bean!=null && bean.getFostercareCommissionid()!=null) {
			FostercareCommissionBean temp = fostercareDao.findByPrimaryKey(bean.getFostercareCommissionid());
			if(temp!=null) {
				result = new ArrayList<FostercareCommissionBean>();
				result.add(temp);
			}
		} else {
			result = fostercareDao.findAll(); 
		}
		return result;
	}
	public FostercareCommissionBean insert(FostercareCommissionBean bean) {
		FostercareCommissionBean result = null;
		if(bean!=null) {
			result = fostercareDao.create(bean);
		}
		return result;
	}
	public FostercareCommissionBean update(FostercareCommissionBean bean) {
		FostercareCommissionBean result = null;
		if(bean!=null) {
			result = fostercareDao.update(bean.getName(), bean.getVariety(),
					bean.getArea(),bean.getStarttime(),bean.getEndtime(),bean.getOwner(),bean.getReason(),
					bean.getPicture(),bean.getRemark(),bean.getFostercareCommissionid());
		}
		return result;
	}
	public boolean delete(FostercareCommissionBean bean) {
		boolean result = false;
		if(bean!=null) {
			result = fostercareDao.remove(bean.getFostercareCommissionid());
		}
		return result;
	}
}
