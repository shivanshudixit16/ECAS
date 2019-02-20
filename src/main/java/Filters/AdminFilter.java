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

/**
 * Servlet Filter implementation class AdminFilter
 */
public class AdminFilter implements Filter {
	private FilterConfig config;
	public void destroy() {
		// TODO Auto-generated method stub
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req=(HttpServletRequest)request;
		HttpServletResponse res=(HttpServletResponse)response;
		HttpSession session=req.getSession();
		//System.out.println("\n\nin  \n");
		ServletContext context=config.getServletContext();  
		
		if(session.getAttribute("ausername")==null)
		{    
			String user=request.getParameter("ausername");
			if(user==null)
			{ 
			  res.sendRedirect("index.jsp");
			  return;
			 
			}
			else {
			String pass=request.getParameter("apassword");
			if(user.equals("admin") && pass.equals("admin"))
			{
				session.setAttribute("ausername", user);
				chain.doFilter(req, res);
				return;
				
			}
			else
			{
				context.setAttribute("afmsg","Wrong Credentials");
				res.sendRedirect("admin_login.jsp");
				return;
			
				
			}
			
			}
		}
		else
		{
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
