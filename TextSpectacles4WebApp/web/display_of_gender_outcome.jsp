<%-- 
    Document   : display_of_gender_outcome
    Created on : 24 May 2026, 5:57:15 PM
    Author     : Jacob
--%>

<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.model.entity.Agent"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Outcome of gender specific Page</title>
    </head>
    <body>
        <h1>Outcome of gender specific</h1>
        
        <%
            List<Agent> agents = (List<Agent>)request.getAttribute("agents");
        %>
        <table>
            <%
                for(int i = 0; i< agents.size();i++){
                    Agent agent = agents.get(i);
                    String name = agent.getName();
                    String gender = agent.getGender();
                    Long id = agent.getId();
                    Integer age = agent.getAge();
                    Date dob = agent.getDob();
                    String marital = agent.getMarrital();
                    Date creationDate = agent.getCreationDate();
                
            %>
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
            
            <%}%>
        </table>
        
        <p>
            Click <a href="menu.html">here</a> to go back to menu.
        </p>
        
    </body>
</html>
