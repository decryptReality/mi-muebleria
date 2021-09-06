<% 
	String head = "Registrar factura"; 
	
	String nombreUsuario = request.getParameter("nombreUsuario"); 	
	String contrasenia = request.getParameter("contrasenia"); 
%>

<html>
    <head>
        <title><%= head %></title>
    </head>

    <body>
        <h2><%= head %></h2>
        <hr>
        <form action="insertFactura.jsp" method="post">
        
			<input type="hidden" name="nombreUsuario" value="<%= nombreUsuario %>"/>
			<input type="hidden" name="contrasenia" value="<%= contrasenia %>"/>
			
            <table>
				<tr>
                    <td>ID de factura</td>
                    <td><input type="text" name="idFactura" /></td>
                </tr>
                <tr>
                    <td>NIT de cliente</td>
                    <td><input type="text" name="nit" /></td>
                </tr>
                <tr>
                    <td>Fecha de emision (DD-MM-YYYY)</td>
                    <td><input type="text" name="fechaVentaD" value="31"/></td>
                    <td><input type="text" name="fechaVentaM" value="12"/></td>
                    <td><input type="text" name="fechaVentaY" value="2020"/></td>
                </tr>
                <tr>
                    <td>Usuario</td>
                    <td><%= nombreUsuario %></td>
                </tr>
                <tr>
					<td colspan="4">
						<center><input type="submit" value="Registrar" /></center>
					</td>
                </tr>
            </table>
        </form>
    </body>

</html>
