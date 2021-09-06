<%@page errorPage = "error.jsp" %>
<%@page import = "nivel1.*" %>

<html>
    <head><title>Crear pieza</title></head>
    <body>
		
        <h3>Crear pieza</h3>
		<hr>
		
        <a href="piezas.jsp">Ir a piezas</a>
        <br>
        
        <%
			String tipoPieza = request.getParameter("tipoPieza");
			String precioUnidad = request.getParameter("precioUnidad");
			String unidadesDisponibles = request.getParameter("unidadesDisponibles");
			int rows = EjecutarSQL.insertPieza(tipoPieza,precioUnidad,unidadesDisponibles);

			if(rows > 0){
        %>
        Cambios realizados CON exito para
        <%
			} else {
        %>
        Cambios realizados SIN exito para
        <% } %>
        <br>
        <ul>
			<li>Tipo de pieza: <%= tipoPieza %></li>
			<li>Precio por unidad: <%= precioUnidad %></li>
			<li>Unidades disponibles: <%= unidadesDisponibles %></li>
        </ul>
        
    </body>
</html>
