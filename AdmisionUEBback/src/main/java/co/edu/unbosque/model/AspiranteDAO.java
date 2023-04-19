package co.edu.unbosque.model;

import java.io.File;
import java.sql.Date;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import co.edu.unbosque.model.persistence.FileHandler;

public class AspiranteDAO {

	ArrayList<AspiranteDTO> list;
	StringBuilder sb;

	public AspiranteDAO() {
		list = new ArrayList<>();
		loadFile();
	}

	public void writeFile() {
		String content = mostrarInfoAspirante();
		FileHandler.writeFile("Database.csv", content);
	}

	public void loadFile() {
		String content = FileHandler.loadFile("Database.csv");
		String[] lines = content.split("\n");
		for (String s : lines) {
			if (s.equals(""))
				continue;
			String[] columns = s.split(",");
			list.add(new AspiranteDTO(columns[0], columns[1], Integer.parseInt(columns[2]), columns[3], columns[4],
					columns[5], columns[6], columns[7], null));
		}
	}

	public void agregarAspirante(String nombre, String fechanacimiento, int edad, String colegioegresado, String id,
			String carrera, String estrato, String homologa, File foto) {
		list.add(
				new AspiranteDTO(nombre, fechanacimiento, edad, colegioegresado, id, carrera, estrato, homologa, foto));
		writeFile();
	}

	public String eliminarAspirante(String id) {
		String notif = "No acciones.";
		for (int i = 0; i < list.size(); i++) {
			if (list.size() == 0) {
				notif = "La lista está vacía.";
			} else {
				if (list.get(i).getId().equals(id)) {
					list.remove(i);
					notif = "¡Eliminado exitosamente!";
					writeFile();
				} else {
					notif = "No ha sido encontrado el aspirante con la id: " + id + ".";
				}
			}
		}
		return notif;
	}

	public String modificarAspirante(String nombre, String fechanacimiento, int edad, String colegioegresado, String id,
			String carrera, String estrato, String homologa, File foto) {
		String notif = "No acciones";
		for (int i = 0; i < list.size(); i++) {
			if (list.size() == 0) {
				notif = "La lista está vacía.";
			} else {
				if (list.get(i).getId().equals(id)) {
					list.get(i).setNombre(nombre);
					list.get(i).setFechanacimiento(fechanacimiento);
					list.get(i).setEdad(edad);
					list.get(i).setColegioegresado(colegioegresado);
					list.get(i).setId(id);
					list.get(i).setCarrera(carrera);
					list.get(i).setEstrato(estrato);
					list.get(i).setHomologa(homologa);
					list.get(i).setFoto(foto);
					notif = "¡Aspirante modificado con éxito!";
					writeFile();
				} else {
					notif = "¡Aspirante no enconctrado!";
				}
			}
		}
		return notif;
	}

	public String listarPorCarrera() {
		return null;
	}

	public String mostrarInfoAspirante() {
		sb = new StringBuilder();
		for (AspiranteDTO a : list) {
			sb.append(a.toString());
		}
		return sb.toString();
	}
}
