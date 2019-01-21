package model.messageboard;

import java.util.List;

public interface messageboardDAO {
	public abstract List<MessageboardBean> findbypermission(String permission);
	public abstract List<MessageboardBean> findall();
	public abstract boolean insert(MessageboardBean bean);
	public abstract boolean update(MessageboardBean bean);
    public abstract boolean delete(MessageboardBean bean);
}
