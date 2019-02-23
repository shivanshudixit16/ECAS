package Filters;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.DatabaseConnection;


public class StudentFilter implements Filter {
	private FilterConfig config;
	public void destroy() {
		// TODO Auto-generated method stub
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req=(HttpServletRequest)request;
		HttpServletResponse res=(HttpServletResponse)response;
		//String url = ((HttpServletRequest)request).getRequestURL().toString();
		HttpSession session=req.getSession();
		//System.out.println("\n\nin  \n");
		ServletContext context=config.getServletContext(); 
		if(session.getAttribute("susername")==null)
		{    
			String user=request.getParameter("susername");
			if(user==null)
			{ 
				
				//context.setAttribute("link",url);
			  res.sendRedirect("student_login.jsp");
			  
			  return;
			 
			}
			else {
			String pass=request.getParameter("spassword");
			DatabaseConnection dc = new DatabaseConnection();
			String dpass=dc.getStudentPass(user);
			if(dpass==null)
			{
				//context.setAttribute("link",url);
				context.setAttribute("sfmsg","User name Does not Exsists");
				res.sendRedirect("student_login.jsp");
				return;
			}
			if(pass.equals(dpass))
			{
				session.setAttribute("susername", user);
				chain.doFilter(req, res);
				 return;
				
			}
			else
			{
				//context.setAttribute("link",url);
				context.setAttribute("sfmsg","Wrong Credentials");
				res.sendRedirect("student_login.jsp");
				 return;
				
			}
			
			}
		}
		else
		{
			System.out.print("in");
			chain.doFilter(req, res);
			 return;
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		this.config=fConfig;
	}

}
