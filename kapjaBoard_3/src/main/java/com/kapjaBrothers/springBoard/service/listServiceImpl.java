package com.kapjaBrothers.springBoard.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.kapjaBrothers.springBoard.entity.listData;

public class listServiceImpl implements listService{

	@Override
	public List<listData> listView() {
		System.out.println("listServiceImpl -> listView");
		
		List<listData> list = new ArrayList<listData>();
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "KAPJA";
		String password = "1234";
		
		String sql = "SELECT * FROM KAPJA_BOARD2 ORDER BY BNO DESC";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			Connection conn = DriverManager.getConnection(url, user, password);
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				listData data = new listData();
				data.setBno(rs.getInt("bno"));
				data.setBtitle(rs.getString("btitle"));
				data.setBcontent(rs.getString("bcontent"));
				data.setBwriter(rs.getString("bwriter"));
				data.setBdate(rs.getDate("bdate"));
				data.setBhit(rs.getInt("bhit"));
				
				list.add(data);
				
				
			}
			
			rs.close();
			ps.close();
			conn.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
		
		
		
	}

	@Override
	public List<listData> listViewDetail(int bno) {
		System.out.println("listServiceImpl -> listViewDetail");
		
		List<listData> list = new ArrayList<listData>();
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "KAPJA";
		String password = "1234";
		
		String sql = "SELECT * FROM KAPJA_BOARD2 WHERE BNO = ?";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			Connection conn = DriverManager.getConnection(url, user, password);
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, bno);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				listData data = new listData();
				data.setBno(rs.getInt("bno"));
				data.setBtitle(rs.getString("btitle"));
				data.setBcontent(rs.getString("bcontent"));
				data.setBwriter(rs.getString("bwriter"));
				data.setBdate(rs.getDate("bdate"));
				data.setBhit(rs.getInt("bhit"));
				
				list.add(data);
			}
			
			rs.close();
			ps.close();
			conn.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return list;
	}

	@Override
	public void listViewEdit() {
		System.out.println("listServiceImpl -> listViewEdit");
		
		
		
	}

	@Override
	public void listViewUpdate(listData data) {
		System.out.println("listServiceImpl -> listViewUpdate");
		if (data.getBtitle().equals(null) || data.getBtitle().equals("")) {
			System.out.println("제목을 입력하세요");
			
		}
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "KAPJA";
		String password = "1234";
		String sql = "UPDATE KAPJA_BOARD2 SET BTITLE = ?, BCONTENT = ? WHERE BNO = ?";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			Connection conn = DriverManager.getConnection(url, user, password);
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, data.getBtitle());
			ps.setString(2, data.getBcontent());
			ps.setInt(3, data.getBno());
			
			int rs = ps.executeUpdate();
			
			ps.close();
			conn.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void listInsert(listData data) {
		System.out.println("listServiceImpl -> listInsert");
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "KAPJA";
		String password = "1234";
		String sql = "INSERT INTO KAPJA_BOARD2(BNO, BTITLE, BCONTENT, BWRITER, BDATE, BHIT) VALUES(BSEQ2.NEXTVAL, ?, ?, ?, SYSDATE, 0)";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			Connection conn = DriverManager.getConnection(url, user, password);
			PreparedStatement ps = conn.prepareStatement(sql);
			
			
			ps.setString(1, data.getBtitle());
			ps.setString(2, data.getBcontent());
			ps.setString(3, data.getBwriter());
		
			
			int rs = ps.executeUpdate();
			
			ps.close();
			conn.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public void listDelete(int bno) {
		System.out.println("listServiceImpl -> listDelete");
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "KAPJA";
		String password = "1234";
		String sql = "DELETE KAPJA_BOARD2 WHERE BNO = ?";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			Connection conn = DriverManager.getConnection(url, user, password);
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, bno);
			ps.executeUpdate();
			
			ps.close();
			conn.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
