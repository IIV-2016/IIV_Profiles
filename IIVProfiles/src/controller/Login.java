package controller;
import security.SecurityUtil;

import java.io.IOException;

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
					response.sendRedirect("error.jsp");
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
		}else if(command.equals("updatePassword")){
			SecurityUtil securityUtil = new SecurityUtil();
			HttpSession session = request.getSession();
			int memberNumber = (int)session.getAttribute("memberNumber");
			String password = request.getParameter("password");
			String encryptedPassword = securityUtil.encryptSHA256(password);  
			boolean result = MemberDAO.updatePassword(memberNumber, encryptedPassword);
			
			if(result){
				response.sendRedirect("volunteer.do");
				return;
			}else{
				response.sendRedirect("error.jsp");
				return;
			}
		}
	}
}
