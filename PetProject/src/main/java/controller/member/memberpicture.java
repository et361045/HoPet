package controller.member;
 
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;
 
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import model.member.MemberBean;
import model.member.MemberService;
 
@Controller
@SessionAttributes("user")
public class memberpicture {
 
	@Autowired
	private MemberService memberService;

	@Autowired
	private ApplicationContext context;
	
    @RequestMapping(value = "/memberpicture", method = RequestMethod.POST)
    public String uploadFileHandler(HttpServletRequest request, Model model,
            @RequestParam("file") MultipartFile[] files) {
        System.out.println("JOJO");
        System.out.println(model.asMap().get("user"));
        MemberBean temp  = (MemberBean) model.asMap().get("user");
        //存放目錄
        File uploadRootDir = new File("C:\\Users\\User\\git\\Hopet\\PetProject\\src\\main\\webapp\\assets\\picture\\member");
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
            String name = file.getOriginalFilename();
            System.out.println("Client File Name = " + name);
            //照片名稱
            String picturename="member"+temp.getMemberId()+"picture"+ name.substring(name.indexOf(".")); 		
 
            if (name != null && name.length() > 0) {
                try {
                    byte[] bytes = file.getBytes();
 
                    // Create the file on server
                    File serverFile = new File(uploadRootDir.getAbsolutePath()
                            + File.separator + name);
 
                    // Stream to write data to file in server.
                    BufferedOutputStream stream = new BufferedOutputStream(
                            new FileOutputStream(serverFile));
                    stream.write(bytes);
                    stream.close();
                    //
                    uploadedFiles.add(serverFile);
                    System.out.println("Write file: " + serverFile);
                } catch (Exception e) {
                    System.out.println("Error Write file: " + name);
                }
            }
            temp.setMemberPicture("/PetProject/assets/picture/member/"+name);
            memberService.update(temp);
            model.addAttribute("user", temp);
        }
      
      return "member";
   
    }
 
}