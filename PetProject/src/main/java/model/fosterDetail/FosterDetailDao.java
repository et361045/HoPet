package model.fosterDetail;

import java.util.List;

public interface FosterDetailDao {

	public abstract FosterDetailBean findByPetId(Integer petId);

	public abstract List<FosterDetailBean> findByOwner(Integer owner);
	
	public abstract List<FosterDetailBean> findByCarer(Integer owner);

	public abstract FosterDetailBean update(FosterDetailBean fosterBean);

	public abstract FosterDetailBean insert(FosterDetailBean fosterBean);

	public abstract boolean delete(FosterDetailBean fosterBean);

}
