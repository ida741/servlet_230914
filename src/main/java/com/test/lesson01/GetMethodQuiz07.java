package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz07")
public class GetMethodQuiz07 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
//		out.print(address);
		String card = request.getParameter("card");
//		out.print(card);
		String price = request.getParameter("price");
//		out.print(price);
		
		if (!address.startsWith("서울시")) {
			out.print("배달 불가 지역입니다");
		}
		else if (card.equals("신한카드")) {
			out.print("결제 불가 카드 입니다.");			
		}
		else {
			out.print("<html><head><title>주문 결과</title><body>");
			out.print(address + " <b>배달 준비 중</b><br>결제금액:" + price + "원");
			out.print("</body></html>");
		}
		
		
	}
	
}