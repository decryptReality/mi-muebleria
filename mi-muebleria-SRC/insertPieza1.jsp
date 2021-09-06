<%@page errorPage = "error.jsp" %>

<% 
	String head = "Crear pieza"; 
	
	String nombreUsuario = request.getParameter("nombreUsuario"); 
	String contrasenia = request.getParameter("contrasenia");
	
	String idFactura = request.getParameter("idFactura");
	
	String s1 = "&";
	String q1 = "nombreUsuario="+nombreUsuario;
	String q2 = "contrasenia="+contrasenia;
	String q3 = "idFactura="+idFactura;
	
%>	

<html>
    <head><title><%= head %></title></head>
    <body>
        <h3><%= head %></h3>
        <hr>
        <a href="piezas.jsp?<%= q1+s1+q2 %>">Ir a piezas</a>
        <br>
		Notas: 
		<ul>
			<li>el tipo de pieza debe coincidir con alguno ya registrado</li>
			<li>el tipo de pieza y el precio por unidad en conjunto deben tener valores distintos a los de otras piezas ya registradas</li>
		</ul>
        
        <form action="insertPieza2.jsp" method="post">
			<table>
                <tr>
                    <td>Tipo de pieza</td>
                    <td><input type="text" name="tipoPieza" /></td>
                </tr>
                <tr>
                    <td>Precio por unidad</td>
                    <td><input type="text" name="precioUnidad" /></td>
                </tr>
				<tr>
                    <td>Unidades disponibles</td>
                    <td><input type="text" name="unidadesDisponibles" /></td>
                </tr>
                <tr>
                    <td colspan="2">
						<center><input type="submit" value="Crear" /></center>
					</td>
                </tr>
            </table>
        </form>
        
    </body>
</html>
