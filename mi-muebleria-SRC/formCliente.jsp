<%@page errorPage = "error.jsp" %>
<%@page import = "nivel1.*" %>

<% 
	String head = "Registrar cliente"; 
	
	String nombreUsuario = request.getParameter("nombreUsuario"); 
	String contrasenia = request.getParameter("contrasenia");
		
	String s1 = "&";
	String q1 = "nombreUsuario="+nombreUsuario;
	String q2 = "contrasenia="+contrasenia;	
%>	

<html>
	
    <head>
        <title><%= head %></title>
    </head>

    <body>
        <h2><%= head %></h2>
        <hr>
        
        <form action="insertCliente.jsp" method="post">
        
			<input type="hidden" name="nombreUsuario" value="<%= nombreUsuario %>" />
			<input type="hidden" name="contrasenia" value="<%= contrasenia %>"/>
			
            <table>
                <tr>
                    <td>NIT</td>
                    <td><input type="text" name="nit" /></td>
                </tr>
                <tr>
                    <td>Nombres y apellidos</td>
                    <td><input type="text" name="nombreCliente" /></td>
                </tr>
				<tr>
                    <td>Direccion</td>
                    <td><input type="text" name="direccion" /></td>
                </tr>
                <tr>
                    <td>Municipio</td>
                    <<td><input type="text" name="municipio" /></td>
                </tr>
                <tr>
                    <td>Departamento</td>
                    <<td><input type="text" name="departamento" /></td>
                </tr>
                <tr>
                    <td colspan="2">
						<center><input type="submit" value="Registrar" /></center>
					</td>
                </tr>
            </table>
        </form>
        
        <br>
        <a href="areaTrabajo.jsp?<%= q1+"&"+q2 %>">Area de ventas</a>
        
    </body>

</html>









