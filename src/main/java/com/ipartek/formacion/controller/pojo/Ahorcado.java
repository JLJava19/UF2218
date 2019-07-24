package com.ipartek.formacion.controller.pojo;

public class Ahorcado {
	public static final int INTENTOS = 7;

	private char[] palabra = { 'v', 'i', 'e', 'r', 'n', 'e', 's' };
	private char[] palabraBuscar = new char[palabra.length];

	public Ahorcado() {
		super();
		for (int i = 0; i < palabraBuscar.length; i++) {
			this.palabraBuscar[i] = '_';
		}
		
		
		
	}

	/**
	 * 
	 * @param caracter
	 * @return true si se encuentra el caracter en el array
	 */
	private boolean comprobrarCaracter(char caracter) {

		boolean encontrado = false;

		// boolean[] encontrados = new boolean [palabra.length];

		for (int i = 0; i < palabra.length; i++) {
			if (palabra[i] == caracter) {
				setPalabraBuscar(caracter, i);
				encontrado = true;
				// break;
			}
		}

		return encontrado;
	}

	
	/**
	 * 
	 * @return string con los caracteres que se han acertado
	 */
	private String mostrarResultado() {
		String palabra = "";

		for (int i = 0; i < palabraBuscar.length; i++) {
			palabra = palabra + " " + palabraBuscar[i];
		}

		return palabra;
	}

	private boolean comprobar() {

		boolean exacto = true;

		for (int i = 0; i < palabraBuscar.length; i++) {
			if (palabraBuscar[i] == '_') {
				exacto = false;
			}

		}

		return exacto;
	}
	
	

	public Alert jugar( char caract) {
		int intentos = INTENTOS;
		//char caract = '_';
		
		Alert alerta = new Alert ("warning", "Cuidadd");
		boolean acierto = false;
		
		
		
		


			caract = Character.toLowerCase(caract);
			
			if (comprobrarCaracter(caract)) {
				System.out.println("Muy bien \n");

			} else {
				System.out.println("Muy mallllll \n");
				intentos = intentos - 1;
			}

			System.out.println(mostrarResultado());

			acierto = comprobar();

			
		
		
		if (intentos == 0 && !acierto) {
			
			System.out.println("SE ACABO, HAS PERDIDO");

		}else {
			System.out.println("Felicidades!!!!!");
		}
		
		return Alert
	}

//*******************************************************************************

	public void setPalabraBuscar(char caracterBuscar, int posicion) {

		this.palabraBuscar[posicion] = caracterBuscar;
	}


}
