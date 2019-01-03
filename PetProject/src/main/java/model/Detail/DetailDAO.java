package model.Detail;

public interface DetailDAO {
	public abstract DetailBean findByDetailId(Integer DetailId);
	public abstract boolean update(DetailBean detailBean);
	public abstract boolean insert(DetailBean detailBean);
	public abstract boolean delete(DetailBean detailBean);

}
