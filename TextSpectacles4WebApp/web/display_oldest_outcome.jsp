<%-- 
    Document   : display_oldest_outcome
    Created on : 24 May 2026, 6:49:02 PM
    Author     : Jacob
--%>

<%@page import="java.util.Date"%>
<%@page import="za.ac.tut.model.entity.Agent"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Oldest Outcome Page</title>
    </head>
    <body>
        <h1>Display Oldest Outcome</h1>
        
        <%
            Agent agent = (Agent)request.getAttribute("agent");
            String name = agent.getName();
            String gender = agent.getGender();
            Long id = agent.getId();
            Integer age = agent.getAge();
            Date dob = agent.getDob();
            String marital = agent.getMarrital();
            Date creationDate = agent.getCreationDate();
        %>
        
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Gender</th>
                <th>Age</th>
                <th>Date of Birth</th>
                <th>Marital Status</th> 
                <th>Creation Date</th>
            </tr>
            <tr>
                <td><%=id%></td>
                <td><%=name%></td>
                <td><%=gender%></td>
                <td><%=age%></td>
                <td><%=dob%></td>
                <td><%=marital%></td>
                <td><%=creationDate%></td>
            </tr>
            
            
            
        </table>
        
        <p>
            Click <a href="menu.html">here</a> to go back to menu.
        </p>
        
    </body>
</html>
