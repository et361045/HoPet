package model.fosterForm;

public interface FosterFormDao {
	public abstract FosterFormBean findByFosterFormId(Integer fosterFormId);

	public abstract FosterFormBean update(FosterFormBean fosterFormBean);

	public abstract FosterFormBean insert(FosterFormBean fosterFormBean);

	public abstract boolean delete(FosterFormBean fosterFormBean);

}
