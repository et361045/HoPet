package model.fosterDetail;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.fosterForm.FosterFormBean;
import model.fosterForm.FosterFormDao;
import model.member.MemberDAO;

@Service
public class FosterDetailService {
	@Autowired
	private FosterDetailDao fosterDetailDao;
	@Autowired
	private FosterFormDao fosterFormDao;
	@Autowired
	private MemberDAO memberDAO;

	public FosterDetailBean updateFoster(FosterDetailBean fosterDetailBean) {
		FosterDetailBean bean = fosterDetailDao.update(fosterDetailBean);
		if (bean != null) {
			return bean;
		}
		return null;
	}
	
	public List<FosterDetailBean> findDetailByOwner(Integer owner) {
		return fosterDetailDao.findByOwner(owner);
	}
	public List<FosterDetailBean> findDetailByCarer(Integer owner) {
		return fosterDetailDao.findByCarer(owner);
	}

	public void insertFoster(Integer carer, Integer petId) {
		FosterFormBean bean = fosterFormDao.findByPetIdAndCarer(petId, carer);
		FosterDetailBean detailbean = new FosterDetailBean();
		detailbean.setPetId(petId);
		detailbean.setPetname(bean.getPetName());
		detailbean.setOwner(bean.getOwner());
		detailbean.setCarer(carer);
		detailbean.setOwnername((memberDAO.findMemberBean(bean.getOwner())).getMemberName());
		detailbean.setCarername(bean.getCarerName());
		fosterDetailDao.insert(detailbean);
	}

	public boolean deleteFoster(FosterDetailBean fosterDetailBean) {
		if (fosterDetailBean.getFosterDetailId() != null) {
			return fosterDetailDao.delete(fosterDetailBean);
		}
		return false;
	}

}
