package com.luv2code.login.jdbc;
import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * @email Ramesh Fadatare
 */

@WebServlet("/login.jsp")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private LoginDao loginDao;

    public void init() {
        loginDao = new LoginDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        LoginBean loginBean = new LoginBean();
        loginBean.setEmail(email);
        loginBean.setPass(pass);

        try {
            if (loginDao.validate(loginBean)) {
               // HttpSession session = request.getSession();
                // session.setAttribute("email",email);
               response.sendRedirect("loginsuccess.jsp");
            } else {
                HttpSession session = request.getSession();
               // session.setAttribute("pass", pass);
               response.sendRedirect("login.jsp");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}