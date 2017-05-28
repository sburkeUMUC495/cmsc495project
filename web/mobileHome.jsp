<%-- 
    Document   : mobileHome
    Created on : May 24, 2017, 10:11:39 PM
    Author     : Rob Garcia at rgarcia92.student.umuc.edu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CMSC 495 Project Test</title>
        <link href="${pageContext.request.contextPath}/resources/css/mobileStyle.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header>
            <h1>Hello CMSC 495!</h1>
        </header>
        <main>
            <form action="${pageContext.request.contextPath}/mobileResults.jsp" method="post">
                <table class="keypad">
                    <tr>
                        <td class="keys"><button type="submit" name="button" value="1" class="button">ABC</button></td>
                        <td class="keys"><button type="submit" name="button" value="2" class="button">DEF</button></td>
                        <td class="keys"><button type="submit" name="button" value="3" class="button">GHI</button></td>
                    </tr>
                    <tr>
                        <td class="keys"><button type="submit" name="button" value="4" class="button">JKL</button></td>
                        <td class="keys"><button type="submit" name="button" value="5" class="button">MNO</button></td>
                        <td class="keys"><button type="submit" name="button" value="6" class="button">PQR</button></td>
                    </tr>
                    <tr>
                        <td class="keys"><button type="submit" name="button" value="7" class="button">STU</button></td>
                        <td class="keys"><button type="submit" name="button" value="8" class="button">VWX</button></td>
                        <td class="keys"><button type="submit" name="button" value="9" class="button">YZ</button></td>
                    </tr>
                </table>
            </form>
        </main>
    </body>
</html>