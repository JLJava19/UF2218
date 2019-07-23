package com.ipartek.formacion.controller.listener;

import java.util.ArrayList;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class UsuariosLogeadosListener
 *
 */
@WebListener
public class UsuariosLogeadosListener implements HttpSessionListener, HttpSessionAttributeListener {

	public static String nombre = "Variable publica y statica, TODO lo mismo pero para una coleccion";
	public static ArrayList<String> lista;

	/**
	 * Default constructor.
	 */
	public UsuariosLogeadosListener() {
		lista = new ArrayList<String>();
	}

	/**
	 * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
	 */
	public void sessionCreated(HttpSessionEvent se) {
		// session creada

	}

	/**
	 * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
	 */
	public void sessionDestroyed(HttpSessionEvent se) {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpSessionAttributeListener#attributeAdded(HttpSessionBindingEvent)
	 */
	public void attributeAdded(HttpSessionBindingEvent event) {
		Boolean encontrado = false;
		HttpSession session = event.getSession();
		String nombre = (String) session.getAttribute("usuario");
		for (int i=0; i < lista.size(); i++) {
			if (lista.get(i).equals(nombre)) {
				encontrado = true;
				break;
			}
		}
		if (!encontrado) {
			lista.add(nombre);
		}
	}

	/**
	 * @see HttpSessionAttributeListener#attributeRemoved(HttpSessionBindingEvent)
	 */
	public void attributeRemoved(HttpSessionBindingEvent event) {
		Boolean encontrado = false;
		HttpSession session = event.getSession();
		String nombre = (String) session.getAttribute("usuario");
		
		
		for (int i=0; i < lista.size(); i++) {
			if (lista.get(i).equals(nombre)) {
				encontrado = true;
				break;
			}
		}
		if (encontrado) {
			lista.remove(nombre);
		}
		
		//lista.remove(nombre);
	}

	/**
	 * @see HttpSessionAttributeListener#attributeReplaced(HttpSessionBindingEvent)
	 */
	public void attributeReplaced(HttpSessionBindingEvent event) {
		// TODO Auto-generated method stub
	}

}