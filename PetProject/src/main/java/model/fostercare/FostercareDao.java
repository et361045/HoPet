package model.fostercare;

import java.util.List;

public interface FostercareDao {
	public abstract FostercareBean findByPrimaryKey(Integer petid);

	public abstract List<FostercareBean> findAll();

	public abstract FostercareBean create(FostercareBean bean);

	public abstract FostercareBean update(Integer dday,
			String region, String size,String variety,String txt,Integer petid);

	public abstract boolean remove(Integer petid);
}

