package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
			
			VolunteerBean [] list = VolunteerDAO.readCountry(year);	
			request.setAttribute("list", list);
			RequestDispatcher rd = request.getRequestDispatcher("list.jsp");
			rd.forward(request, response);
			
			return;
		}else if(command.equals("team")){
			String country = request.getParameter("country");
			String year = request.getParameter("year");
			
			TeamBean [] teamList = VolunteerDAO.readTeam(country, year);
			request.setAttribute("teamList", teamList);
			RequestDispatcher rd = request.getRequestDispatcher("team.jsp");
			rd.forward(request, response);
			
			return;
		}
	}
}