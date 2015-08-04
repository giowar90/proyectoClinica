<%-- 
    Document   : home
    Created on : 8/07/2015, 10:24:11 PM
    Author     : GIO
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="met" class="modeloClinica.modeloClinica"></jsp:useBean>
        <%
            String usu = request.getParameter("usuario");
            String pass = request.getParameter("pass");
            session.setAttribute("usuario", usu);
            session.setAttribute("pass", pass);
            ResultSet rs = met.consultar("select nombre,tipo_personal from clinica.personal where nom_us = '" + usu + "' and pass = '" + pass + "';");
            if (rs.next()){
                if (rs.getString("tipo_personal").equals("1")) {
                    response.sendRedirect("principalAdmin.jsp?tipo=1&id=0");
                }else if (rs.getString("tipo_personal").equals("2")) {
                    response.sendRedirect("principalMedico.jsp?tipo=1&id=0");
                }else if (rs.getString("tipo_personal").equals("3")) {
                    response.sendRedirect("principalAsis.jsp?tipo=1&id=0");
                }
            } else {
                response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>
