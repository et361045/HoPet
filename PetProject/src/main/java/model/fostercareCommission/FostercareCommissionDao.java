package model.fostercareCommission;

import java.sql.Date;
import java.util.List;

import model.fosterCommission.FosterCommissionBean;

public interface FostercareCommissionDao {
	public abstract FostercareCommissionBean findByPrimaryKey(Integer fostercareCommissionid);
	
	public abstract FostercareCommissionBean findByPetId(Integer petid);

	public abstract List<FostercareCommissionBean> findAll();

	public abstract FostercareCommissionBean create(FostercareCommissionBean bean);

	public abstract FostercareCommissionBean update(String name,
			String variety, String area,Date starttime,Date endtime,Integer owner,String reason,String picture,String remark,Integer fostercareCommissionid);

	public abstract boolean remove(Integer fostercareCommissionid);
}

