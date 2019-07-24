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
 * Servlet implementation class AhorcadoController
 */
@WebServlet("/ahorcado")
public class AhorcadoController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public static final String VIEW_INDEX = "ejemplos/ahorcado.jsp";
    public static final int INTENTOS = 7;

	private char[] palabra = { 'v', 'i', 'e', 'r', 'n', 'e', 's' };
	private char[] palabraBuscar = new char[palabra.length];
	
	public AhorcadoController() {
		super();
		for (int i = 0; i < palabraBuscar.length; i++) {
			this.palabraBuscar[i] = '_';
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		char letra = (Character) request.getParameter("inputLetra"));
		
		
		
		
		request.setAttribute("inputNumero2", numero2);
		request.setAttribute("resultado", resultado);
		request.getRequestDispatcher(VIEW_INDEX).forward(request, response);
		
		
	}

}
