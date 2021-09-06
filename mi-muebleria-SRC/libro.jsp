<%@page errorPage = "error.jsp" %>
<%@page import = "java.sql.*" %>

<% 
	String head = "Libro de instrucciones"; 
	
	String nombreUsuario = request.getParameter("nombreUsuario"); 
	String contrasenia = request.getParameter("contrasenia");
		
	String s1 = "&";
	String q1 = "nombreUsuario="+nombreUsuario;
	String q2 = "contrasenia="+contrasenia;
	
	String database = "Muebleria";
	String url = "jdbc:mysql://localhost:3306/";
	String user = "U201430061";
	String password = "123123";
	
	String query1 = "SELECT * FROM Libro ORDER BY tipoMueble ASC";
	
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
        
        <table>
            <tr>
                <td>|		Tipo de mueble</td>
                <td>|		Tipo de pieza</td>
                <td>|		Unidades requeridas</td>
            </tr>
            <%
                // se imprimen filas
                while(result1.next())
                {
            %>
            <tr>
                <td>|	<%= result1.getString("tipoMueble") %></td>
                <td>|	<%= result1.getString("tipoPieza") %></td>
                <td>|	<%= result1.getString("unidadesRequeridas") %></td>
            </tr>
            <%
                }
            %>
        </table>
        
    </body>
</html>
