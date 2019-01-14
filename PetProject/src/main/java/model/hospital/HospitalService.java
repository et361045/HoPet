package model.hospital;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
@Transactional
public class HospitalService {
	@Autowired
	private HospitalDao hospitalDao;
	public HospitalService(HospitalDao hospitalDao) {
		this.hospitalDao = hospitalDao;
	}
	
	
	public List<HospitalBean> select(HospitalBean bean) {
		List<HospitalBean> result = null;
		if(bean!=null && bean.getHospitalId()!=null) {
			HospitalBean temp = hospitalDao.findByPrimaryKey(bean.getHospitalId());
			if(temp!=null) {
				result = new ArrayList<HospitalBean>();
				result.add(temp);
			}
		} else {
			result = hospitalDao.findAll(); 
		}
		return result;
	}
	
	public List<HospitalBean> selectarea(String  area) {
		List<HospitalBean> result;
		List<HospitalBean> temp =new ArrayList<HospitalBean>();
		result = hospitalDao.findAll();
		for(int i=0;i<result.size();i++)
		{ 
		
			
			if(result.get(i).getHospitalAddress().indexOf(area)>-1)
			{
				
				temp.add(result.get(i));
			}
	
	
		}
		System.out.println(temp);
		return temp;
	}
	
	
	public HospitalBean insert(HospitalBean bean) {
		HospitalBean result = null;
		if(bean!=null) {
			result = hospitalDao.create(bean);
		}
		return result;
	}
	public HospitalBean update(HospitalBean bean) {
		HospitalBean result = null;
		if(bean!=null) {
			result = hospitalDao.update(bean.getHospitalName(), bean.getHospitalAddress(),
					bean.getHospitalphone(),bean.getHospitalowner(),bean.getHospitalgooglemap(),
					bean.getLongitude(),bean.getLatitude(),bean.getHospitalId());
		}
		return result;
	}
	public boolean delete(HospitalBean bean) {
		boolean result = false;
		if(bean!=null) {
			result = hospitalDao.remove(bean.getHospitalId());
		}
		return result;
	}
}
