package model.fostercaredetail;

import java.util.List;

import model.fostercareCommission.FostercareCommissionBean;

public interface FostercareDetailDao {
	public abstract FostercareDetailBean findByPrimaryKey(Integer fostercareCommissionid);
	
	public abstract FostercareDetailBean finddetail(Integer fostercaredetail);
	
	public abstract List<FostercareDetailBean> findAll();

	public abstract FostercareDetailBean create(FostercareDetailBean bean);

	public abstract boolean remove(Integer fostercareCommissionid);
}
