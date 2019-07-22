package com.ipartek.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetPostController
 */
@WebServlet("/getpost")
public class GetPostController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Metodo GET " + crearHTML("get", request.getParameter("nombre")));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Metodo POST " + crearHTML("post", request.getParameter("nombre")));
	}

	private String crearHTML(String metodo, String parametro) {
		String html = "<h1>Bienvenido ";
		
		switch (metodo) {
		case "get":
			html += parametro + " por metodo GET";
			break;
		case "post":
			html += parametro + " por metodo POST";
			break;

		default:
			break;
		}

		html += "</h1>";

		return html;
	}

}
