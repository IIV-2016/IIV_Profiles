package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.NoteDAO;
import model.domain.NoteBean;

@SuppressWarnings("serial")
public class Note extends javax.servlet.http.HttpServlet {

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
		
		if(command.equals("create")){
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			NoteDAO.create(new NoteBean(title, content));
			response.sendRedirect("index.jsp");
		}else if(command.equals("read")){
			NoteBean [] list = NoteDAO.readAllNote();			
			request.setAttribute("list", list);
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
			return;
		}else if(command.equals("update")){
			boolean result = NoteDAO.update();
			if(result){
				response.sendRedirect("note.do");
				return;
			}else{
				response.sendRedirect("error.jsp");
				return;
			}
		}
		else if(command.equals("delete")){
			int num = Integer.parseInt(request.getParameter("num"));
			boolean result = NoteDAO.delete(num);
			if(result){
				response.sendRedirect("note.do");
				return;
			}else{
				response.sendRedirect("error.jsp");
				return;
			}
		}
	}
}