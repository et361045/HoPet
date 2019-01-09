package model.fostercareCommission;

import java.util.List;

public interface FostercareCommissionDao {
	public abstract FostercareCommissionBean findByPrimaryKey(Integer petid);

	public abstract List<FostercareCommissionBean> findAll();

	public abstract FostercareCommissionBean create(FostercareCommissionBean bean);

	public abstract FostercareCommissionBean update(Integer dday,
			String region, String size,String variety,String txt,Integer petid);

	public abstract boolean remove(Integer petid);
}

