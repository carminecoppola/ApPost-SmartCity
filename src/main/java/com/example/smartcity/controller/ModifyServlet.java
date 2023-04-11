package com.example.smartcity.controller;

import com.example.smartcity.model.ParkingBean;
import com.example.smartcity.model.UsersBean;
import com.example.smartcity.service.ModifyService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ModifyServlet", value = "/ModifyServlet")
public class ModifyServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");

        String nome = request.getParameter("nomeparking");
        String indirizzo = request.getParameter("indirizzo");
        String tariffaAF = request.getParameter("tariffaAF");
        String tariffaM = request.getParameter("tariffaM");
        String postiAuto = request.getParameter("postiAuto");
        String postiFurgone = request.getParameter("postiFurgone");
        String postiMoto = request.getParameter("postiMoto");

        ModifyService.modifyIndirizzo(nome, indirizzo);
        ModifyService.modifyTariffaAF(nome, Double.parseDouble(tariffaAF));
        ModifyService.modifyTariffaM(nome, Double.parseDouble(tariffaM));
        ModifyService.modifyPostiAuto(nome, Integer.parseInt(postiAuto));
        ModifyService.modifyPostiFurgone(nome, Integer.parseInt(postiFurgone));
        ModifyService.modifyPostiMoto(nome, Integer.parseInt(postiMoto));

        request.getRequestDispatcher("modify.jsp").forward(request, response);

    }
}