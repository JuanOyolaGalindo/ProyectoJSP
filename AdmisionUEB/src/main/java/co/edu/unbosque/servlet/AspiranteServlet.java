package co.edu.unbosque.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.UUID;

import javax.imageio.ImageIO;

import co.edu.unbosque.controller.Controller;

public class AspiranteServlet extends HttpServlet {

	private static final long serialVersionUID = 4392614731292808361L;

	private Controller c;

	public AspiranteServlet() {
		c = new Controller();
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");

		DateTimeFormatter fmt = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		LocalDate fnh = LocalDate.parse(req.getParameter("pfnacimiento"), fmt);
		LocalDate hoy = LocalDate.now();
		Period p = Period.between(fnh, hoy);

		String nombre = req.getParameter("pnombre");
		String fnacimiento = fnh + "";
		int edad = p.getYears();
		String colegioegr = "null*";
		/* req.getParameter("pcolegioegr") */;
		String id = req.getParameter("pid");
		String carrera = req.getParameter("pcarrera");
		String estrato = req.getParameter("pestrato");
		String homologa = req.getParameter("phomologa");
		Part fot = req.getPart("pfoto");
		c.solicitarAgregar(nombre, fnacimiento, edad, colegioegr, id, carrera, estrato, homologa, null);

	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 resp.setContentType("text/html");
		    PrintWriter pw = resp.getWriter();
		    DateTimeFormatter fmt = DateTimeFormatter.ofPattern("yyyy-MM-dd");
			LocalDate fnh = LocalDate.parse(req.getParameter("pfnacimiento"), fmt);
			LocalDate hoy = LocalDate.now();
			Period p = Period.between(fnh, hoy);

			String nombre = req.getParameter("pnombre");
			String fnacimiento = fnh + "";
			int edad = p.getYears();
			String colegioegr = "null*";
			/* req.getParameter("pcolegioegr") */;
			String id = req.getParameter("pid");
			String carrera = req.getParameter("pcarrera");
			String estrato = req.getParameter("pestrato");
			String homologa = req.getParameter("phomologa");

		    Part filePart = req.getPart("pfoto");
		    InputStream fileContent = filePart.getInputStream();

		    // Procesar la imagen utilizando ImageIO
		    BufferedImage image = ImageIO.read(fileContent);

		    // Guardar la imagen en una carpeta específica en el directorio raíz del
		    // proyecto
		    String uploadPath = getServletContext().getRealPath("");
		    File uploadDir = new File(uploadPath);
		    if (!uploadDir.exists()) {
		        uploadDir.mkdir();
		    }
		    String fileName = UUID.randomUUID().toString() + ".png";
		    File outputFile = new File(uploadDir, fileName);
		    System.out.println(outputFile.getAbsolutePath());
		    ImageIO.write(image, "png", outputFile);

		    // Llamar al método de agregar en el controlador con el archivo cargado
		    c.solicitarAgregar(nombre, fnacimiento, edad, colegioegr, id, carrera, estrato, homologa, outputFile);

		    // Enviar una respuesta HTTP con un mensaje de éxito
		    pw.println("Archivo cargado exitosamente");
		    pw.close();
	}

//		pw.println("<html> <head> <title>Lista</title>");
//		pw.println("</head>");
//		pw.println("<body>");
//		pw.println("<h1>lista<h1>");
//		pw.println(c.solicitarListar()+"<br>");
//		pw.println("</body>");
//		pw.println("</html>");
//		pw.close();
}
