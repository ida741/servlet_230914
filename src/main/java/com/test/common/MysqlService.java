package com.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	private static MysqlService mysqlService = null;
	
	// DB 주소 static final 해두는 것도 좋음
	// 도메인 뒤에 접속할 DB명까지 적는다
	// jdbc:mysql://localhost:(port number)/(테이블명)
	private static final String url = "jdbc:mysql://localhost:3307/test_230914";
	private static final String id = "root";
	private static final String password = "root";
	
	private Connection conn = null;
	// 임포트 할 때 java.sql.Statement
	private Statement statement = null;
	private ResultSet res = null;
	
	
	// Singleton pattern: MysqlServicec라는 객체가 단 하나만 생성되도록 하는 디자인 패턴
	// 	DB 연결을 여러 객체에서 하지 않도록 = connection 관리
	public static MysqlService getInstance() {
		if (mysqlService == null) { // null이면 new, 아니면 원래 있는 거로 return
			mysqlService = new MysqlService();
		}
		return mysqlService;
	}
	
	// DB 접속
	public void connect() {
		try {
			// 1. 드라이버 메모리에 로딩
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			// 2. DB Connection
			conn = DriverManager.getConnection(url, id, password);
			
			// 3. query 실행 준비 = statement
			statement = conn.createStatement();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// DB 연결 해제
	public void disconnect() {
		// connect와 순서가 반대
		try {
			statement.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// CUD
	public void update(String query) throws SQLException {
		statement.executeUpdate(query);
	}
	
	// R (CRUD에서 R만 따로)
	public ResultSet select(String query) throws SQLException {
		res = statement.executeQuery(query);
		return res;
	}
}
