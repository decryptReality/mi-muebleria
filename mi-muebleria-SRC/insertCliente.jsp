<%@page errorPage = "error.jsp" %>
<%@page import = "nivel1.*" %>

<% 
	String head = "Registrar venta"; 
	
	String nombreUsuario = request.getParameter("nombreUsuario"); 
	String contrasenia = request.getParameter("contrasenia");
	
	String nit = request.getParameter("nit");
	String nombreCliente = request.getParameter("nombreCliente");
	String direccion = request.getParameter("direccion");
	String municipio = request.getParameter("municipio");
	String departamento = request.getParameter("departamento");
	
	String s1 = "&";
	String q1 = "nombreUsuario="+nombreUsuario;
	String q2 = "contrasenia="+contrasenia;

	int u = EjecutarSQL.insertCliente(nit,nombreCliente,direccion,municipio,departamento);
	
	if(u > 0)
	{
		response.sendRedirect("areaTrabajo.jsp?"+q1+s1+q2);
	}
	else
	{
%>
<html>
	
    <head>
        <title><%= head %></title>
    </head>

    <body>
        <h2><%= head %></h2>
        <hr>
        
        Registro de cliente SIN exito. Razones:
		<ul>
			<li>El NIT del cliente ya ha sido registrado</li>
        </ul>

        <br>
        <a href="formCliente.jsp?<%= q1+s1+q2 %>">Agregar cliente</a>
        <br>
        <a href="areaTrabajo.jsp?<%= q1+s1+q2 %>">Area de ventas</a>
    </body>

</html>

<%	
	}
%>
	
