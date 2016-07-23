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
		String sql="SELECT COUNT(MEMBER.NUMBER), COUNTRY FROM MEMBER, TEAM WHERE MEMBER.TEAM_NUMBER = TEAM.NUMBER AND YEAR = ? GROUP BY COUNTRY";	
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
		String sql="SELECT DISTINCT NUMBER, NAME FROM TEAM WHERE COUNTRY = ? AND YEAR = ?";	
		try {
			con = source.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, country);
			pstmt.setString(2, year);
			rset = pstmt.executeQuery();
			
			while(rset.next()){
				alist.add(readTeamMember(rset.getInt(1), rset.getString(2), year));
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
	
	public static TeamBean readTeamMember(int teamNum, String team, String year){
		Connection con = null;	
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		VolunteerBean[] list  = null;
		ArrayList alist = new ArrayList();
		String sql="SELECT MEMBER.NUMBER, FIRSTNAME, LASTNAME, BIRTH , GENDER, UNIVERSITY, MAJORCLASS, MAJOR, EXPERTISE, EXPERIENCE, TEAM.NAME, COUNTRY, ORGANIZATION, ROLE, EMAIL, IMAGE, YEAR FROM MEMBER, TEAM WHERE MEMBER.TEAM_NUMBER = TEAM.NUMBER AND TEAM.NAME = ? AND YEAR = ?";	
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
		return new TeamBean(teamNum, team, list);
	}
	
	public static TeamBean readTeamMember(TeamBean bean){
		Connection con = null;	
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		VolunteerBean[] list  = null;
		ArrayList alist = new ArrayList();
		String sql="SELECT MEMBER.NUMBER, FIRSTNAME, LASTNAME, BIRTH , GENDER, UNIVERSITY, MAJORCLASS, MAJOR, EXPERTISE, EXPERIENCE, TEAM.NAME, COUNTRY, ORGANIZATION, ROLE, EMAIL, IMAGE, YEAR FROM MEMBER, TEAM WHERE MEMBER.TEAM_NUMBER = TEAM.NUMBER AND TEAM.NUMBER = ?";	
		try {
			con = source.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, bean.getTeamNum());
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
		bean.setVolunteer(list);
		return bean;
	}
	
	public static VolunteerBean readMember(int memberNum){
		Connection con = null;	
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		VolunteerBean volunteer  = null;
		String sql="SELECT MEMBER.NUMBER, FIRSTNAME, LASTNAME, BIRTH , GENDER, UNIVERSITY, MAJORCLASS, MAJOR, EXPERTISE, EXPERIENCE, TEAM.NAME, COUNTRY, ORGANIZATION, ROLE, EMAIL, IMAGE, YEAR FROM MEMBER, TEAM WHERE MEMBER.TEAM_NUMBER = TEAM.NUMBER AND MEMBER.NUMBER = ?";	
		try {
			con = source.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, memberNum);
			rset = pstmt.executeQuery();
			if (rset.next()) {
				volunteer = new VolunteerBean(rset.getInt(1), rset.getString(2), rset.getString(3), rset.getString(4), rset.getString(5), rset.getString(6), rset.getString(7), rset.getString(8), rset.getString(9),
						rset.getString(10), rset.getString(11), rset.getString(12), rset.getString(13), rset.getString(14), rset.getString(15), rset.getString(16), rset.getString(17));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(rset, pstmt, con);
		}
		return volunteer;
	}
	
	public static VolunteerBean[] searchMajor(String keyword){
		Connection con = null;	
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		VolunteerBean[] list  = null;
		ArrayList alist = new ArrayList();
		String sql="SELECT MEMBER.NUMBER, FIRSTNAME, LASTNAME, BIRTH , GENDER, UNIVERSITY, MAJORCLASS, MAJOR, EXPERTISE, EXPERIENCE, TEAM.NAME, COUNTRY, ORGANIZATION, ROLE, EMAIL, IMAGE, YEAR FROM MEMBER, TEAM WHERE MEMBER.TEAM_NUMBER = TEAM.NUMBER AND MAJOR LIKE CONCAT('%', ?, '%')";	
		try {
			con = source.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, keyword);
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
		return list;
	}
	
	public static TeamBean readTeamDetail(int teamNum){
		Connection con = null;	
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		TeamBean bean  = null;
		String sql="SELECT NUMBER, NAME, INTRODUCE, MOVIE FROM TEAM WHERE NUMBER = ?";	
		try {
			con = source.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, teamNum);
			rset = pstmt.executeQuery();
			if (rset.next()) {
				bean = new TeamBean(teamNum, rset.getString(2), rset.getString(3), rset.getString(4), null);
			}
			bean = readTeamMember(bean);

		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(rset, pstmt, con);
		}
		return bean;
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
