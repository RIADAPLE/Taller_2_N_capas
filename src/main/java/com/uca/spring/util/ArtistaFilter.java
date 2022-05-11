package com.uca.spring.util;

public class ArtistaFilter {
	
	private String value;

    private String name;
    
    private String group;


	public ArtistaFilter(String value, String name) {
		this.value = value;
        this.name = name;
	}
	
	public ArtistaFilter(String value, String name, String group) {
		this.value = value;
        this.name = name;
        this.group = group;
	}
	
	public String getValue() {
	    return value;
	}

	public void setValue(String value) {
	    this.value = value;
	}

	public String getName() {
	    return name;
	}

	public void setName(String name) {
	    this.name = name;
	}

	public String getGroup() {
	    return group;
	}

	public void setGroup(String group) {
	    this.group = group;
	}

}
