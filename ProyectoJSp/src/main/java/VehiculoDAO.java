
import java.util.ArrayList;
import java.util.Date;

public class VehiculoDAO {
	
	private ArrayList<VehiculoDTO> vehiculos;
	
	public VehiculoDAO() {
		this.vehiculos = new ArrayList<VehiculoDTO>();
	}
	
	public void agregarVehiculo(String marca, String modelo, String placa, String fechasoli, String propietario) {
		VehiculoDTO vehiculo = new VehiculoDTO(marca,modelo,placa,fechasoli,propietario);
		vehiculos.add(vehiculo);
	}
	public String listarVehiculos() {
		String lista = "";
		for (int i =0;i<vehiculos.size();i++) {
		 lista +=
				  "Marca: "+ vehiculos.get(i).getMarca()+ " " + 
				  "Modelo: " + vehiculos.get(i).getModelo() + " "+
				  "Placa: " + vehiculos.get(i).getPlaca() + " "+
				  "Fecha de solicitud: " + vehiculos.get(i).getFechasoli()+ " " +
				  "Nombre del propietario: " + vehiculos.get(i).getPropietario() + "\n";
				  
		}
		return lista;
	}
	public ArrayList<VehiculoDTO> getVehiculos() {
		return vehiculos;
	}

	public void setVehiculos(ArrayList<VehiculoDTO> vehiculos) {
		this.vehiculos = vehiculos;
	}

}
