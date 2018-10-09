package com.swift.controller;

import java.io.BufferedWriter;
import java.io.File;
//import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class GenFile {
	
	private String swift;
	private String fileName;
	
	public GenFile(String s, String f){
		this.swift = s;
		this.fileName = f;
	}
	
	public void writeToFile() throws IOException{
		BufferedWriter writer = new BufferedWriter(new FileWriter(fileName));
		writer.write(swift);
		//System.out.println(fileName);
		writer.close();
		File f= new File(fileName);
		System.out.println(f.getAbsolutePath());
	}

}
