package model.fosterDetail;

public interface FosterDetailDao {
	public abstract FosterDetailBean findByFosterId(int fosterId);
	public abstract FosterDetailBean findByCarerId(Integer carer);
	public abstract FosterDetailBean update(FosterDetailBean fosterBean);
	public abstract FosterDetailBean insert(FosterDetailBean fosterBean);
	public abstract boolean delete(FosterDetailBean fosterBean);


}
