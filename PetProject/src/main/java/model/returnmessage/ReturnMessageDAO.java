package model.returnmessage;

import java.util.List;

public interface ReturnMessageDAO {
	public abstract List<ReturnMessageBean> findbymessageboardid(Integer id);
    public abstract boolean insert(ReturnMessageBean bean);
	public abstract boolean update(ReturnMessageBean bean);
    public abstract boolean delete(ReturnMessageBean bean);
    public abstract  ReturnMessageBean select(Integer id);
    }
