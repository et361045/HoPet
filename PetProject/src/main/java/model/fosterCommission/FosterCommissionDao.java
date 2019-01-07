package model.fosterCommission;

public interface FosterCommissionDao {
	public abstract FosterCommissionBean findByFosterCommissionId(Integer fosterCommissionId);

	public abstract FosterCommissionBean update(FosterCommissionBean fosterCommissionBean);

	public abstract FosterCommissionBean insert(FosterCommissionBean fosterCommissionBean);

	public abstract boolean delete(FosterCommissionBean fosterCommissionBean);

}
