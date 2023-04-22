package co.edu.unbosque.servlet;

import co.edu.unbosque.controller.Controller;
import jakarta.servlet.http.HttpServlet;

public class EliminarServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Controller c;
	
	public EliminarServlet() {
		c = new Controller();
	}
}
