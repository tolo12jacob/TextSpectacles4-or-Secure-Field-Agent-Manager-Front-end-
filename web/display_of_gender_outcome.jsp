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
    <title>Agents by Gender</title>

    <link rel="stylesheet" href="styles.css">
</head>

<body>

<div class="container large-container">

    <h1>Agents by Gender</h1>

    <p>
        The following field agents match the selected gender.
    </p>

    <%
        List<Agent> agents = (List<Agent>)request.getAttribute("agents");
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

        <%
            for(int i = 0; i < agents.size(); i++){

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

            <td><%=id%></td>

            <td><%=name%></td>

            <td><%=gender%></td>

            <td><%=age%></td>

            <td><%=dob%></td>

            <td><%=marital%></td>

            <td><%=creationDate%></td>

        </tr>

        <%
            }
        %>

    </table>

    <a href="menu.html" class="button back">
        ← Back to Dashboard
    </a>

</div>

</body>
</html>