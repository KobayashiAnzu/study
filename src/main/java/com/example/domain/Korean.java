package com.example.domain;

import javax.validation.constraints.NotBlank;

import lombok.Data;

@Data

public class Korean {

	private Integer id;
	@NotBlank
	private String name;
	@NotBlank
	private String reading;
	@NotBlank
	private String mean;
	private String category;



}