/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.model.bl.AgentFacadeLocal;
import za.ac.tut.model.entity.Agent;

/**
 *
 * @author Jacob
 */
public class DisplaySpecificGenderServlet extends HttpServlet {

    @EJB
    private AgentFacadeLocal afl;
    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        String gender = request.getParameter("gender");
        
        List<Agent> agents = afl.findOfGender(gender);
        
        request.setAttribute("agents", agents);
        
        RequestDispatcher dis = request.getRequestDispatcher("display_of_gender_outcome.jsp");
        dis.forward(request, response);
    }

    
    

}
