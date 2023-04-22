package co.edu.unbosque.model;

import java.io.File;

public class AspiranteDTO {

	private String nombre;
	private String fechanacimiento;
	private int edad;
	private String colegioegresado;
	private String id;
	private String carrera;
	private String estrato;
	private String homologa;
	private File foto;

	public AspiranteDTO(String nombre, String fechanacimiento, int edad, String colegioegresado, String id,
			String carrera, String estrato, String homologa, File foto) {
		super();
		this.nombre = nombre;
		this.fechanacimiento = fechanacimiento;
		this.edad = edad;
		this.colegioegresado = colegioegresado;
		this.id = id;
		this.carrera = carrera;
		this.estrato = estrato;
		this.homologa = homologa;
		this.foto = foto;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getFechanacimiento() {
		return fechanacimiento;
	}

	public void setFechanacimiento(String fechanacimiento) {
		this.fechanacimiento = fechanacimiento;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	public String getColegioegresado() {
		return colegioegresado;
	}

	public void setColegioegresado(String colegioegresado) {
		this.colegioegresado = colegioegresado;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCarrera() {
		return carrera;
	}

	public void setCarrera(String carrera) {
		this.carrera = carrera;
	}

	public String getEstrato() {
		return estrato;
	}

	public void setEstrato(String estrato) {
		this.estrato = estrato;
	}

	public String getHomologa() {
		return homologa;
	}

	public void setHomologa(String homologa) {
		this.homologa = homologa;
	}

	public File getFoto() {
		return foto;
	}

	public void setFoto(File foto) {
		this.foto = foto;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return getNombre() + "," + getFechanacimiento() + "," + getEdad() + "," + getColegioegresado() + "," + getId()
				+ "," + getCarrera() + "," + getEstrato() + "," + getHomologa() + "," + getFoto() + "\n";
	}
}
