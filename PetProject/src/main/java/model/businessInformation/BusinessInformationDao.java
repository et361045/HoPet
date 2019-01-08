package model.businessInformation;

import java.util.List;


public interface BusinessInformationDao {
	public abstract BusinessInformationBean findByPrimaryKey(Integer businessId);

	public abstract List<BusinessInformationBean> findAll();

	public abstract BusinessInformationBean create(BusinessInformationBean bean);

	public abstract BusinessInformationBean update(String companyname,
			String businessAddress, String businessPhone,String idname,String businessGooglemap,String latitude,Integer businessId);

	public abstract boolean remove(Integer businessId);
}
