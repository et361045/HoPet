package model.hospital;

import java.util.List;

import model.hospital.HospitalBean;

public interface HospitalDao {
	public abstract HospitalBean findByPrimaryKey(Integer hospitalId);

	public abstract List<HospitalBean> findAll();

	public abstract HospitalBean create(HospitalBean bean);

	public abstract HospitalBean update(String hospitalName,
			String hospitalAddress, String hospitalphone,String hospitalowner,String hospitalgooglemap,Double longitude,Double latitude,Integer hospitalId);

	public abstract boolean remove(Integer hospitalId);
}