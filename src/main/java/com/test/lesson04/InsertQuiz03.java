package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz03_insert")
public class InsertQuiz03 extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// request get parameters: nickname title price description imgurl
		int sellerId = Integer.valueOf(request.getParameter("sellerId"));
		String title = request.getParameter("title");
		String price = request.getParameter("price");
		String description = request.getParameter("description");
		String productImgUrl = request.getParameter("productImgUrl");
		
		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// DB insert
		String query = "";
		
		if (productImgUrl == null) {
			query = "insert into `used_goods` "
					+ "(`sellerId`, `title`, `price`, `description`) "
					+ "values "
					+ "('" + sellerId + "', '" + title + "', '" + price + "', '" 
					+ description + "');";
		}
		else {
			query = "insert into `used_goods` "
					+ "(`sellerId`, `title`, `price`, `description`, `productImgUrl`) "
					+ "values "
					+ "('" + sellerId + "', '" + title + "', '" + price + "', '" 
					+ description + "', '" + productImgUrl + "');";
		}
		try {
			ms.update(query);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB disconnect
		ms.disconnect();
		
		// redirect to upload_layout
		response.sendRedirect("/lesson04/quiz03/list_layout.jsp");
	}
	
}
