package com.ipartek.formacion.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipartek.formacion.controller.pojo.Alert;


/**
 * Servlet implementation class ListadoNombres
 */
@WebServlet("/nombres")
public class ListadoNombres extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public ArrayList<String> lista = new ArrayList<String>();   
	private static Alert mensaje = new Alert("danger", "No se ha encontrado resultados");  
	
	public ListadoNombres() {
		super();
		lista.add("Manolo");
		lista.add("Jose");
		lista.add("Pablo");
		lista.add("Asier");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String vista = "ejemplos/nombres.jsp";
		String buscar = request.getParameter("buscar");
		
		if (buscar!=null && !buscar.trim().isEmpty()) {
			//Buscar los nombres
			ArrayList<String> listaFiltrada = new ArrayList<String>();
	
			/*for(int i=0; i<lista.size();i++) {*/
			for (String nombre : lista) {
				/*if (lista.get(i).toString().toLowerCase().equals(nombre.toLowerCase())){*/
				if (nombre.toLowerCase().contains(buscar.toLowerCase())) {	
					//listaFiltrada.add(lista.get(i));
					listaFiltrada.add(nombre);
				}
			}
			
			if (listaFiltrada.size() > 0) {
				mensaje.setTipo("success");
				mensaje.setTexto("Se han encontrado " + listaFiltrada.size() + " coincidencias");
			}else {
				mensaje.setTexto("No se ha encontrado ningún nombre [" + buscar + "]");
			}
			request.setAttribute("listadoNombres", listaFiltrada);
			request.setAttribute("buscar", buscar);
			request.setAttribute("mensaje", mensaje);
		}else {
			request.setAttribute("listadoNombres", lista);
		}
		
		
		request.getRequestDispatcher(vista).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String vista = "ejemplos/nombres.jsp";
		String nombre = request.getParameter("nombre");

		mensaje.setTipo("Mensaje no valido");
		
		if (nombre != null) {
			if ("".equalsIgnoreCase(nombre)){
				mensaje.setTipo("warning");
				mensaje.setTipo("Por favor, escribe bien");
			}else {
				lista.add(nombre);
				mensaje.setTipo("success");
				mensaje.setTipo("Usario creado");
			}
			
		}
		
		request.setAttribute("mensaje", mensaje);
		request.setAttribute("listadoNombres", lista);
		request.getRequestDispatcher(vista).forward(request, response);
	}

}
