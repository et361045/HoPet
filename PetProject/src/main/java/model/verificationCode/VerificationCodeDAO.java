package model.verificationCode;

import model.member.MemberBean;

public interface VerificationCodeDAO {
    public abstract VerificationCodeBean findCodeBean (int memberId);
	public abstract Integer findMemberID(String code);
	public abstract String findcode(int memberId);
    public abstract boolean insert(VerificationCodeBean codeBean);
	public abstract boolean delete(VerificationCodeBean codeBean);
}
