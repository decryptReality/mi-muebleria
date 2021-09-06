<%@page errorPage = "error.jsp" %>

<html>

    <head>
        <title>Entrar</title>
    </head>

    <body>
        <h2>Entrar</h2>
        <hr>
        
        <form action="areaTrabajo.jsp" method="post">
            <table>
                <tr>
                    <td>Usuario</td>
                    <td><input type="text" name="nombreUsuario" /></td>
                </tr>
                <tr>
                    <td>Contrasenia</td>
                    <td><input type="password" name="contrasenia" /></td>
                </tr>
                <tr>
					<td colspan="2">
						<center><input type="submit" value="Entrar" /></center>
					</td>
                </tr>
            </table>
        </form>
    </body>
    
</html>
