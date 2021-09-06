<%@page errorPage = "error.jsp" %>
<%@page import = "nivel1.*" %>

<% 
	String head = "Registrar ventas"; 
	
	String nombreUsuario = request.getParameter("nombreUsuario"); 
	String contrasenia = request.getParameter("contrasenia");
	
	String idFactura = request.getParameter("idFactura");

	String nit = request.getParameter("nit");
	String fechaVentaD = request.getParameter("fechaVentaD");
	String fechaVentaM = request.getParameter("fechaVentaM");
	String fechaVentaY = request.getParameter("fechaVentaY");
	String fechaVenta = fechaVentaY+"-"+fechaVentaM+"-"+fechaVentaD;
	
	String s1 = "&";
	String q1 = "nombreUsuario="+nombreUsuario;
	String q2 = "contrasenia="+contrasenia;
	String q3 = "idFactura="+idFactura;

	int u = EjecutarSQL.insertFactura(idFactura,nit,fechaVenta,nombreUsuario);
	
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
        Registro de factura SIN exito.
        <br>
        <a href="areaTrabajo.jsp?<%= q1+"&"+q2 %>">Area de fabrica</a>
    </body>

</html>

<%	
	}
%>
	
