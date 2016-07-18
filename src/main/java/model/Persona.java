package model;

public class Persona {
	
	public String nombre;
	private String telefono;
	private String direccion;
	
	public Persona(){
		
	}
	
	public Persona(String n, String t, String d){
		this.nombre=n;
		this.telefono=t;
		this.direccion=d;
	}
	
	private String getNombre() {
		return nombre;
	}
	private void setNombre(String nombre) {
		this.nombre = nombre;
	}
	private String getTelefono() {
		return telefono;
	}
	private void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	private String getDireccion() {
		return direccion;
	}
	private void setDireccion(String direccion) {
		this.direccion = direccion;
	}

}
