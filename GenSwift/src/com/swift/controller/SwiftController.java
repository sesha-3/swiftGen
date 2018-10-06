/**
 * The main controller is here.
 */
package com.swift.controller;


import java.util.Iterator;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

/**
 * @author int-Elligence
 *
 */

@Controller
@RequestMapping("/")
public class SwiftController {
	
	AutoGenString gen = new AutoGenString();
	
	String basic_header = "{1:";
	String user_header = "{2:";
	String app_header = "{3:";
	String text_block = "{4:";
	String trailer_block = "{5:";

	@RequestMapping(value="/Swift-Text",
            method=RequestMethod.POST,
            consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
	
	ModelAndView generateHeader(@RequestBody MultiValueMap<String,String> formData){
		
		String swiftcode = formData.getFirst("swiftcode");
		String Swiftcode = formData.getFirst("Swiftcode");
		ModelAndView mav = new ModelAndView();
		//BasicHeaderBlock starts here
		String session_number = gen.generateNumber(4);
		String sequence_number = gen.generateNumber(6);
		
		basic_header = basic_header + "F01" + swiftcode + session_number + sequence_number + "}";
		//BasicHeaderBlock ends here
		
		//ApplicationHeaderBlock starts here
		//NOTE:: HAVE TO ADD LogicalTerminalCode (X/Z) to SWIFT_CODE
		String itime = gen.generateTime();
		String idate = gen.generateDate();
		String otime = gen.generateTime();
		String odate = gen.generateDate();
		String app_type = formData.getFirst("direction");
		String MT = formData.getFirst("MT");
		String priority = formData.getFirst("msgPriority");
		if(app_type.equals("I")) {
			app_header = app_header + app_type + MT + Swiftcode + priority +"3003}";
		}
		else {
			app_header = app_header + app_type + MT + itime + idate
									+ Swiftcode + odate + otime + priority +"}";
		}
		//ApplicationHeaderBlock ends here
		
		//UserHeaderBlock starts here
		String MUR = gen.generateString(16);
		user_header = user_header + "{113:SEPA}{108:"+MUR+"}}";
		//UserHeaderBlock ends here
		
		
		
		//TrailerBlock starts here
		String chksum = gen.generateString(12);
		trailer_block = trailer_block + "{CHK:" + chksum + "}}";
		//TrailerBlock ends here
		
		System.out.println(basic_header);
		System.out.println(user_header);
		System.out.println(app_header);
		System.out.println(trailer_block);
		
		mav.setViewName("Swift-Text");
		return mav;
	}

	@RequestMapping(value="/Swift-Output",
            method=RequestMethod.POST,
            consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
	
	ModelAndView generateBody(@RequestBody MultiValueMap<String,String> formData){
		
		   Iterator<String> it = formData.keySet().iterator();
		   while(it.hasNext()){
	           String theKey = (String)it.next();
	           formData.getFirst(theKey);
	       }
		ModelAndView mav = new ModelAndView();
		text_block = text_block + ":16R:GENL:20C::SEME//"+formData.getFirst("20C")
					+ ":98C::PREP//"+ gen.generateDate() + gen.generateTime() + ":16S:GENL" +
				      ":98A::SETT//"+gen.generateDate()+ "::35B:ISIN" + formData.getFirst("35B") + ":16S:TRADDET"
				      + ":16R:FIAC" + ":36B::SETT//UNIT/"+formData.getFirst("36B")
				      + ":97A::SAFE//" + formData.getFirst("97A") + ":16S:FIAC"
				      + ":16R:SETDET:22F::"+formData.getFirst("22Fqual") + "//"+formData.getFirst("22Fcode")
				      + ":16R:SETPRTY:95A::"+formData.getFirst("95A")+"/"+formData.getFirst("partyval") + ":16S:SETPRTY"
				      + ":16S:SETDET\n-}";
		mav.addObject(text_block);
		
		String swiftt = basic_header + "\n" + user_header + "\n" + app_header + "\n" + text_block + "\n" + trailer_block;
		System.out.println(swiftt);
		
		return mav;
		
	}
	
}
