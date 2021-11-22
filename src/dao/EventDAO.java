package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class EventDAO {

	public boolean insert(String title, String subTitle, String content, String filename)
			throws NamingException, SQLException {

		Connection conn = null;
		PreparedStatement stmt = null;

		try {
			conn = ConnectionPool.get();

			String sql = "INSERT INTO event(etitle, esubtitle, econtent, efilename, edate) VALUES(?,?,?,?,?)";

			stmt = conn.prepareStatement(sql);
			stmt.setString(1, title);
			stmt.setString(2, subTitle);
			stmt.setString(3, content);
			stmt.setString(4, filename);
			stmt.setString(5, LocalDate.now().toString());

			int count = stmt.executeUpdate();

			return (count == 1) ? true : false;
		} finally {
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
		}
	}

	public ArrayList<EventObj> getList() throws NamingException, SQLException {

		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			conn = ConnectionPool.get();

			String sql = "SELECT * FROM event";

			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();

			ArrayList<EventObj> events = new ArrayList<EventObj>();

			while (rs.next()) {
				events.add(new EventObj(rs.getString("eid"), rs.getString("etitle"), rs.getString("esubtitle"),
						rs.getString("econtent"), rs.getString("efilename"), rs.getString("edate")));
			}
			return events;

		} finally {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
		}
	}
	
	public EventObj getDetail(String eid) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try { 
			String sql = "SELECT * FROM event WHERE eid = ?";
			
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, eid);
			rs = stmt.executeQuery();
			
			rs.next();
			
			String id = rs.getString(1);
			String etitle = rs.getString(2);
			String esubtitle = rs.getString(3);
			String econtent = rs.getString(4);
			String efilename = rs.getString(5);
			String edate = rs.getString(6);
			
			EventObj event = new EventObj(id, etitle, esubtitle, econtent, efilename, edate);
			
			return event;
		}finally {
			if(rs != null) rs.close();
			if(stmt != null) stmt.close();
			if(conn != null) conn.close();
		}
	}
}