package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

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
		
		try{
			con = source.getConnection();
			pstmt = con.prepareStatement("SELECT MEMBER.NUMBER, FIRSTNAME, LASTNAME FROM MEMBER WHERE EMAIL = ? AND PASSWORD = ?");
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			rset = pstmt.executeQuery();
			
			if (rset.next()) {
				return new VolunteerBean(rset.getInt(1), rset.getString(2), rset.getString(3));
			}
			
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			close(rset, pstmt, con);
		}
		return null;
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
