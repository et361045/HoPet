package model.member;

public interface MemberDAO {
	public abstract Integer findMemberId(String email);
	public abstract MemberBean findMemberBean(int memberId);
	public abstract MemberBean findMemberBean(String email);
	public abstract boolean update(MemberBean member);
	public abstract boolean insert(MemberBean member);
	public abstract boolean delete(MemberBean member);
}
