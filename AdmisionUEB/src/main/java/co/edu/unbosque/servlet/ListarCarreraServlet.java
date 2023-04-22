package co.edu.unbosque.servlet;

import co.edu.unbosque.controller.Controller;
import jakarta.servlet.http.HttpServlet;

public class ListarCarreraServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Controller c;
	
	public ListarCarreraServlet() {
		c = new Controller();
	}
}
