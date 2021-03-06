package controller;
import security.SecurityUtil;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.dao.MemberDAO;
import model.dao.VolunteerDAO;
import model.domain.VolunteerBean; 

@SuppressWarnings("serial")
public class Login extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		process(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		process(request, response);
	}
	
	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("euc-kr");
		String command = request.getParameter("command");
		
		if(command == null){
			command = "login";
		}		
		
		if(command.equals("login")){
			SecurityUtil securityUtil = new SecurityUtil();
			PrintWriter out = response.getWriter();
			
			String id = request.getParameter("id");
			String password = request.getParameter("password");
			
			String encryptedPassword = securityUtil.encryptSHA256(password);  
			
			try{
				VolunteerBean member = MemberDAO.checkMember(id, encryptedPassword);
				if(member != null){
					HttpSession session = request.getSession();
					session.setAttribute("member", member);
					session.setAttribute("memberNumber", member.getNumber());
					
					if(!member.getPasswordRenew()){
						response.sendRedirect("setting.jsp");
					}else{
						response.sendRedirect("volunteer.do");
					}
				}else{
					out.println("<script type=\"text/javascript\">");
					out.println("alert('User or password incorrect');");
					out.println("location='login.jsp';");
					out.println("</script>");
				}
			}catch(Exception e){
				response.sendRedirect("error.jsp");
			}
			
		}else if(command.equals("logout")){			
			try{
				HttpSession session = request.getSession();
				session.removeAttribute("member");
				response.sendRedirect("volunteer.do");
			}catch(Exception e){
				response.sendRedirect("error.jsp");
			}
		}else if(command.equals("checkCurrentPassword")){
			SecurityUtil securityUtil = new SecurityUtil();
			PrintWriter out = response.getWriter();
			String currentPassword = request.getParameter("currentPassword");
			try{
				HttpSession session = request.getSession();
				int memberNumber = (int)session.getAttribute("memberNumber");
				String password = MemberDAO.checkPassword(memberNumber);
				String encryptedPassword = securityUtil.encryptSHA256(currentPassword);
				if(encryptedPassword.equals(password)){
					out.println("true");
				}else{
					out.println("false");
				}
			}catch(Exception e){
				response.sendRedirect("error.jsp");
			}
		}
	}
}