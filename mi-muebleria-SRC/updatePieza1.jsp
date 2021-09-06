<html>
    <head><title>Editar pieza</title></head>
    <body>
        <%@page errorPage = "error.jsp" %>
        <h3>Editar pieza</h3>
        <hr>
        <%
			String tipoPieza = request.getParameter("tipoPieza");
			String precioUnidad = request.getParameter("precioUnidad");
        %>
        <form action="updatePieza2.jsp" method="post">
            Modifique las unidades disponibles de <%= tipoPieza %> con precio por unidad <%= precioUnidad %>:
            <br>
            <input type="text" name="unidadesDisponibles" />
            <input type="submit" value="Modificar" />
            
            <input type="hidden" name="tipoPieza" value="<%= tipoPieza %>" />
            <input type="hidden" name="precioUnidad" value="<%= precioUnidad %>" />
        </form>
        <a href="Piezas.jsp">Ir a Piezas</a>
    </body>
</html>
