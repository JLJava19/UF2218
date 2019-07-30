package com.ipartek.formacion.controller;

import java.io.IOException;
import java.util.Locale;
import java.util.ResourceBundle;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class IdiomaController
 */
@WebServlet("/i18n")
public class IdiomaController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
  
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String idiomaSeleccionado = request.getParameter("idiomaSeleccionado");
		
		if ( idiomaSeleccionado == null ) {
			idiomaSeleccionado = "eu_ES";
		}
		
		
		String language = idiomaSeleccionado.split("_")[0];
		String country = idiomaSeleccionado.split("_")[1];
		String ruta = request.getParameter("ruta");
		// TODO No coge bien a ruta la primera vez
		//ruta = ruta.split("UF2218/")[1];
		ruta=null;
		Locale locale = new Locale(language, country);		
		ResourceBundle properties = ResourceBundle.getBundle ( "i18n/i18nmessages", locale );
		
		HttpSession session = request.getSession();
		session.setAttribute("idiomaSeleccionado", idiomaSeleccionado);
		
		
		request.setAttribute("mensajeIdioma", properties.getString("menu.inicio") );
		
		// request.setAttribute("mensajeIdioma", idiomaSeleccionado);
		if (ruta!=null) {
			request.getRequestDispatcher(ruta).forward(request, response);
		}else {
			request.getRequestDispatcher("ejemplos/i18n.jsp").forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		doGet(request, response);
	}

}
