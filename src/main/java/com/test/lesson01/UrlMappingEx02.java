package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex02")
public class UrlMappingEx02 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
//		out.println("<h1>h1</h1>");
		
		// Servlet = java + html (분리가 되지 않는 건 좋지 않음)
		// 1 ~ 10 합계
		int sum = 0;
		for (int i = 1; i <= 10; i++) {
			sum += i;
		}
		
		// 합계: <b>결과값</b>
		out.println("<html><head><title>합계</title></head><body>");
		out.print("합계: <b>" + sum + "</b>");
		out.println("</body></html>");
	}
	
}
