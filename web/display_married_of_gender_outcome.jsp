<%-- 
    Document   : display_married_of_gender_outcome
    Created on : 24 May 2026, 6:42:14 PM
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
    <title>Married Field Agents</title>

    <link rel="stylesheet" href="styles.css">
</head>

<body>

<div class="container large-container">

    <h1>Married Field Agents</h1>

    <p>
        The following married field agents match the selected gender.
    </p>

    <%
        List<Agent> agents = (List<Agent>)request.getAttribute("agents");
        Integer totalNum = (Integer)request.getAttribute("totalNum");
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

    <p style="margin-top:25px; font-size:18px; font-weight:bold; color:#2563eb;">
        Total Agents Found: <%=totalNum%>
    </p>

    <a href="menu.html" class="button back">
        ← Back to Dashboard
    </a>

</div>

</body>
</html>