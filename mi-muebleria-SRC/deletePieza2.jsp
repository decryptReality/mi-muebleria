
<%@page errorPage = "error.jsp" %>
<%@page import = "java.sql.*" %>
<%@page import = "nivel1.*" %>

<html>
    <head><title>Eliminar pieza</title></head>
    <body>
        <h3>Eliminar pieza</h3>
		<hr>
        <%
			String tipoPieza = request.getParameter("tipoPieza");
			String precioUnidad = request.getParameter("precioUnidad");
			int rows = EjecutarSQL.deletePieza(tipoPieza,precioUnidad);

			if(rows > 0){
        %>
        Cambios realizados <b>con</b> exito para
        <%
			} else {
        %>
        Cambios realizados <b>sin</b> exito para
        <% } %>
        <br>
		<ul>
			<li>Tipo de pieza: <%= tipoPieza %></li>
			<li>Precio por unidad: <%= precioUnidad %></li>
        </ul>
        <br>
        <a href="piezas.jsp">Ir a Piezas</a>
    </body>
</html>



