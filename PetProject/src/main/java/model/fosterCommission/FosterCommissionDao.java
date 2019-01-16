package model.fosterCommission;

import java.util.List;

public interface FosterCommissionDao {
	public abstract FosterCommissionBean findByFosterCommissionId(Integer fosterCommissionId);
	
	public abstract List<FosterCommissionBean> findAllFosterCommission();

	public abstract FosterCommissionBean update(FosterCommissionBean fosterCommissionBean);

	public abstract FosterCommissionBean insert(FosterCommissionBean fosterCommissionBean);

	public abstract boolean delete(FosterCommissionBean fosterCommissionBean);

}
