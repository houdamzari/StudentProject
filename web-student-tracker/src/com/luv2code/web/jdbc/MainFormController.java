package com.luv2code.web.jdbc;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MainFormController
 */
@WebServlet("/Register")
public class MainFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private StuudentDbUtill stuudentDbUtill;

	    public void init() {
	    	stuudentDbUtill = new StuudentDbUtill();
	    }
    /**
     * Default constructor. 
     */
    public MainFormController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/list-students.jsp");
				dispatcher.forward(request, response);	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String codedapogee = request.getParameter("codedapogee");
        String nomcomplet = request.getParameter("nomcomplet");
        String cin = request.getParameter("cin");
        String emailaddress = request.getParameter("emailaddress");

        //Stuudent stuudent = new Stuudent();
        Stuudent stuudent = new Stuudent(codedapogee, nomcomplet, cin, emailaddress);
        stuudent.setCodedapogee(codedapogee);
        stuudent.setNomcomplet(nomcomplet);
        stuudent.setCin(cin);
        stuudent.setEmailaddress(emailaddress);
        
        
        
        try {
        	
			stuudentDbUtill.registerStudent(stuudent);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/infos.jsp");
				dispatcher.forward(request, response);
	}
	
	
}











