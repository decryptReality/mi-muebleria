<html>
    <head><title>Tipos de piezas</title></head>
    <body>
        <%@page errorPage = "error.jsp" %>
        <%@page import = "java.sql.*" %>
        <h3>Tipos de piezas</h3>
        <hr>
        <ul>
			<li><a href="Piezas.jsp">Ir a piezas</a></li>
        </ul>
        
        <%
			String database = "Muebleria";
            String url = "jdbc:mysql://localhost:3306/";
            String user = "U201430061";
            String password = "123123";
            
            String query1 = "SELECT * FROM TiposPiezas ORDER BY tipoPieza ASC";
            
            // cargar y establecer conexion con MySQL Driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection1 = DriverManager.getConnection(url + database,user,password);
            Statement statement1 = connection1.createStatement();
            ResultSet result1 = statement1.executeQuery(query1);
        %>
        <table>
            <tr>
                <td>Tipo de pieza</td>
            </tr>
            <%
                // se imprimen filas
                while(result1.next())
                {
            %>
            <tr>
                <td><%= result1.getString("tipoPieza") %></td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>















