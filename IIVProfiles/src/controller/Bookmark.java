package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;

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
public class Bookmark extends HttpServlet {

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
			//command = "login";
		}		
		
		if(command.equals("registration")){
			String likedMemberNumber = request.getParameter("likedMemberNumber");
			String memberNumber = request.getParameter("memberNumber");
			
			try{
				VolunteerBean member = MemberDAO.addLikedMember(likedMemberNumber, memberNumber);
				if(member != null){
					HttpSession session = request.getSession();
					session.setAttribute("likedMember", member);
					session.setAttribute("memberNumber", member.getNumber());
					response.sendRedirect("volunteer.do");
					return;
				}else{
					response.sendRedirect("member.jsp");
				}
			}catch(Exception e){
				response.sendRedirect("member.jsp");
			}
		}else if(command.equals("loadBookmark")){
			int memberNumber = Integer.parseInt(request.getParameter("memberNumber"));
			
			VolunteerBean[] volunteer = VolunteerDAO.readLikedMember(memberNumber);	
			ArrayList<String> tempList = new ArrayList<String>();
			ArrayList<String> searchCountryList;
			
			for(int i = 0; i < volunteer.length ; i++){
				tempList.add(volunteer[i].getTeam().getCountry());
			}
			searchCountryList = new ArrayList<String>(new HashSet<String>(tempList));
			
			request.setAttribute("list", volunteer);
			request.setAttribute("searchCountryList", searchCountryList);
			RequestDispatcher rd = request.getRequestDispatcher("bookmarkList.jsp");
			rd.forward(request, response);
			
			return;
		}else if(command.equals("cancel")){
			String likedMemberNumber = request.getParameter("likedMemberNumber");
			String memberNumber = request.getParameter("memberNumber");
			
			try{
				VolunteerBean member = MemberDAO.addLikedMember(likedMemberNumber, memberNumber);
				if(member != null){
					HttpSession session = request.getSession();
					session.setAttribute("likedMember", member);
					session.setAttribute("memberNumber", member.getNumber());
					response.sendRedirect("volunteer.do");
					return;
				}else{
					response.sendRedirect("member.jsp");
				}
			}catch(Exception e){
				response.sendRedirect("member.jsp");
			}
		}
	}
}