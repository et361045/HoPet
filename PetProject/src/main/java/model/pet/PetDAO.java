package model.pet;

import java.util.List;

    public interface PetDAO {
	public abstract PetBean          findpetBean(Integer petid);
	public abstract List<PetBean>    findpetBymember(Integer member);
	public abstract boolean update(PetBean Bean);
	public abstract boolean insert(PetBean Bean);
	public abstract boolean delete(PetBean Bean);
}
