<%-- 
    Document   : desktopResults
    Created on : May 25, 2017, 11:39:09 PM
    Author     : Rob Garcia at rgarcia92.student.umuc.edu
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.cmsc495test2.models.dataAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CMSC 495 Project Test</title>
        <link href="${pageContext.request.contextPath}/resources/css/desktopStyle.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header>
            <h1>Hello CMSC 495!</h1>
            <h2>This is the desktop browser results page. It looks better on a mobile device!</h2>
        </header>
        <main>
            <table class="list">
                <tr>
                    <td><h3>STATE:</h3></td><td><h3>CAPITAL:</h3></td>
                </tr>
                <%
                    /* Retrieve POST parameter */
                    String keypadLetterGroup = request.getParameter("button");
                    /* Get data from model and display on page */
                    ArrayList<dataAccess.StateDetails> stateDetails = dataAccess.getStateDetails(Integer.parseInt(keypadLetterGroup));
                    for(dataAccess.StateDetails s : stateDetails) {
                        out.println("<tr><td><h3>" + s.getName() + "</h3></td><td><h3>" + s.getCapital() + "</h3></td></tr>");
                    }
                %>
            </table>
        </main>
        <footer class="backFooter">
            <button class="backButton" onclick="goBack()">Go Back</button>
            <script>
                /* Use history function instead of a redirect */
                function goBack() {
                    window.history.back();
                }
            </script>
        </footer>
    </body>
</html>
