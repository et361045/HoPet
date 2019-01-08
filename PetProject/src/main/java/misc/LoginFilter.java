package misc;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.member.MemberBean;



@WebFilter("/member/*")
public class LoginFilter implements Filter {
	private FilterConfig filterConfig;

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.filterConfig = filterConfig;
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;

		System.out.println("Login pre-processing");
		HttpSession temp = request.getSession();
		MemberBean  bean =  (MemberBean) temp.getAttribute("user");
		
		if (bean == null) {
			
		   
		   
			
			 response.setContentType("text/html;charset=UTF-8");
			 PrintWriter out = response.getWriter();
		     out.print("<script>alert('請先登入' )   </script>"+
		    		" <script>"
		    		 + "document.location.href='/PetProject/index.jsp';"
		    		 + "</script>"
		    		 + "<script> "
		    		 + "document.addEventListener('DOMContentLoaded', function () {"
		    		 + "var evt = document.createEvent('MouseEvents');"
		    		 + "evt.initEvent('click', true, true);"
		    		 + "document.getElementById(Login).dispatchEvent(evt);"
		    		 +"})"
		    		 + "</script>");
//		     response.sendRedirect("/PetProject/index.jsp");
		    
		     chain.doFilter(request, response);
		     
		     
		  
		    
		
		
		} else {
			
			chain.doFilter(request, response);
			
		}
//		if(不滿意pre-processing的結果) {
//			request.getRequestDispatcher("").forward(request, response);
//			return;
//		}

//		if(不滿意post-processing的結果) {
//			request.getRequestDispatcher("").forward(request, response);
//			return;
//		}
	}

	@Override
	public void destroy() {

	}
}
