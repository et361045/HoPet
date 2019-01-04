package model.foster;

public interface FosterDao {
	public abstract FosterBean findByFosterId(Integer fosterId);
	public abstract FosterBean findByCarerId(Integer carer);
	public abstract FosterBean update(FosterBean fosterBean);
	public abstract FosterBean insert(FosterBean fosterBean);
	public abstract boolean delete(FosterBean fosterBean);

}
