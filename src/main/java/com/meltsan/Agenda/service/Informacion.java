/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.meltsan.Agenda.service;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.core.Response;

@Path("/contacto")
/**
 *
 * @author Meltsan
 */
public class Informacion {
    	@GET
	@Path("/{param}")
	public Response sayInfo(@PathParam("param") String name) {
		String output = "Informacion de: " + name;
		return Response.status(200).entity(output).build();              
	}
}
