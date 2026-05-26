/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
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
public class RegisterAgentServlet extends HttpServlet {

    
   @EJB
   private AgentFacadeLocal afl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            Long id = Long.valueOf(request.getParameter("id"));
            String name = request.getParameter("name");
            Integer age = Integer.valueOf(request.getParameter("age"));
            String gender = request.getParameter("gender");
            String dateStr = request.getParameter("dob");
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date dob = sdf.parse(dateStr);
            String maritalStatus = request.getParameter("marrital");
            
            Agent agent = createAgent(id, name,age,gender,dob,maritalStatus,new Date());
            afl.create(agent);
            
            RequestDispatcher dis = request.getRequestDispatcher("register_outcome.jsp");
            dis.forward(request, response);
            
            
        } catch (ParseException ex) {
            String mes = ex.getMessage();
            
            
        }
        
    }
    
    public Agent createAgent(Long id, String name, Integer age,String gender, Date dob,String maritalStatus, Date creationDate){
        
        Agent agent = new Agent();
        
        agent.setId(id);
        agent.setName(name);
        agent.setGender(gender);
        agent.setAge(age);
        agent.setMarrital(maritalStatus);
        agent.setDob(dob);
        agent.setCreationDate(creationDate);
        
        return agent;
    } 

    
    

}
