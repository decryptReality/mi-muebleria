<html>
    <head><title>Eliminar pieza</title></head>
    <body>
        <%@page errorPage = "error.jsp" %>
        <h3>Eliminar pieza</h3>
        <hr>
        <%
			String tipoPieza = request.getParameter("tipoPieza");
			String precioUnidad = request.getParameter("precioUnidad");
        %>
        <form action="deletePieza2.jsp" method="post">
			Confirme la eliminacion de <%= tipoPieza %> con precio por unidad <%= precioUnidad %>:
            <br>
            <input type="submit" value="Eliminar" />
            
            <input type="hidden" name="tipoPieza" value="<%= tipoPieza %>" />
            <input type="hidden" name="precioUnidad" value="<%= precioUnidad %>" />
        </form>
        <a href="Piezas.jsp">Ir a Piezas</a>
    </body>
</html>
