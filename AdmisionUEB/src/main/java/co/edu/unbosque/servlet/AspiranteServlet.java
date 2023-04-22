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
		PrintWriter pw = resp.getWriter();
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<title>");
		pw.println("Tabla de aspirantes");
		pw.println("</title>");
		pw.println("</head>");
		pw.println(
				"<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp\" crossorigin=\"anonymous\">");
		pw.println(
				"<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N\" crossorigin=\"anonymous\"></script>");
		pw.println("<body>");
		pw.println("<table class='table'>");
		pw.println("<thead>");
		pw.println(" <tr>");
		pw.println("<th scope='col'>Nombre del aspirante</th>");
		pw.println("<th scope='col'>Fecha de nacimiento del aspirante</th>");
		pw.println("<th scope='col'>Edad del aspirante</th>");
		pw.println("<th scope='col'>Colegio del cual se egresó</th>");
		pw.println("<th scope='col'>Número de identificación</th>");
		pw.println("<th scope='col'>Carrera</th>");
		pw.println("<th scope='col'>Estrato</th>");
		pw.println("<th scope='col'>¿Homologado?</th>");
		pw.println("<th scope='col'>Foto</th>");
		pw.println("</tr>");
		pw.println("</thead>");
		pw.println("<tbody>");
		for (int i = 0; i < c.getAdao().getList().size(); i++) {
			
			pw.println("<tr>");
			pw.println("<td>" + c.getAdao().getList().get(i).getNombre() + "</td>");
			pw.println("<td>" + c.getAdao().getList().get(i).getFechanacimiento() + "</td>");
			pw.println("<td>" + c.getAdao().getList().get(i).getEdad() + "</td>");
			pw.println("<td>" + c.getAdao().getList().get(i).getColegioegresado()+ "</td>");
			pw.println("<td>" + c.getAdao().getList().get(i).getId() + "</td>");
			pw.println("<td>" + c.getAdao().getList().get(i).getCarrera() + "</td>");
			pw.println("<td>" + c.getAdao().getList().get(i).getEstrato() + "</td>");
			pw.println("<td>" + c.getAdao().getList().get(i).getHomologa() + "</td>");
			pw.println("<td>" + c.getAdao().getList().get(i).getFoto()+ "</td>");
			pw.println("</tr>");
		}
		pw.println("</tbody>");
		pw.println("</table>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
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
			String colegioegr = req.getParameter("pcolegioegr");
			String id = req.getParameter("pid");
			String carrera = req.getParameter("pcarrera");
			String estrato = req.getParameter("pestrato");
			String homologa = req.getParameter("phomologa");

		    Part filePart = req.getPart("pfoto");
		    System.out.println(carrera);
		    System.out.println(homologa);
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
		    pw.println("Estudiante guardado exitosamente");
		    pw.println(c.solicitarListar());
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
