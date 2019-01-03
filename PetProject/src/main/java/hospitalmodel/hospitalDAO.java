package hospitalmodel;

import java.util.List;

public interface hospitalDAO {
	public abstract hospitalBean findLatitudeKey(String Latitude);
	public abstract List<hospitalBean> findAll();
}
