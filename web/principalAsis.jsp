<%-- 
    Document   : principalAsis
    Created on : 8/07/2015, 11:53:15 PM
    Author     : GIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <link href="assets/css/style.css" rel="stylesheet">
        <title>Clinica - Asistente</title>
    </head>
    <body>
        <div id="wrapper">
            <%
                String pagina = request.getParameter("tipo");
                if(pagina == null){
                    pagina = "";
                }
                if(pagina.equals("1")){%>
                <jsp:include page="asistente/inicio.jsp"/>
               <% }else if(pagina.equals("2")){%>
               <jsp:include page="asistente/medico.jsp"/>
                <%}else if(pagina.equals("3")){%>
                <jsp:include page="asistente/citas.jsp"/>
                <%}else if(pagina.equals("4")){%>
                <jsp:include page="asistente/pacientes.jsp"/>
               <% }
            %>
        </div>
        <script src="assets/js/jquery.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery-1.10.2.js"></script>
        <script src="assets/js/jquery.metisMenu.js"></script>
        <script src="assets/js/dataTables/jquery.dataTables.js"></script>
        <script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
        <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
            });
        </script>
    </body>
</html>
