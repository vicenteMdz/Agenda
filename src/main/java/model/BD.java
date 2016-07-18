package model;

import java.util.ArrayList;
import java.util.List;

public class BD{
	
	private BD obj1;
	private Persona p;
	private String message;
	private String nombre;
	private String telefono;
	private String direccion;
	private List<Persona> lista=new ArrayList<Persona>();
	
	public void setContacto(){
		p=new Persona(nombre,telefono, direccion);
		lista.add(p);
	}
	
	public BD(){
		
	}

	private List<Persona> getLista() {
		return lista;
	}

	private void setLista(List<Persona> lista) {
		this.lista = lista;
	}

	private String getMessage() {
		return message;
	}

	private void setMessage(String message) {
		this.message = message;
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
	
	 public static void main(String[] args) {
		 
	 }
	
}
