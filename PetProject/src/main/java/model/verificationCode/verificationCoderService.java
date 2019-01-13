package model.verificationCode;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class verificationCoderService {
	@Autowired
	private VerificationCodeDAO VerificationCodeDao;

	public void create(VerificationCodeBean bean) {
		String temp = "";

		for (int i = 0; i < 15; i++) {
			int add = (int) (Math.random() * 61);
			if (add < 10) {
				temp = temp + add;
			}
			if (add >= 10 && add < 36) {
				temp = temp + (char) (add + 55);
			} else {
				temp = temp + (char) (add + 61);
			}
		}
		bean.setRandomverificationcode(temp);
		System.out.println("temp= " + temp);
		VerificationCodeDao.insert(bean);
	}
	public boolean Check(VerificationCodeBean bean) {
		VerificationCodeBean	temp  = VerificationCodeDao.findCodeBean(bean.getMemberId());
		if(temp.getRandomverificationcode().trim().equals(bean.getRandomverificationcode().trim())) {
			return true;
			
		}
		return false;
	}

}
