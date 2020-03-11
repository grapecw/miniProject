package my.spring.miniproject;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class NotebookBrandController {
	
	private static final Logger logger = LoggerFactory.getLogger(NotebookBrandController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/notebookSAMSUNG", method = RequestMethod.GET)
	public String notebookSAMSUNG(Locale locale, Model model) {

		
		return "notebookSAMSUNG";
	}
	
	@RequestMapping(value = "/notebookLG", method = RequestMethod.GET)
	public String nobookLG(Locale locale, Model model) {
		
		return "notebookLG";
	}
	
	@RequestMapping(value = "/notebookAPPLE", method = RequestMethod.GET)
	public String notebookAPPLE(Locale locale, Model model) {

		
		return "notebookAPPLE";
	}
	
	@RequestMapping(value = "/notebookMSI", method = RequestMethod.GET)
	public String notebookMSI(Locale locale, Model model) {

		
		return "notebookMSI";
	}
	
	@RequestMapping(value = "/notebookHANSUNG", method = RequestMethod.GET)
	public String notebookHANSUNG(Locale locale, Model model) {
	
		
		return "notebookHANSUNG";
	}
	
	@RequestMapping(value = "/notebookASUS", method = RequestMethod.GET)
	public String notebookASUS(Locale locale, Model model) {
		
		
		return "notebookASUS";
	}
	
	@RequestMapping(value = "/notebookLENOVO", method = RequestMethod.GET)
	public String notebookLENOVO(Locale locale, Model model) {

		
		return "notebookLENOVO";
	}
	
}
