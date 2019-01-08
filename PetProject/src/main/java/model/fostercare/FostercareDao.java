package model.fostercare;

import java.util.List;

import model.fostercareCommission.FostercareCommissionBean;

public interface FostercareDao {
	public abstract FostercareBean findByPrimaryKey(Integer fostercareid);

	public abstract List<FostercareBean> findAll();

	public abstract FostercareBean create(FostercareBean bean);

	public abstract boolean remove(Integer fostercareid);
}
