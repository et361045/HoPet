package controller.member;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import model.member.MemberBean;
import model.member.MemberService;
import model.pet.PetBean;
import model.pet.PetService;

@Controller
@SessionAttributes(value={"user","pet"})
public class PetController {
	@Autowired
	private PetService petService;

	@Autowired
	private ApplicationContext context;
	
	@RequestMapping(path= {"/insertpet"})
	public String method1( @RequestParam("file") MultipartFile[] files,Model model,PetBean bean) {
	System.out.println("bean = "+bean);
	System.out.println(files);
		    System.out.println("JOJO");
	        System.out.println(model.asMap().get("user"));
	       MemberBean temp  = (MemberBean) model.asMap().get("user");
	       bean.setMemberid(temp.getMemberId());
	       
	       if(files!=null) {
	       
	       //存放目錄
	        File uploadRootDir = new File("C:\\Users\\User\\git\\Hopet\\PetProject\\src\\main\\webapp\\assets\\picture\\pet");
	        //
	        // Create directory if it not exists.
	        if (!uploadRootDir.exists()) {
	            uploadRootDir.mkdirs();
	        }
	        //
	        List<File> uploadedFiles = new ArrayList<File>();
	        for (int i = 0; i < files.length; i++) {
	            MultipartFile file = files[i];
	 
	            // Client File Name
	            String filename = file.getOriginalFilename();
	            System.out.println("Client File Name = " + filename);
	            //照片名稱
	            String picturename="member"+temp.getMemberId()+"picture"+ filename.substring(filename.indexOf(".")); 		
	 
	            if (filename != null && filename.length() > 0) {
	                try {
	                    byte[] bytes = file.getBytes();
	 
	                    // Create the file on server
	                    File serverFile = new File(uploadRootDir.getAbsolutePath()
	                            + File.separator + filename);
	 
	                    // Stream to write data to file in server.
	                    BufferedOutputStream stream = new BufferedOutputStream(
	                            new FileOutputStream(serverFile));
	                    stream.write(bytes);
	                    stream.close();
	                    //
	                    uploadedFiles.add(serverFile);
	                    System.out.println("Write file: " + serverFile);
	                } catch (Exception e) {
	                    System.out.println("Error Write file: " + filename);
	                }
	            }
	        
	            bean.setPetPicture("/PetProject/assets/picture/pet/"+filename);
	        }
	          
	        }
	       System.out.println(bean);
           System.out.println(petService.insert(bean));
		
		return "member";
	  
}
	@ResponseBody
	@RequestMapping(value = {"*/checkpet","checkpet"},produces={"application/json; charset=UTF-8"})
	public 	 List<PetBean> method3(Model model) {
		System.out.println("hi enter check");
		MemberBean userBean =  (MemberBean) model.asMap().get("user");
	    List<PetBean>	result =petService.selectByMemberID(userBean.getMemberId());
		System.out.println(result);
		model.addAttribute("pet", result);
		return result;
	}
	
	
	@ResponseBody
	@RequestMapping(value = {"*/deletea","deletea"},produces={"application/json; charset=UTF-8"})
	public 	 List<PetBean> method4(Model model,@RequestParam("id") Integer id) {
		System.out.println("hi enter deletea");
		System.out.println("id="+id);
		MemberBean userBean =  (MemberBean) model.asMap().get("user");
	    List<PetBean>	result =petService.selectByMemberID(userBean.getMemberId());
		System.out.println(result);
		model.addAttribute("pet", result);
		return result;
	}
	
	
}
