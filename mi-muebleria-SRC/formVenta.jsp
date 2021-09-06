<%@page errorPage = "error.jsp" %>
<%@page import = "nivel1.*" %>

<% 
	String head = "Registrar venta"; 
	
	String nombreUsuario = request.getParameter("nombreUsuario"); 
	String contrasenia = request.getParameter("contrasenia");
	
	String idFactura = request.getParameter("idFactura");
	
	String s1 = "&";
	String q1 = "nombreUsuario="+nombreUsuario;
	String q2 = "contrasenia="+contrasenia;
	String q3 = "idFactura="+idFactura;
	
%>	

<html>
	
    <head>
        <title><%= head %></title>
    </head>

    <body>
        <h2><%= head %></h2>
        <hr>
        
        <form action="insertVenta.jsp" method="post">
        
			<input type="hidden" name="nombreUsuario" value="<%= nombreUsuario %>" />
			<input type="hidden" name="contrasenia" value="<%= contrasenia %>"/>
			<input type="hidden" name="idFactura" value="<%= idFactura %>" />
			
            <table>
				
                <tr>
                    <td>ID de mueble</td>
                    <td><input type="text" name="idMueble" /></td>
                </tr>
                <tr>
                    <td>Precio de venta</td>
                    <td><input type="text" name="precioVenta" /></td>
                </tr>
				<tr>
                    <td>ID de factura</td>
                    <td><%= idFactura %></td>
                </tr>
                <tr>
                    <td>Usuario</td>
                    <td><%= nombreUsuario %></td>
                </tr>
                <tr>
                    <td colspan="2">
						<center><input type="submit" value="Registrar" /></center>
					</td>
                </tr>
            </table>
        </form>
        <br>
        <a href="areaTrabajo.jsp?<%= q1+"&"+q2 %>">Area de fabrica</a>
    </body>

</html>
