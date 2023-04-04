package com.example.smartcity.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "LogoutServlet", value = "/logout")
public class LogoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //response.setContentType("text/html");
        //request.getRequestDispatcher("login.jsp").forward(request, response);

        response.setContentType("text/html");
        HttpSession session = request.getSession(false);
        if ( session != null ) {
            session.invalidate(); // invalido la sessione rendendo nulli tutti gli attributi presenti nella sessione
        }
        request.getRequestDispatcher("index.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}