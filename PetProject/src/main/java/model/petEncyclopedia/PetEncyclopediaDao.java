package model.petEncyclopedia;

public interface PetEncyclopediaDao {
	public abstract PetEncyclopediaBean finBypetEncyclopediaId(Integer petEncyclopediaId);

	public abstract PetEncyclopediaBean update(PetEncyclopediaBean petEncyclopediaBean);
}
