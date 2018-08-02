package Filters;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class AdminFilter
 */
public class TeacherFilter implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req=(HttpServletRequest)request;
		HttpServletResponse res=(HttpServletResponse)response;
		HttpSession session=req.getSession();
		//System.out.println("\n\nin  \n");
		if(session.getAttribute("tusername")==null)
		{    
			String user=request.getParameter("tusername");
			if(user==null)
			{ 
			  res.sendRedirect("index.jsp");
			}
			else {
			String pass=request.getParameter("tpassword");
			if(user.equals("teacher") && pass.equals("teacher"))
			{
				session.setAttribute("tusername", user);
				chain.doFilter(req, res);
			}
			else
			{
				res.sendRedirect("teacher_login.jsp");
			}
			
			}
		}
		else
		{
			chain.doFilter(req, res);
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
