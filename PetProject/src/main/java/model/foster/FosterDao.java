package model.foster;

public interface FosterDao {
	public abstract FosterBean findByFosterId(int fosterId);
	public abstract FosterBean findByCarerId(Integer carer);
	public abstract FosterBean update(FosterBean fosterBean);
	public abstract FosterBean insert(FosterBean fosterBean);
	public abstract boolean delete(FosterBean fosterBean);


}
