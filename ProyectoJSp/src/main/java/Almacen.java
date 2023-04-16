
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import co.edu.unbosque.model.persistence.FileHandler;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Almacen extends HttpServlet {

	private VehiculoDAO vehiculos;

	public Almacen() {
		vehiculos = new VehiculoDAO();

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		String info = FileHandler.loadFile();
		PrintWriter pw = resp.getWriter();
		vehiculos.agregarVehiculo(req.getParameter("marca"), req.getParameter("modelo"), req.getParameter("placa"),
				req.getParameter("fecha"), req.getParameter("propietario"));
		FileHandler.writeFile(info + "\n" + vehiculos.listarVehiculos()); //En caso de que salga el error de FileNotFoundException, mirar donde está la ruta dela archivo de vehiculos y reemplazarla en el filehandler, no funcionó con la ruta normal ;(
		pw.println("<script type=\"text/javascript\">");
		pw.println("alert('Informacion del vehiculo ingresada exitosamente');");
		pw.println("location='index.jsp';");
		pw.println("</script>");
		pw.close();

	}
}
