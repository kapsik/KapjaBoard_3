package com.kapjaBrothers.springBoard.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.kapjaBrothers.springBoard.entity.membersData;

public class memberServiceImpl implements memberService{

	@Override
	public int idCheck(String userId) {
		System.out.println("memberServiceImpl -> idCheck");
		System.out.println(userId);
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "KAPJA";
		String password = "1234";
		String sql = "SELECT ID FROM KAPJA_MEMBERS WHERE ID = ?";
		int idCheckResult = 0;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			Connection conn = DriverManager.getConnection(url, user, password);
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, userId);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				System.out.println("아이디가 등록되어있습니다.");
				idCheckResult = 1;
			}else {
				System.out.println("아이디가 등록가능합니다.");
				idCheckResult = 0;
			}
			
			
			
			rs.close();
			ps.close();
			conn.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		System.out.println("idCheckResult = "+idCheckResult);
		return idCheckResult;
	}

	@Override
	public void passwordCheck(String pw) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void emailCheck(String email) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void memberRegister(membersData mData) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void memberDelete(String id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void memberEdit(String id) {
		// TODO Auto-generated method stub
		
	}

}
