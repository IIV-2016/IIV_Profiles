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

public class MemberDAO{

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
	
	public static VolunteerBean checkMember(String id, String password){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		VolunteerBean volunteer = null;
		
		try{
			con = source.getConnection();
			pstmt = con.prepareStatement("SELECT MEMBER.NUMBER, FIRSTNAME, LASTNAME, PASSWORD_RENEW FROM MEMBER WHERE EMAIL = ? AND PASSWORD = ?");
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			rset = pstmt.executeQuery();
			
			if (rset.next()) {
				volunteer =  new VolunteerBean(rset.getInt(1), rset.getString(2), rset.getString(3), rset.getBoolean(4));
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			close(rset, pstmt, con);
		}
		return volunteer;
	}
	
	public static boolean updatePassword(int memberNumber, String password){
		Connection con = null;	
		PreparedStatement pstmt = null;
		boolean result = false;
		String sql = "UPDATE MEMBER SET PASSWORD = ?, PASSWORD_RENEW = ? WHERE NUMBER = ?";
		
		try{
			con = source.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, password);
		    pstmt.setBoolean(2, true);
		    pstmt.setInt(3, memberNumber);
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
	
	public static boolean checkLikedMember(int likedMemberNumber, int memberNumber){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		boolean result = false;

		try{
			con = source.getConnection();
			pstmt = con.prepareStatement("SELECT COUNT(LIKE_MEMBER_NUMBER) FROM BOOKMARK WHERE MEMBER_NUMBER = ? AND LIKE_MEMBER_NUMBER = ?");
			pstmt.setInt(1, memberNumber);
			pstmt.setInt(2, likedMemberNumber);
			rset = pstmt.executeQuery();
			
			if (rset.next()){
				if (rset.getInt(1) == 0) {
					result = false;
				} else {
					result = true;
				}	
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			close(rset, pstmt, con);
		}
		return result;
	}
	
	public static boolean addLikedMember(int likedMemberNumber, int memberNumber){
		Connection con = null;	
		PreparedStatement pstmt = null;
		boolean result = false;
		String sql = "INSERT INTO BOOKMARK(LIKE_MEMBER_NUMBER, MEMBER_NUMBER) VALUES(? , ?)";

		try {
			con = source.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, likedMemberNumber);
			pstmt.setInt(2, memberNumber);
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
	
	public static boolean deleteLikedMember(int likedMemberNumber, int memberNumber){
		Connection con = null;	
		PreparedStatement pstmt = null;
		boolean result = false;
		String sql = "DELETE FROM BOOKMARK WHERE LIKE_MEMBER_NUMBER = ? AND MEMBER_NUMBER = ?";
		
		try{
			con = source.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, likedMemberNumber);
			pstmt.setInt(2, memberNumber);
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