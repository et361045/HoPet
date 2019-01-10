package controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import model.member.MemberBean;
@ResponseBody
@Controller
public class testpicture {
	@RequestMapping(path= {"/test"})
	public void method2(@RequestParam("file") MultipartFile[] multipartFile) {
	   System.out.println("enter method2");
	   System.out.println("enter multipartFile"+ multipartFile);
	    
	
}
}
