package com.customerservice;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TicketSubmit")
public class TicketSubmit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String subject = request.getParameter("tsubject");
		String priority = request.getParameter("priority");
		String category = request.getParameter("category");
		String issue = request.getParameter("issue");
		
		boolean isTrue;
		
		isTrue = TicketDBUtil.insertticket(subject, priority, category, issue);
		
		if(isTrue == true) {
			RequestDispatcher dis1 = request.getRequestDispatcher("ticket-success.jsp");
			dis1.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("ticket-unsuccess.jsp");
			dis2.forward(request, response);
		}
	}
}
