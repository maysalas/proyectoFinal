package app.controller;

import app.datasim.DAO;
import app.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Login")
public class Login extends HttpServlet {
    User usuario1 = new User();
    DAO DataSource = new DAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        usuario1.setPassword("pass");
        usuario1.setNombre("Juan");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Login Servlet</title>");
            out.println("<link rel='stylesheet' href='style.css'/>");
            out.println("</head>");
            out.println("<body>");
            if (request.getParameter("uname").equals(usuario1.getNombre()) && request.getParameter("passwd").equals(usuario1.getPassword())) {
                response.sendRedirect("Biblioteca");
            } else {
                out.println("<h1>nel mi compa!</h1>");
            }
            //alternativa usando el DataAccessObject
            /*if (request.getParameter("uname").equals(DataSource.getUser()) && request.getParameter("passwd").equals(DataSource.getPassword())){
                response.sendRedirect("Biblioteca");
            }else {
                out.println("<h1>nel mi compa!</h1>");
            }*/
            out.println("</body>");
            out.println("</html>");
        }catch (Exception e){
            throw e;
        }finally {
            out.close();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
