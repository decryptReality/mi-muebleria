<%@page errorPage = "error.jsp" %>

<html>
    <head><title>Crear un tipo de pieza</title></head>
    <body>
        
        <h3>Crear un tipo de pieza</h3>
        <hr>
        
        <a href="piezas.jsp">Ir a Piezas</a>
        <br>
        
		Notas: 
		<ul>
			<li>el tipo de pieza NO debe coincidir con alguno ya registrado</li>
		</ul>

        <form action="insertTiposPiezas2.jsp" method="post">
			<table>
				<tr>
					<td>|	Tipo de pieza</td>
					<td>|	<input type="text" name="tipoPieza" /></td>
					<td>|	<input type="submit" value="Crear" /></td>
				</tr>
			</table>
        </form>
        
    </body>
</html>
