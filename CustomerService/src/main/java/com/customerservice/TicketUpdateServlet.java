package com.customerservice;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TicketUpdateServlet")
public class TicketUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TicketUpdateServlet() {
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
	    String id = request.getParameter("id");
	    String issue  = request.getParameter("issue");
	    
	    boolean isTrue;
	    
	    isTrue = TicketDBUtil.updateTicket(id, issue);
	    
	    if(isTrue == true) {
	        RequestDispatcher dis = request.getRequestDispatcher("update-success.jsp");
	        dis.forward(request, response);
	        
	    }else {
	        RequestDispatcher dis = request.getRequestDispatcher("update-unsuccess.jsp");
            dis.forward(request, response);
	    }
	    
	}

};
