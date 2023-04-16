
import java.io.Serializable;
import java.util.Date;

public class VehiculoDTO implements Serializable{
	private String marca;
	private String modelo;
	private String placa;
	private String fechasoli;
	private String propietario;
	
	public VehiculoDTO(String marca, String modelo, String placa, String fechasoli, String propietario) {
		super();
		this.marca = marca;
		this.modelo = modelo;
		this.placa = placa;
		this.fechasoli = fechasoli;
		this.propietario = propietario;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public String getPlaca() {
		return placa;
	}

	public void setPlaca(String placa) {
		this.placa = placa;
	}

	public String getPropietario() {
		return propietario;
	}

	public void setPropietario(String propietario) {
		this.propietario = propietario;
	}

	public String getFechasoli() {
		return fechasoli;
	}

	public void setFechasoli(String fechasoli) {
		this.fechasoli = fechasoli;
	}
	
	
}
