package nivel1;

import java.sql.*;

public class EjecutarSQL
{
	private static String database = "Muebleria";
    private static String url = "jdbc:mysql://localhost:3306/";
    private static String user = "U201430061";
    private static String password = "123123";

	public static int updateStatement(String update)
	{
		int rows = 0;
		
        try
        {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection1 = DriverManager.getConnection(url + database,user,password);
			Statement statement1 = connection1.createStatement();
			
            rows = statement1.executeUpdate(update);
            
            statement1.close();
			connection1.close();
        }
        catch (Exception e) 
        {
			System.out.print("\n\n[!] Exception\n");
			e.printStackTrace();
        }
        return rows;
	};
	
    public static int updatePieza(String tipoPieza,String precioUnidad,String unidadesDisponibles)
    {
        String update = "UPDATE Piezas SET unidadesDisponibles = "+unidadesDisponibles+" WHERE precioUnidad = "+precioUnidad+" AND tipoPieza = '"+tipoPieza+"'";
        return updateStatement(update);
    }

    public static int deletePieza(String tipoPieza,String precioUnidad)
    {
		String delete = "DELETE FROM Piezas WHERE tipoPieza = '"+tipoPieza+"' AND precioUnidad = "+precioUnidad;
		return updateStatement(delete);	
	};
	
	public static int insertPieza(String tipoPieza,String precioUnidad,String unidadesDisponibles)
	{
		String insert = "INSERT INTO Piezas(tipoPieza,precioUnidad,unidadesDisponibles) VALUES ('"+tipoPieza+"',"+precioUnidad+","+unidadesDisponibles+")";
		return updateStatement(insert);
	};
	
	public static int insertTipoPieza(String tipoPieza)
	{
		String insert = "INSERT INTO TiposPiezas(tipoPieza) VALUES ('"+tipoPieza+"')";
		return updateStatement(insert);
	};

	public static int insertUsuario(String nombreUsuario,String contrasenia,String areaTrabajo)
	{
		String update = "INSERT INTO Usuarios(nombreUsuario,contrasenia,areaTrabajo) VALUES ('"+nombreUsuario+"','"+contrasenia+"','"+areaTrabajo+"')";
		return updateStatement(update);
	};
	
	public static int insertCliente(String nit,String nombreCliente,String direccion,String municipio,String departamento)
	{
		String update = "INSERT INTO Clientes(nit,nombreCliente,direccion,municipio,departamento) VALUES ('"+nit+"','"+nombreCliente+"','"+direccion+"','"+municipio+"','"+departamento+"')";
		return updateStatement(update);
	};
	
	public static int insertFactura(String idFactura,String nit,String fechaVenta,String nombreUsuario)
	{
		String update = "INSERT INTO Facturas(idFactura,nit,fechaVenta,nombreUsuario) VALUES ('"+idFactura+"','"+nit+"','"+fechaVenta+"','"+nombreUsuario+"')";
		return updateStatement(update);
	};
	
	public static int insertMueble(String tipoMueble,String precioEnsamble,String fechaEnsamble,String nombreUsuario,String estadoMueble)
	{
		String update = "INSERT INTO Muebles(tipoMueble,precioEnsamble,fechaEnsamble,nombreUsuario,estadoMueble) VALUES ('"+tipoMueble+"',"+precioEnsamble+",'"+fechaEnsamble+"','"+nombreUsuario+"','"+estadoMueble+"')";
		return updateStatement(update);
	};
	
	public static int insertVenta(String idMueble,String precioVenta,String idFactura)
	{
		String update = "INSERT INTO Ventas(idMueble,precioVenta,idFactura) VALUES ("+idMueble+","+precioVenta+",'"+idFactura+"')";
		return updateStatement(update);
	};
	
	public static String entrar(String nombreUsuario,String contrasenia)
	{
		String query = "SELECT * FROM Usuarios WHERE nombreUsuario = '"+nombreUsuario+"' AND contrasenia = '"+contrasenia+"'";
		String areaTrabajo = "";
		
        try
        {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection1 = DriverManager.getConnection(url + database,user,password);
			Statement statement1 = connection1.createStatement();
			
            ResultSet result1 = statement1.executeQuery(query);
			while(result1.next())
			{
				areaTrabajo = result1.getString("areaTrabajo");
			}
            
            result1.close();
            statement1.close();
			connection1.close();
        }
        catch (Exception e) 
        {
			System.out.print("\n\n[!] Exception\n");
			e.printStackTrace();
        }
        return areaTrabajo;
	};
}
