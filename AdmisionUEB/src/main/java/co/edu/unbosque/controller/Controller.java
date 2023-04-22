package co.edu.unbosque.controller;

import java.io.File;
import java.time.LocalDate;
import java.time.Month;
import java.time.Period;
import java.time.format.DateTimeFormatter;

import co.edu.unbosque.model.AspiranteDAO;

public class Controller {

	private AspiranteDAO adao;

	public Controller() {
		adao = new AspiranteDAO();
	}

	public void solicitarAgregar(String nombre, String fechanacimiento, int edad, String colegioegresado, String id,
			String carrera, String estrato, String homologa, File foto) {
		adao.agregarAspirante(nombre, fechanacimiento, edad, colegioegresado, id, carrera, estrato, homologa, foto);
	}

	public AspiranteDAO getAdao() {
		return adao;
	}

	public void setAdao(AspiranteDAO adao) {
		this.adao = adao;
	}

	public String solicitarEliminar(String id) {
		return adao.eliminarAspirante(id);
	}

	public String solicitarModificar(String nombre, String fechanacimiento, int edad, String colegioegresado, String id,
			String carrera, String estrato, String homologa, File foto) {
		return adao.modificarAspirante(nombre, fechanacimiento, edad, colegioegresado, id, carrera, estrato, homologa,
				foto);
	}

	public String solicitarListarPCarrera() {
		return adao.listarPorCarrera();
	}

	public String solicitarListar() {
		return adao.mostrarInfoAspirante();
	}
	
	public static void main(String[] args) {
		Controller c = new Controller();
		DateTimeFormatter fmt = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		LocalDate fnh = LocalDate.parse("14/05/2005",fmt);
		String fn = fnh+"";
		LocalDate now = LocalDate.now();
		Period p = Period.between(fnh, now);
		int edad = p.getYears();
		boolean h = true;
		String homologa = h+"";
		File f = new File("src/");
		c.solicitarAgregar("Migure", fn, edad, "FDSAG", "12345678", "Sfhdsu", "1", homologa, f);
		System.out.println(c.solicitarListar());
		
	}
}