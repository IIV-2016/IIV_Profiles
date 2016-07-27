package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.dao.MemberDAO;
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
		String url = null;
		
		if(command == null){
			command = "login";
		}		
		
		if(command.equals("login")){
			String id = request.getParameter("id");
			String password = request.getParameter("password");
			
			try{
				VolunteerBean member = MemberDAO.checkMember(id, password);
				if(member != null){
					HttpSession session = request.getSession();
					session.setAttribute("member", member);
					session.setAttribute("memberNumber", member.getNumber());
					response.sendRedirect("volunteer.do");
					return;
				}else{
					response.sendRedirect("login.jsp");
				}
			}catch(Exception e){
				response.sendRedirect("login.jsp");
			}
			
		}else if(command.equals("logout")){			
			try{
				HttpSession session = request.getSession();
				session.removeAttribute("member");
				response.sendRedirect("volunteer.do");
			}catch(Exception e){
				response.sendRedirect("error.jsp");
			}
		}
	}
}
