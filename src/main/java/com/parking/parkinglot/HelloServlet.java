package com.parking.parkinglot;

import java.io.*;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;
    private String message2;

    public void init() {

        message = "Hello Darius!";
        message2 = " Cea mai buna aplicatie!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + message2 + "</h1>");
        out.println("</body></html>");
    }

    public void destroy() {
    }
}