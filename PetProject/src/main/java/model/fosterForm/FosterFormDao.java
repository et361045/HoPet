package model.fosterForm;

import java.util.List;

public interface FosterFormDao {
	public abstract FosterFormBean findByFosterFormId(Integer fosterFormId);

	public abstract List<FosterFormBean> findByonwer(Integer onwer);

	public abstract List<FosterFormBean> findByPetId(Integer petId);

	public abstract FosterFormBean findByPetIdAndCarer(Integer petId, Integer carer);

	public abstract FosterFormBean update(FosterFormBean fosterFormBean);

	public abstract FosterFormBean insert(FosterFormBean fosterFormBean);

	public abstract boolean delete(FosterFormBean fosterFormBean);

	public abstract void deleteByPetId(Integer petId);

	public abstract void deleteByCarer(Integer carer, Integer petId);

}
