package com.ipartek.formacion.model;

public class Youtube {
	private int id;
	private String titulo;
	private String codigo;
	
	public Youtube(int id, String titulo, String codigo) {
		super();
		this.id = id;
		this.titulo = titulo;
		this.codigo = codigo;
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	@Override
	public String toString() {
		return "Youtube [titulo=" + titulo + ", codigo=" + codigo + "]";
	}
	
	
	
}
