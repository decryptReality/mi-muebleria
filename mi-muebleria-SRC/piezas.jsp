<%@page errorPage = "error.jsp" %>
<%@page import = "java.sql.*" %>

<%
	String head = "Piezas"; 
	
	String nombreUsuario = request.getParameter("nombreUsuario"); 
	String contrasenia = request.getParameter("contrasenia");
		
	String s1 = "&";
	String q1 = "nombreUsuario="+nombreUsuario;
	String q2 = "contrasenia="+contrasenia;
	
	String database = "Muebleria";
	String url = "jdbc:mysql://localhost:3306/";
	String user = "U201430061";
	String password = "123123";
	
	String query1 = "SELECT * FROM Piezas ORDER BY tipoPieza ASC";
	
	// cargar y establecer conexion con MySQL Driver
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection connection1 = DriverManager.getConnection(url + database,user,password);
	Statement statement1 = connection1.createStatement();
	ResultSet result1 = statement1.executeQuery(query1);
%>

<html>
    <head><title><%= head %></title></head>
    <body>
        <h3><%= head %></h3>
        <hr>
        
        <a href="areaTrabajo.jsp?<%= q1+s1+q2 %>">Area de fabrica</a>
        <br>
        
        <ul>
			<li><a href="insertPieza1.jsp">Crear pieza</a></li>
			<li><a href="insertTiposPiezas1.jsp">Crear tipo de pieza</a></li>
			<li><a href="TiposPiezas.jsp">Tipos de piezas</a></li>
        </ul>
        
        <table>
            <tr>
                <td>|		Tipo de pieza</td>
                <td>|		Precio por unidad</td>
                <td>|		Unidades disponibles</td>
            </tr>
            <%
                // se imprimen filas
                while(result1.next())
                {
            %>
            <tr>
                <td>|	<%= result1.getString("tipoPieza") %></td>
                <td>|	<%= result1.getString("precioUnidad") %></td>
                
                <% int u = result1.getInt("unidadesDisponibles"); %>
                
                <td>|	<%= u %></td>
                <td>
                    |	<a href="updatePieza1.jsp?tipoPieza=<%= result1.getString("tipoPieza") %>&precioUnidad=<%= result1.getString("precioUnidad") %>">
						EDITAR
                    </a>
				</td>
				<td>
					|	<a href="deletePieza1.jsp?tipoPieza=<%= result1.getString("tipoPieza") %>&precioUnidad=<%= result1.getString("precioUnidad") %>">
						ELIMINAR
                    </a>
                </td>
                <% 
					if(0<u & u<=4) 
					{
                %>
				<td>|	ESCASO</td>
                <%
					}
					if(u==0)
					{
                %>
                <td>|	AGOTADO</td>
                <%
					}
				%>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>















