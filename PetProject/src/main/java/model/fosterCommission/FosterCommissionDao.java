package model.fosterCommission;

import java.util.List;

public interface FosterCommissionDao {
	public abstract FosterCommissionBean findByFosterCommissionId(Integer fosterCommissionId);

	public abstract FosterCommissionBean findByPetId(Integer petId);
	
	public abstract void deleteByPetId(Integer petId);

	public abstract List<FosterCommissionBean> findByOwner(Integer Owner);

	public abstract List<FosterCommissionBean> findAllFosterCommission();

	public abstract List<FosterCommissionBean> findByAreaFosterCommission(String area);

	public abstract List<FosterCommissionBean> findByVarietyFosterCommission(String variety);

	public abstract List<FosterCommissionBean> findByAreaAndVarietyFosterCommission(String area, String variety);

	public abstract FosterCommissionBean update(FosterCommissionBean fosterCommissionBean);

	public abstract FosterCommissionBean insert(FosterCommissionBean fosterCommissionBean);

	public abstract boolean delete(FosterCommissionBean fosterCommissionBean);

}
