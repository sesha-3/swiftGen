package com.swift.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Random;

public class AutoGenString {
	
	int length;
	
	protected String generateString(int length) {
        String CHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        StringBuilder str = new StringBuilder();
        Random rnd = new Random();
        while (str.length() < length) { // length of the random string.
            int index = (int) (rnd.nextFloat() * CHARS.length());
            str.append(CHARS.charAt(index));
        }
        String finalStr = str.toString();
        return finalStr;
    }
	
	protected String generateNumber(int length) {
        String CHARS = "1234567890";
        StringBuilder str = new StringBuilder();
        Random rnd = new Random();
        while (str.length() < length) { // length of the random string.
            int index = (int) (rnd.nextFloat() * CHARS.length());
            str.append(CHARS.charAt(index));
        }
        String finalStr = str.toString();
        return finalStr;
    }
	
	protected String generateDate() {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyyMMdd");
		LocalDate localDate = LocalDate.now();
		String finalStr = dtf.format(localDate);
		return finalStr;
	}
	
	protected String generateTime() {
		GregorianCalendar gcalendar = new GregorianCalendar();
		String finalStr = String.valueOf(gcalendar.get(Calendar.HOUR)) + String.valueOf(gcalendar.get(Calendar.MINUTE));
		return finalStr;
	}
}
