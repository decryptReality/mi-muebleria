<%@page errorPage = "error.jsp" %>
<%@page import = "nivel1.*" %>

<% 
	String head = "Registrar venta"; 
	
	String nombreUsuario = request.getParameter("nombreUsuario"); 
	String contrasenia = request.getParameter("contrasenia");
	
	String idMueble = request.getParameter("idMueble");
	String idFactura = request.getParameter("idFactura");
	String precioVenta = request.getParameter("precioVenta");
	
	String s1 = "&";
	String q1 = "nombreUsuario="+nombreUsuario;
	String q2 = "contrasenia="+contrasenia;
	String q3 = "idFactura="+idFactura;

	int u = EjecutarSQL.insertVenta(idMueble,precioVenta,idFactura);
	
	if(u > 0)
	{
		response.sendRedirect("formVenta.jsp?"+q1+s1+q2+s1+q3);
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
        Registro de venta SIN exito.
        <br>
        <a href="formVenta.jsp?<%= q1+s1+q2+s1+q3 %>">Agregar venta</a>
        <br>
        <a href="areaTrabajo.jsp?<%= q1+s1+q1+s1+q2 %>">Area de fabrica</a>
    </body>

</html>

<%	
	}
%>
	
