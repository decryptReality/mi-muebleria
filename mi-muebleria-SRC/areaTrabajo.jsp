<%@page errorPage = "error.jsp" %>
<%@page import = "nivel1.*" %>

<html>
	
    <head>
    </head>
    
	<%
		String nombreUsuario = request.getParameter("nombreUsuario"); 
		String contrasenia = request.getParameter("contrasenia");
		String areaTrabajo = EjecutarSQL.entrar(nombreUsuario,contrasenia);
		
		String s1 = "&";
		String q1 = "nombreUsuario="+nombreUsuario;
		String q2 = "contrasenia="+contrasenia;
	%>
    
    <body>
    
	<% 
		if(areaTrabajo.equals("1"))
		{
	%>
		<h3>Area de fabrica</h3>
        <hr>
        Bienvenido, <%= nombreUsuario %>!
        
        <ul>
			<li><a href="libro.jsp?<%= q1+s1+q2 %>">Libro de instrucciones</a></li>
			<li><a href="muebles0.jsp?<%= q1+s1+q2 %>">Muebles ensamblados</a></li>
			<li><a href="piezas.jsp?<%= q1+s1+q2 %>">Piezas</a></li>
        </ul>
	<%
		}
		if(areaTrabajo.equals("2"))
		{
	%>
		<h3>Area de ventas</h3>
        <hr>
		Bienvenido, <%= nombreUsuario %>!

        <ul>
			<li><a href="formFactura.jsp?<%= q1+s1+q2 %>">Registrar venta</a></li>
			<li><a href="formCliente.jsp?<%= q1+s1+q2 %>">Registrar cliente</a></li>
			<li><a href="muebles1.jsp?<%= q1+s1+q2 %>">Muebles en venta disponibles</a></li>
        </ul>
	<%
		}
		if(areaTrabajo.equals("3"))
		{
	%>
		<h3>Area de ventas</h3>
        <hr>
		Bienvenido, <%= nombreUsuario %>!
		<ul>
			<li><a href="libro.jsp?<%= q1+s1+q2 %>">Libro de instrucciones</a></li>
			<li><a href="muebles0.jsp?<%= q1+s1+q2 %>">Muebles ensamblados</a></li>
			<li><a href="piezas.jsp?<%= q1+s1+q2 %>">Piezas</a></li>
			<li><a href="formFactura.jsp?<%= q1+s1+q2 %>">Registrar venta</a></li>
			<li><a href="formCliente.jsp?<%= q1+s1+q2 %>">Registrar cliente</a></li>
			<li><a href="muebles1.jsp?<%= q1+s1+q2 %>">Muebles en venta disponibles</a></li>
        </ul>
	<%
		}
	%>
    </body>
    
</html>


