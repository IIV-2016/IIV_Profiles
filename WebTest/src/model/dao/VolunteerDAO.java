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

import controller.Volunteer;
import model.domain.NoteBean;
import model.domain.TeamBean;
import model.domain.VolunteerBean;

public class VolunteerDAO{

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
	
	public static VolunteerBean[] readCountry(String year){
		Connection con = null;	
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		VolunteerBean[] list  = null;
		ArrayList alist = new ArrayList();
		String sql="SELECT COUNT(MEMBER_NUM), COUNTRY FROM member WHERE YEAR = ? GROUP BY COUNTRY";	
		try {
			con = source.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, year);
			rset = pstmt.executeQuery();
			
			while(rset.next()){
				alist.add(new VolunteerBean(rset.getInt(1), rset.getString(2)));
			}
			
			list = new VolunteerBean[alist.size()];
			alist.toArray(list);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(rset, pstmt, con);
		}
		return list;
	}
	
	public static TeamBean[] readTeam(String country, String year){
		Connection con = null;	
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		TeamBean[] list  = null;
		ArrayList alist = new ArrayList();
		String sql="SELECT TEAM FROM member WHERE COUNTRY = ? AND YEAR = ?";	
		try {
			con = source.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, country);
			pstmt.setString(2, year);
			rset = pstmt.executeQuery();
			
			while(rset.next()){
				alist.add(readTeamMember(rset.getString(1), year));
			}
			
			list = new TeamBean[alist.size()];
			alist.toArray(list);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(rset, pstmt, con);
		}
		return list;
	}
	
	public static TeamBean readTeamMember(String team, String year){
		Connection con = null;	
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		VolunteerBean[] list  = null;
		ArrayList alist = new ArrayList();
		String sql="SELECT * FROM member WHERE TEAM = ? AND YEAR = ?";	
		try {
			con = source.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, team);
			pstmt.setString(2, year);
			rset = pstmt.executeQuery();

			while(rset.next()){
				alist.add(new VolunteerBean(rset.getInt(1), rset.getString(2), rset.getString(3), rset.getString(4), rset.getString(5), rset.getString(6), rset.getString(7), rset.getString(8), rset.getString(9),
						rset.getString(10), rset.getString(11), rset.getString(12), rset.getString(13), rset.getString(14), rset.getString(15), rset.getString(16), rset.getString(17)));
			}
			
			list = new VolunteerBean[alist.size()];
			alist.toArray(list);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(rset, pstmt, con);
		}
		return new TeamBean(team, list);
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
