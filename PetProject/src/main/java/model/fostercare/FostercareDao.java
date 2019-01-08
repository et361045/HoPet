package model.fostercare;

import java.util.List;

import model.fostercareCommission.FostercareBean;

public interface FostercareDao {
	public abstract FostercareAllBean findByPrimaryKey(Integer fostercareid);

	public abstract List<FostercareAllBean> findAll();

	public abstract FostercareAllBean create(FostercareAllBean bean);

	public abstract boolean remove(Integer fostercareid);
}
