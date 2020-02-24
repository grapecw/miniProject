package my.spring.miniproject;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.ProductReviewDAO;
import vo.ProdReviewVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	ProductReviewDAO dao = null;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	@RequestMapping(value = "/uploadboard", method = RequestMethod.GET)
	public ModelAndView uploadboard() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("posting", dao.selectOne(1));
		mav.setViewName("uploadboard");

		return mav;
	}
	
	@RequestMapping(value = "/prodBoard", method = RequestMethod.GET)
	public String prodBoard() {
		return "prodBoard";
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String boardWrite() {
	  return "boardWrite";
	}
	@RequestMapping(value = "/write1", method = RequestMethod.POST)
	public ModelAndView upboardWrite(ProdReviewVO vo) {
		
		ModelAndView mav = new ModelAndView();
		boolean result = dao.insert(vo);
		if (result)
			System.out.println("삽입 성공");
		else
			System.out.println("삽입 실패");

//		mav.addObject("list", listAll());
		mav.setViewName("uploadboard");

		return mav;
	}
	
}
