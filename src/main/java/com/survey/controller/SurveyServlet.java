package com.survey.controller;

import java.io.*;
import com.survey.model.UserSurvey;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/survey")
public class SurveyServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Lấy dữ liệu từ form
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String dob = request.getParameter("dob");
        String heardFrom = request.getParameter("heardFrom");
        String contactVia = request.getParameter("contactVia");
        String wantsUpdates = request.getParameter("wantsUpdates") != null ? "Yes" : "No";
        String emailAnnouncements = request.getParameter("emailAnnouncements") != null ? "Yes" : "No";

     // Tạo object UserSurvey
        UserSurvey user = new UserSurvey(firstName, lastName, email, dob,
                                         heardFrom, contactVia,
                                         wantsUpdates, emailAnnouncements);

        // Gửi object sang JSP
        request.setAttribute("user", user);
        // Chuyển hướng sang trang cảm ơn
        RequestDispatcher dispatcher = request.getRequestDispatcher("thanks.jsp");
        dispatcher.forward(request, response);
    }
}
