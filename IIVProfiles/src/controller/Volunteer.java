package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.dao.MemberDAO;
import model.dao.VolunteerDAO;
import model.domain.TeamBean;
import model.domain.VolunteerBean;

@SuppressWarnings("serial")
public class Volunteer extends javax.servlet.http.HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		process(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		process(request, response);
	}

	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("euc-kr");
		String command=request.getParameter("command");
		
		if(command == null){
			command = "read";
		}		

		if(command.equals("read")){
			String year = request.getParameter("year");
			if(year == null){
				year = "2016";
			}
			
			TeamBean [] list = VolunteerDAO.readCountry(year);	
			request.setAttribute("list", list);
			RequestDispatcher rd = request.getRequestDispatcher("list.jsp");
			rd.forward(request, response);
			
			return;
		}else if(command.equals("team")){
			String country = request.getParameter("country");
			String year = request.getParameter("year");
			
			TeamBean [] teamList = VolunteerDAO.readTeam(country, year);
			request.setAttribute("teamList", teamList);
			request.setAttribute("country", country);
			RequestDispatcher rd = request.getRequestDispatcher("team.jsp");
			rd.forward(request, response);
			
			return;
		}else if(command.equals("member")){
			HttpSession session = request.getSession();
			int memberNumber = Integer.parseInt(request.getParameter("memberNumber"));
			boolean checkBookmark = false;
			VolunteerBean volunteer = VolunteerDAO.readMember(memberNumber);
			VolunteerBean member = (VolunteerBean)session.getAttribute("member");
			if(member != null){
				checkBookmark = MemberDAO.checkLikedMember(memberNumber, member.getNumber());
			}
			request.setAttribute("volunteer", volunteer);
			request.setAttribute("checkBookmark", checkBookmark);
			RequestDispatcher rd = request.getRequestDispatcher("member.jsp");
			rd.forward(request, response);
			
			return;
		}else if(command.equals("search")){
			HttpSession session = request.getSession();
			String field = request.getParameter("field");
			String keyword = request.getParameter("keyword");
			VolunteerBean[] volunteer = VolunteerDAO.searchKeyword(field, keyword);
			ArrayList<String> tempList = new ArrayList<String>();
			ArrayList<String> searchCountryList;
			for(int i = 0; i <volunteer.length ; i++){
				tempList.add(volunteer[i].getTeam().getCountry());
			}
			searchCountryList = new ArrayList<String>(new HashSet<String>(tempList));	
			request.setAttribute("list", volunteer);
			request.setAttribute("searchCountryList", searchCountryList);
			request.setAttribute("check", "result");
			request.setAttribute("field", field);
			RequestDispatcher rd = request.getRequestDispatcher("search.jsp");
			rd.forward(request, response);
			
			return;
		}else if(command.equals("teamDetail")){
			int teamNumber = Integer.parseInt(request.getParameter("teamNumber"));
			TeamBean team = VolunteerDAO.readTeamDetail(teamNumber);
			request.setAttribute("team", team);
			RequestDispatcher rd = request.getRequestDispatcher("teamDetail.jsp");
			rd.forward(request, response);
			
			return;
		}else if(command.equals("searchPage")){
			request.setAttribute("check", "page");
			RequestDispatcher rd = request.getRequestDispatcher("search.jsp");
			rd.forward(request, response);
			
			return;
		}else if(command.equals("updateForm")){
			int memberNumber = Integer.parseInt(request.getParameter("memberNumber"));
			VolunteerBean volunteer = VolunteerDAO.readMember(memberNumber);
			request.setAttribute("volunteer", volunteer);
			RequestDispatcher rd = request.getRequestDispatcher("updateForm.jsp");
			rd.forward(request, response);
			
			return;
		}else if(command.equals("update")){
			int memberNumber = Integer.parseInt(request.getParameter("memberNumber"));
			String expertise = request.getParameter("expertise");
			String experience = request.getParameter("experience");
			Boolean result = VolunteerDAO.updateMemberSkill(memberNumber, expertise, experience);
			
			if(result){
				response.sendRedirect("volunteer.do?command=mypage");
				return;
			}else{
				response.sendRedirect("error.jsp");
				return;
			}
		}else if(command.equals("mypage")){
			HttpSession session = request.getSession();
			VolunteerBean volunteer = VolunteerDAO.readMember((int)session.getAttribute("memberNumber"));
			request.setAttribute("volunteer", volunteer);
			RequestDispatcher rd = request.getRequestDispatcher("mypage.jsp");
			rd.forward(request, response);
			
			return;
		}else if(command.equals("updateTeamDetailForm")){
			int teamNumber = Integer.parseInt(request.getParameter("teamNumber"));
			TeamBean team = VolunteerDAO.readTeamByNumber(teamNumber);
			request.setAttribute("team", team);
			RequestDispatcher rd = request.getRequestDispatcher("updateTeamDetail.jsp");
			rd.forward(request, response);
			
			return;
		}else if(command.equals("updateTeamDetail")){
			int teamNumber = Integer.parseInt(request.getParameter("teamNumber"));
			String introduce = request.getParameter("introduce");
			Boolean result = VolunteerDAO.updateTeamDetail(teamNumber, introduce);
			
			if(result){
				response.sendRedirect("volunteer.do?command=teamDetail&teamNumber=" + teamNumber);
				return;
			}else{
				response.sendRedirect("error.jsp");
				return;
			}
		}
	}
}