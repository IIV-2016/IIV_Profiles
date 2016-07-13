package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import model.domain.NoteBean;

public class NoteDAO{

	static DataSource source = null;
	
	static{		 
		try {
			Context initContext = new InitialContext();		
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			source = (DataSource)envContext.lookup("jdbc/mysql");
		} catch (NamingException e) {			
			e.printStackTrace();
		}	
	}
		
	public static boolean create(NoteBean vo){
		Connection con = null;	
		PreparedStatement pstmt = null;
		boolean result = false;
		String sql = "INSERT INTO NOTE (TITLE, CONTENT) VALUES(?, ?)";

		try {
			con = source.getConnection();
			pstmt = con.prepareStatement(sql);
	        pstmt.setString(1,vo.getTitle());
	        pstmt.setString(2, vo.getContent());
			int count = pstmt.executeUpdate();
			
			if(count != 0){
				result = true;
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(pstmt, con);
		}
		return result;
	}
	
	public static NoteBean[] readAllNote(){
		Connection con = null;	
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		NoteBean[] list  = null;
		ArrayList alist = new ArrayList();
		String sql="SELECT * FROM NOTE";	
		
		try {
			con = source.getConnection();
			pstmt = con.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()){
				alist.add(new NoteBean(rset.getInt(1), rset.getString(2), rset.getString(3)));
			}
			
			list = new NoteBean[alist.size()];
			alist.toArray(list);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(rset, pstmt, con);
		}
		return list;
	}
	
	public static boolean update(){
		Connection con = null;	
		PreparedStatement pstmt = null;
		boolean result = false;
		String sql = "UPDATE NOTE SET TITLE = 1 WHERE NOTE_NUM = 1";
		
		try{
			con = source.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.executeUpdate();
			int count = pstmt.executeUpdate();
		
			if(count != 0){
				result = true;
			}
			
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			close(pstmt, con);
		}
		return result;
	}
	
	public static boolean delete(int num){
		Connection con = null;	
		PreparedStatement pstmt = null;
		boolean result = false;
		String sql = "DELETE FROM NOTE WHERE NOTE_NUM = ?";
		
		try{
			con = source.getConnection();
			pstmt = con.prepareStatement(sql);
	        pstmt.setInt(1,num);
			int count = pstmt.executeUpdate();
			
			if(count != 0){
				result = true;
			}
			
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			close(pstmt, con);
		}
		return result;
	}
	
	public static void close(Statement stmt, Connection con){
		try{
			if(stmt != null){
				stmt.close();
				stmt = null;
			}
			
			if(con != null){
				con.close();
				con = null;
			}
			
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet rset, Statement stmt, Connection con){
		try{
			if(rset != null){
				rset.close();			
			}
			
			if(stmt != null){
				stmt.close();				
			}
			
			if(con != null){
				con.close();				
			}
			
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
}
