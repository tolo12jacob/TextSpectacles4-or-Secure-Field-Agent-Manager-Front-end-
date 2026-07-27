<%-- 
    Document   : display_all_outcome
    Created on : 24 May 2026, 5:39:20 PM
    Author     : Jacob
--%>

<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.model.entity.Agent"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>All Field Agents</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="styles.css">
</head>

<body>

<div class="container large-container">

    <h1>Registered Field Agents</h1>

    <p>
        The table below displays all registered field agents.
    </p>

    <table>

        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Age</th>
            <th>Gender</th>
            <th>Date of Birth</th>
            <th>Marital Status</th>
        </tr>
        <%
            List<Agent> agents = (List<Agent>)request.getAttribute("agents");
        %>
        
        
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

            <td><%= id %></td>

            <td><%= name %></td>

            <td><%= age %></td>

            <td><%= gender %></td>

            <td><%= dob %></td>

            <td><%= marital %></td>

        </tr>
            
            <%}%>
        </table>

    <a href="menu.html" class="button back">
        ← Back to Dashboard
    </a>

</div>

</body>
</html>
