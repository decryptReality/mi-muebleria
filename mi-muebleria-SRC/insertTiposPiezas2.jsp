<%@page errorPage = "error.jsp" %>
<%@page import = "java.sql.*" %>
<%@page import = "nivel1.*" %>

<html>
    <head><title>Crear un tipo de pieza</title></head>
    <body>
		<a href="piezas.jsp">Ir a piezas</a>
        <br>
        
        <h3>Crear un tipo de pieza</h3>
		<hr>
        <%
			String tipoPieza = request.getParameter("tipoPieza");
			int rows = EjecutarSQL.insertTipoPieza(tipoPieza);

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
        </ul>
        
    </body>
</html>
