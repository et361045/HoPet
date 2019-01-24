package model.fosterForm;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.fosterCommission.FosterCommissionBean;
import model.fosterCommission.FosterCommissionDao;
import model.member.MemberDAO;
import model.pet.PetBean;
import model.pet.PetDAO;

@Service
public class FosterFormService {
	@Autowired
	private FosterFormDao fosterFormDao;
	@Autowired
	private FosterCommissionDao fosterCommissionDao;
	@Autowired
	private MemberDAO memberDAO;
	@Autowired
	private PetDAO petDAO;

	public boolean updateOwner(Integer carer, Integer petId) {
		if(petDAO.findpetBean(petId) != null) {
		PetBean temp = petDAO.findpetBean(petId);
		temp.setMemberid(carer);
		petDAO.update(temp);
		return true;
		}
		return false;
	}

	public void deleteFosterPetId(Integer petId) {
		if (fosterFormDao.findByPetId(petId) != null) {
			fosterFormDao.deleteByPetId(petId);
		}
	}

	public FosterFormBean searchFosterFormId(Integer fosterFormId) {
		FosterFormBean bean = fosterFormDao.findByFosterFormId(fosterFormId);
		return bean;
	}

	public List<FosterFormBean> searchCarer(Integer owner) {
		return fosterFormDao.findByonwer(owner);
	}

	public List<FosterCommissionBean> searchOwner(Integer owner) {
		return fosterCommissionDao.findByOwner(owner);
	}

	public FosterFormBean updateFosterForm(FosterFormBean fosterFormBean) {
		FosterFormBean bean = fosterFormDao.update(fosterFormBean);

		return bean;
	}

	public FosterFormBean insertFosterForm(FosterFormBean fosterFormBean, Integer petId) {
		fosterFormBean.setFosterId(fosterCommissionDao.findByPetId(petId).getFosterCommissionId());
		fosterFormBean.setPetName(petDAO.findpetBean(petId).getPetName());
		fosterFormBean.setOwner(fosterCommissionDao.findByPetId(petId).getOwner());
		fosterFormBean.setCarerName(memberDAO.findMemberBean(fosterFormBean.getCarer()).getMemberName());
		fosterFormBean.setPetId(petId);
		return fosterFormDao.insert(fosterFormBean);
	}

	public boolean deleteFosterForm(FosterFormBean fosterFormBean) {
		if (fosterFormBean.getFosterFormId() != null) {
			return fosterFormDao.delete(fosterFormBean);
		}
		return false;
	}
}
