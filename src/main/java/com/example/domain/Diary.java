package com.example.domain;

import java.util.Date;

import javax.validation.constraints.NotBlank;

import lombok.Data;

@Data
public class Diary {

	private Integer id;
	@NotBlank
	private String title;
	@NotBlank
	private String contents;
	private Date created;
    private String feeling;

}