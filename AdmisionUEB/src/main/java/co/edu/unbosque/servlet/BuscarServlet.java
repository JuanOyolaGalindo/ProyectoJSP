package co.edu.unbosque.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import co.edu.unbosque.controller.Controller;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BuscarServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Controller c;
	
	public BuscarServlet() {
		c = new Controller();
	}	

	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener la cédula del estudiante a buscar
        String cedula = request.getParameter("cedula");
        
        String aspirante = c.getAdao().listarAspirante(cedula);
        
        // Preparar la respuesta
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        // Construir el contenido del modal de respuesta
        String contenidoModal = "<div class='modal-dialog'>"
                + "<div class='modal-content'>"
                + "<div class='modal-header'>"
                + "<h1 class='modal-title fs-5'>Resultado de búsqueda</h1>"
                + "<button type='button' class='btn-close' data-bs-dismiss='modal' aria-label='Close'></button>"
                + "</div>"
                + "<div class='modal-body'>"
                + "El estudiante con cédula " + cedula + " es:" + aspirante 
                + "</div>"
                + "<div class='modal-footer'>"
                + "<button type='button' class='btn btn-secondary' data-bs-dismiss='modal'>Cerrar</button>"
                + "</div>"
                + "</div>"
                + "</div>";
        
        // Escribir el contenido del modal de respuesta en la respuesta HTTP
        out.println(contenidoModal);
        out.close();
    }
}
