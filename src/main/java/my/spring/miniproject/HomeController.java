package my.spring.miniproject;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.ModelAndView;

import dao.ProductReviewDAO;
import vo.LoginVO;
import vo.ProdReviewVO;
import vo.ProdVO;

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
		
		mav.setViewName("uploadboard");

		return mav;
	}
	
	@RequestMapping(value = "/prodBoard", method = RequestMethod.GET)
	public String prodBoard() {
//		ModelAndView mav = new ModelAndView();
//
//		mav.addObject("list", dao.listAll(11111));
//		mav.setViewName("prodBoard");

		return "prodBoard";
	}
	
	@RequestMapping(value = "/insertProd", method = RequestMethod.GET)
	public String insertProd() {
//		ModelAndView mav = new ModelAndView();
//
//		mav.addObject("list", dao.listAll(11111));
//		mav.setViewName("prodBoard");

		return "insertProd";
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public ModelAndView boardWrite(String prodID) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("prodID",prodID);
		mav.setViewName("boardWrite");
		return mav;
	}
	
	@RequestMapping(value = "/viewReview", method = RequestMethod.GET)
	public ModelAndView boardWrite(int reViewID, HttpSession session) {
		ModelAndView mav = new ModelAndView();
	
		mav.addObject("item", dao.selectOne(reViewID));
		mav.setViewName("viewReview");
		System.out.print("22222:"+session.getAttribute("sessionId"));
		return mav;
	}
	
	@RequestMapping(value = "/write1", method = RequestMethod.POST)
	public ModelAndView upboardWrite(ProdReviewVO vo,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		LoginVO login=(LoginVO) (session.getAttribute("login"));
		System.out.print(login.getIDCord());
		vo.setIDCord(login.getIDCord());
		vo.setNickName(login.getNickName());
		vo.setIDEmail(login.getIDEmail());
		boolean result = dao.insert(vo);
		if (result)
			System.out.println("성공");
		else
			System.out.println("실패");
		
		mav.setViewName("uploadboard/"+vo.getProdID());
		System.out.print(vo.getViewContenxt());
		return mav;
	}
	
	@Autowired
	ServletContext context; 
	
	@RequestMapping(value = "/image", produces = "text/plain; charset=utf-8")
	@ResponseBody
	public String saveFile(MultipartRequest mreq) {

		String fileInfo=null;
		ModelAndView mav = new ModelAndView();
		List<MultipartFile> list = mreq.getFiles("file");
		String resultStr = "";
		mav.setViewName("boardWrite");

		for (MultipartFile mfile : list) {

			String fileName = mfile.getOriginalFilename();
			try {

				fileInfo = context.getRealPath("/") + "resources/img/"+fileName;
				File f = new File(fileInfo);
				System.out.println(fileInfo);
				if (f.exists()) {
					resultStr = "/miniproject/resources/img/"+fileName;
				} else {
					mfile.transferTo(new File(fileInfo));
					resultStr = "/miniproject/resources/img/"+fileName;
				}
			} catch (IOException e) {
				e.printStackTrace();
	
			}
		}
		return resultStr;
	}
	
}
