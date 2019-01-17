package model.fosterCommission;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.member.MemberBean;
import model.member.MemberDAO;
import model.pet.PetBean;
import model.pet.PetDAO;

@Service
@Transactional
public class FosterCommissionService {
	@Autowired
	private FosterCommissionDao fosterCommissionDao;
	@Autowired 
	private PetDAO petDAO;
	@Autowired
	private MemberDAO memberDAO;

	public PetDetailBean searchPetId(Integer petId) {
		FosterCommissionBean CommissionBean = fosterCommissionDao.findByPetId(petId);
		PetBean petbean = petDAO.findpetBean(petId);
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
		return detailBean;
	}
	
	public FosterCommissionBean searchFosterCommissionId(Integer fosterCommissionId) {
		FosterCommissionBean bean = fosterCommissionDao.findByFosterCommissionId(fosterCommissionId);
		if (bean != null) {
			return bean;
		}
		return null;
	}
	public List<FosterCommissionBean> searchAllFosterCommission() {
		List<FosterCommissionBean> bean = fosterCommissionDao.findAllFosterCommission();
		return bean;
	}

	public FosterCommissionBean updateFosterCommission(FosterCommissionBean fosterCommissionBean) {
		FosterCommissionBean bean = fosterCommissionDao.update(fosterCommissionBean);
		if (bean != null) {
			return bean;
		}
		return null;
	}

	public FosterCommissionBean insertFosterCommission(FosterCommissionBean fosterCommissionBean) {
		PetBean petbean = petDAO.findpetBean(fosterCommissionBean.getPetId());
		FosterCommissionBean commissionBean = new FosterCommissionBean();
		commissionBean.setVariety(petbean.getPetVariety());
		commissionBean.setPicture(petbean.getPetPicture());
		commissionBean.setOwner(petbean.getMemberid());
		commissionBean.setName(fosterCommissionBean.getName());
		commissionBean.setArea(fosterCommissionBean.getArea());
		commissionBean.setPetId(fosterCommissionBean.getPetId());
		commissionBean.setReason(fosterCommissionBean.getReason());
		commissionBean.setRemark(fosterCommissionBean.getRemark());
		return fosterCommissionDao.insert(commissionBean);
	}

	public boolean deleteFosterCommission(FosterCommissionBean fosterCommissionBean) {
		if (fosterCommissionBean.getFosterCommissionId() != null) {
			return fosterCommissionDao.delete(fosterCommissionBean);
		}
		return false;
	}
}
