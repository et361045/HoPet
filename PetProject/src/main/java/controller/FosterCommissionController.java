package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import model.fosterCommission.FosterCommissionBean;
import model.fosterCommission.FosterCommissionService;

@Controller
public class FosterCommissionController {
	
	@Autowired
	private FosterCommissionService fosterCommissionService;
	@ResponseBody
	@RequestMapping("fosterCommission")
	public String test(String hostName , String variety, FosterCommissionBean fosterCommissionBean ) {
		
		System.out.println(fosterCommissionBean.getReason());
		return "123";
		
	}

}
