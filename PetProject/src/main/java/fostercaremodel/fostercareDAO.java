package fostercaremodel;

import java.util.List;

public interface fostercareDAO {
	public abstract fostercareBean findByPrimaryKey(int FostercareCommissionid);

	public abstract List<fostercareBean> findAll();

	public abstract fostercareBean create(fostercareBean bean);

	public abstract fostercareBean update(Integer owner, String txt,
			Integer petid, String region, Integer dday,String size,String Variety,Integer FostercareCommissionid);

	public abstract boolean remove(int FostercareCommissionid);
}
