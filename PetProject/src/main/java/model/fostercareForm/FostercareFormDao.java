package model.fostercareForm;

import java.util.List;

import model.fostercareCommission.FostercareCommissionBean;

public interface FostercareFormDao {
	public abstract FostercareFormBean findByPrimaryKey(Integer fostercareFormid);//找一組
	
	public abstract List<FostercareFormBean> findCommissionid(Integer fostercareCommissionid);//找號碼
	
	public abstract List<FostercareFormBean> findAll();//找全部

	public abstract FostercareFormBean create(FostercareFormBean bean);

	public abstract FostercareFormBean update(Integer carer,String status,String job,String experience,String pettime,Integer fostercareCommissionid
			);

	public abstract boolean remove(Integer fostercareCommissionid);
}
