package controller;

import java.util.List;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import misc.PrimitiveNumberEditor;
import model.fostercareCommission.FostercareCommissionBean;
import model.fostercareCommission.FostercareCommissionDao;
import model.fostercareCommission.FostercareCommissionService;
import model.fostercareForm.FostercareFormBean;
import model.fostercareForm.FostercareFormService;
import model.member.MemberBean;
import model.member.MemberService;
import model.pet.PetBean;
import model.pet.PetService;

@Controller
public class foaaController {
	@Autowired
	private FostercareFormService fostercareFormService;
	
	@Autowired
	private  MemberService memberS;
	@Autowired
	private FostercareCommissionDao fcdao;
	
	@Autowired
	private PetService ps;
	@InitBinder
	private void method1(WebDataBinder webDataBinder)
	{
		webDataBinder.registerCustomEditor(int.class,new PrimitiveNumberEditor(java.lang.Integer.class,true));
	}
	
	
	@RequestMapping({"/fodd","*/fodd","*/*/fodd"})
	public String method( Model model) {
		List<FostercareFormBean> result = fostercareFormService.select(null);
		System.out.println("select =" +result);
		model.addAttribute("select", result);
		return "fostercareform";
	
		
	}
	
	@RequestMapping({"/foddemail","*/foddemail","*/*/foddemail"})
	public String method1(Model model,Integer memberid,int fostercareCommissionid) {
		System.out.println(memberid);
	 MemberBean   temp =	memberS.selectbymembreID(memberid);
	System.out.println(temp);
	
	FostercareCommissionBean fss =  fcdao.findByPrimaryKey(fostercareCommissionid);
	PetBean pb = ps.findpetBeanbypk(fss.getPetid());
	
	System.out.println("HIHIHIHIHIHIHIHIHIIIH");
	
	
	
	String host = "smtp.gmail.com";
	   int port = 587;
	   final String username = "Hopet0113@gmail.com";
	   final String password = "Demo0113";//your password

	   Properties props = new Properties();
	   props.put("mail.smtp.host", host);
	   props.put("mail.smtp.auth", "true");
	   props.put("mail.smtp.starttls.enable", "true");
	   props.put("mail.smtp.port", port);
	   Session session = Session.getInstance(props, new Authenticator() {
	    protected PasswordAuthentication getPasswordAuthentication() {
	     return new PasswordAuthentication(username, password);
	    }
	   });

	   try {

	    Message message = new MimeMessage(session);
	    message.setFrom(new InternetAddress("Hopet"));
	    message.setRecipients(Message.RecipientType.TO, InternetAddress.parse("et361045@hotmail.com"));
	    message.setSubject("寄養委託.");
	    message.setText("Dear,"+temp.getMemberName()+"你已被選為"+pb.getPetName()+"的寄養者");

	    Transport transport = session.getTransport("smtp");
	    transport.connect(host, port, username, password);

	    Transport.send(message);

	    System.out.println("寄送email結束.");

	   } catch (MessagingException e) {
	    throw new RuntimeException(e);
	   }
	
	
	
		
		List<FostercareFormBean> result = fostercareFormService.select(null);
		System.out.println("select =" +result);
		model.addAttribute("select", result);
		return "fostercareform";
	
		
	}
	
	
	
}
