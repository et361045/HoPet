package model.fostercareForm;

import java.util.List;

import model.fostercareCommission.FostercareBean;

public interface FostercareFormDao {
	public abstract FostercareFormBean findByPrimaryKey(Integer fostercareFormid);

	public abstract List<FostercareFormBean> findAll();

	public abstract FostercareFormBean create(FostercareFormBean bean);

	public abstract FostercareFormBean update(Integer carer,String status,Integer FostercareCommissionid
			);

	public abstract boolean remove(Integer fostercareFormid);
}
