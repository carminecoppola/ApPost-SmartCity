package com.example.smartcity.controller;

import com.example.smartcity.model.*;

import com.example.smartcity.service.LogService;
import com.example.smartcity.service.ParkingService;
import com.example.smartcity.service.PrenotationService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UsersBean usersBean = LoginDao.getIstanza().getUserBean(email);

        AccessoLogin accessoLogin = LogService.logHandler(email,password);
        switch (accessoLogin) {
            case UTENTE_INESISTENTE:
                request.setAttribute("stato", "UTENTE_INESISTENTE");
                request.getRequestDispatcher("login.jsp").forward(request, response);
                break;
            case PASSWORD_ERRATA:
                request.setAttribute("stato", "PASSWORD_ERRATA");
                request.getRequestDispatcher("login.jsp").forward(request, response);
                break;
            case SUCCESSO:
                HttpSession vecchiaSession = request.getSession();

                if (vecchiaSession != null){
                    vecchiaSession.invalidate();
                }
                HttpSession newSession = request.getSession();
                newSession.setMaxInactiveInterval(10*60);

                newSession.setAttribute("usersBean",usersBean);
                newSession.setAttribute("isLog",1);
                request.setAttribute("loggato",1);

                request.setAttribute("stato", "SUCCESSO");
                request.setAttribute("usersBean", usersBean);
                request.getRequestDispatcher("userHomePage.jsp").forward(request, response);


                break;
            case SUCCESSO_ADMIN:
                HttpSession vecchiaSessionAd = request.getSession();

                if (vecchiaSessionAd != null){
                    vecchiaSessionAd.invalidate();
                }
                HttpSession newSessionAd = request.getSession();
                newSessionAd.setMaxInactiveInterval(10*60);

                newSessionAd.setAttribute("isLog",2);
                request.setAttribute("loggato",2);

                request.setAttribute("stato", "SUCCESSO");
                List<ParkingBean> list = ParkingService.getAllParkings();
                request.setAttribute("list", list);
                request.getRequestDispatcher("adminHomePage.jsp").forward(request, response);

                break;
            default:
                request.setAttribute("stato", "ERRORE");
                request.getRequestDispatcher("login.jsp").forward(request, response);
                break;
        }
    }
}