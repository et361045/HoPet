package controller.member;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.hibernate.sql.Update;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.MessageSourceResolvable;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.annotation.SessionScope;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import model.member.MemberBean;
import model.member.MemberService;
import model.verificationCode.VerificationCodeBean;
import model.verificationCode.verificationCoderService;

@ResponseBody
@Controller
@SessionAttributes("user")
public class sendcontroller {
	@Autowired
	private verificationCoderService CoderService;

	@Autowired
	private MemberService memberService;

	
	@Autowired
	private ApplicationContext context;
	
    @RequestMapping(value = {"*/send","send"})
   public void method(Model model) throws UnsupportedEncodingException {
   System.out.println("entert email");
  
   
   MemberBean temp  = (MemberBean) model.asMap().get("user");
   String toemail= temp.getEmail();
   VerificationCodeBean code = new VerificationCodeBean();
   code.setMemberId(temp.getMemberId());
   VerificationCodeBean targer = CoderService.create(code);
   
   System.out.println("target = "+ targer);

   
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
    message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toemail));
    message.setSubject("test");
   
    message.setText("Dear,"+temp.getEmail()+"your Verification code is "+targer.getRandomverificationcode());

    Transport transport = session.getTransport("smtp");
    transport.connect(host, port, username, password);

    Transport.send(message);

    System.out.println("寄送email結束.");

   } catch (MessagingException e) {
    throw new RuntimeException(e);
   }

}
	@RequestMapping(value = {"*/check"})
	 public String method1(Model model,@RequestParam(name = "vcode", required = false) String vcode) {
		   System.out.println("entert check");
		   System.out.println(vcode);
		   MemberBean temp  = (MemberBean) model.asMap().get("user");
		   VerificationCodeBean code = new VerificationCodeBean();
		   code.setMemberId(temp.getMemberId());
		   code.setRandomverificationcode(vcode);
		   if(CoderService.Check(code)==true) {
			   temp.setCheckSuccess("1");
			   memberService.update(temp);
			   model.addAttribute("user", temp);
			   return "ok";
		   }
		   
		   
	 return "defeat";
	
	}
	
	
	
	@RequestMapping(value = {"forgetpaw"})
	   public void method2(Model model,@RequestParam(name = "email", required = false) String email) {
	   System.out.println("entert forgetpaw");
	   System.out.println("email = "+email);
	  MemberBean temp=  memberService.selectemail(email) ;
	   System.out.println("temp = "+temp);

	   
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
	    message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
	    message.setSubject("your password");
	    message.setText("Dear,"+temp.getEmail()+"your password is "+temp.getPsw());

	    Transport transport = session.getTransport("smtp");
	    transport.connect(host, port, username, password);

	    Transport.send(message);

	    System.out.println("寄送email結束.");

	   } catch (MessagingException e) {
	    throw new RuntimeException(e);
	   }

	}





}
