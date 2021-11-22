package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class MemberDAO {
	public ArrayList<MemberObj> getList() throws NamingException, SQLException {

		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			String sql = "SELECT * FROM member";
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();

			ArrayList<MemberObj> members = new ArrayList<MemberObj>();

			while (rs.next()) {
				members.add(new MemberObj(rs.getString("cid"), rs.getString("cpassword"), rs.getString("cname"),
						rs.getString("cgender"), rs.getString("cbirth"), rs.getString("cemail"), rs.getString("cphone"),
						rs.getString("caddress"), rs.getString("cregiday")));
			}
			return members;

		} finally {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();

		}
	}

	public ArrayList<MemberObj> getMyList(String cid) throws NamingException, SQLException {

		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			String sql = "SELECT * FROM member WHERE cid =?";
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, cid);
			rs = stmt.executeQuery();

			ArrayList<MemberObj> members = new ArrayList<MemberObj>();

			while (rs.next()) {
				members.add(new MemberObj(rs.getString("cid"), rs.getString("cpassword"), rs.getString("cname"),
						rs.getString("cgender"), rs.getString("cbirth"), rs.getString("cemail"), rs.getString("cphone"),
						rs.getString("caddress"), rs.getString("cregiday")));
			}
			return members;

		} finally {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();

		}
	}

	public int login(String cid, String cpassword) throws NamingException, SQLException {

		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			String sql = "SELECT cid, cpassword FROM member WHERE cid = ?";
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, cid);
			rs = stmt.executeQuery();

			if (!rs.next())
				return 1;
			if (!cpassword.equals(rs.getNString("cpassword")))
				return 2;

			return 0;

		} finally {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();

		}
	}

	public int join(String id, String pw, String name, String gender, String birth, String email, String phone,
			String address) throws NamingException, SQLException {

		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			String sql = "INSERT INTO member VALUES (?,?,?,?,?,?,?,?,?)";
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, id);
			stmt.setString(2, pw);
			stmt.setString(3, name);
			stmt.setString(4, gender);
			stmt.setString(5, birth);
			stmt.setString(6, email);
			stmt.setString(7, phone);
			stmt.setString(8, address);
			stmt.setString(9, LocalDate.now().toString());

			int count = stmt.executeUpdate();
			return (count == 1) ? 1 : 2;

		} finally {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();

		}
	}

	public int delete(String cid) throws NamingException, SQLException {

		Connection conn = null;
		PreparedStatement stmt = null;

		try {
			String sql = "DELETE FROM member WHERE cid = ?";
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, cid);

			int count = stmt.executeUpdate();
			return (count == 1) ? 1 : 0;

		} finally {
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();

		}
	}
}