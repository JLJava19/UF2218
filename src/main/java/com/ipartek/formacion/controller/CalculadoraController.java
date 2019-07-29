package com.ipartek.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ipartek.formacion.controller.pojo.Alert;

/**
 * Servlet implementation class CalculadoraController
 */
@WebServlet("/calculadora")
public class CalculadoraController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public static final int OP_SUMAR = 1;
    public static final int OP_RESTAR = 2;
    public static final int OP_MULTIPLICAR = 3;
    public static final int OP_DIVIDIR = 4;
   
    public static final String VIEW_INDEX = "ejemplos/calculadora.jsp";
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
		
		
		
		if (!isNumeric(request.getParameter("inputNumero1").trim().replaceAll(",", ".")) || !isNumeric(request.getParameter("inputNumero2").trim().replaceAll(",", "."))) {
			request.setAttribute("mensaje", new Alert("danger", "Zorrrooooo" ));
		}else {
		
		
			float numero1 = Float.parseFloat(request.getParameter("inputNumero1").trim().replaceAll(",", "."));
			float numero2 = Float.parseFloat(request.getParameter("inputNumero2").trim().replaceAll(",", "."));
			int inputOperacion = Integer.parseInt(request.getParameter("inputOperacion"));
			
			float resultado = 0f;
			String mensaje = "-";
			
			try {
				switch (inputOperacion) {
				case OP_SUMAR:
					resultado = numero1 + numero2;
					break;
				case OP_RESTAR:
					resultado = numero1 - numero2;
					break;
				case OP_MULTIPLICAR:
					resultado = numero1 * numero2;
					break;
				case OP_DIVIDIR:
					if (numero1==0 || numero2==0)
					{
						request.setAttribute("mensaje", new Alert("warning", "Fuck you!" ));
					}else {
						resultado = numero1 / numero2;
					}
					
					break;
				default:
					request.setAttribute("mensaje", new Alert("warning", "Ooopps" ));
					break;
				}
			}catch(Exception e) {
				request.setAttribute("mensaje", new Alert("danger", e.getMessage() ));
			}finally {
				request.setAttribute("mensaje", new Alert("success", "Bravo" ));
				request.setAttribute("inputNumero1", numero1);
				request.setAttribute("inputNumero2", numero2);
				request.setAttribute("resultado", resultado);
				
				request.setAttribute("op", inputOperacion);
			}
			
			
			
		}
		request.getRequestDispatcher(VIEW_INDEX).forward(request, response);
	}
	
	public static boolean isNumeric(String cadena) {

        boolean resultado;

        try {
            Float.parseFloat(cadena);
            resultado = true;
        } catch (NumberFormatException excepcion) {
            resultado = false;
        }

        return resultado;
    }

}
