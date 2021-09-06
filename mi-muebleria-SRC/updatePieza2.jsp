<%@page errorPage = "error.jsp" %>
<%@page import = "java.sql.*" %>
<%@page import = "nivel1.*" %>

<%
	String tipoPieza = request.getParameter("tipoPieza");
	String precioUnidad = request.getParameter("precioUnidad");
	String unidadesDisponibles = request.getParameter("unidadesDisponibles");
	int rows = EjecutarSQL.updatePieza(tipoPieza,precioUnidad,unidadesDisponibles);
%>

<html>
    <head><title>Editar pieza</title></head>
    <body>
        
        <h3>Editar pieza</h3>
		<hr>
		<%
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
			<li>Unidades disponibles: <%= unidadesDisponibles %></li>
        </ul>
        <br>
        <a href="piezas.jsp">Ir a piezas</a>
    </body>
</html>
