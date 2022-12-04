package com.customerservice;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/TicketDeleteServlet")
public class TicketDeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;


    public TicketDeleteServlet() {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");


        boolean isTrue;

        isTrue = TicketDBUtil.deleteTicket(id);

        if(isTrue == true) {
            RequestDispatcher dis = request.getRequestDispatcher("delete-successful.jsp");
            dis.forward(request, response);

        }else {
            RequestDispatcher dis = request.getRequestDispatcher("delete-unsuccessful.jsp");
            dis.forward(request, response);
        }
    }

}
