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

import dao.ProductDAO;
import dao.ProductReviewDAO;
import vo.LoginVO;
import vo.ProdReviewVO;
import vo.ProdVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class NotebookMenuController {

	@Autowired
	ProductReviewDAO dao = null;
	
	@Autowired
	ProductDAO prodao = null;

	private static final Logger logger = LoggerFactory.getLogger(NotebookMenuController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/notebookMenu", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "notebookMenu";
	}

	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public ModelAndView boardWrite(String prodID) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("prodID", prodID);
		mav.setViewName("boardWrite");
		return mav;
	}

	@RequestMapping(value = "/viewReview", method = RequestMethod.GET)
	public ModelAndView boardWrite(HttpSession session, int reViewID, String prodID) {
		ModelAndView mav = new ModelAndView();
		ProdVO prodvo = prodao.selectOne(prodID);
		mav.addObject("prodvo", prodvo);
		mav.addObject("item", dao.selectOne(reViewID));
		mav.setViewName("viewReview");

		return mav;
	}
	
	@RequestMapping(value = "/viewReview/update", method = RequestMethod.GET)
	public ModelAndView boardUpdate(int reViewID, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("item", dao.selectOne(reViewID));
		mav.setViewName("boardUpdate");
		
		return mav;
	}
	
	@RequestMapping(value = "/viewReview/updatetwo", method = RequestMethod.POST)
	public String boardUpdatetwo(ProdReviewVO vo, HttpSession session, int ViewStar) {
		LoginVO login = (LoginVO) (session.getAttribute("login"));
//		System.out.print("????:"+vo.getProdID());
//		System.out.print(login.getIDCord()+"\t"+ViewStar);
		vo.setIdCord(login.getIDCord());
		vo.setNickName(login.getNickName());
		vo.setIdEmail(login.getIDEmail());
		vo.setViewStar(ViewStar);
//		System.out.print(vo.getViewStar());
		boolean result = dao.update(vo);
		if (result)
			System.out.println("성공");
		else
			System.out.println("실패");
//		System.out.print(prodao.selectOne(vo.getProdID()).getPName());
//		System.out.print(vo.getViewContenxt());
		return "redirect:/uploadboard/" + vo.getProdID();
	}

	@RequestMapping(value = "/viewReview/delete", method = RequestMethod.GET)
	public String reViewDelete(int reViewID, HttpSession session) {

//		System.out.println("11111" + (LoginVO) (session.getAttribute("login")));

		ProdReviewVO vo = dao.selectOne(reViewID);
		if (session.getAttribute("login") != null) {
			if (((LoginVO) (session.getAttribute("login"))).getIDCord() != vo.getIdCord()) {
				System.out.print("안됨");
			} else {
				boolean result = dao.delete(reViewID);
				if (result)
					System.out.println("성공");
				else
					System.out.println("실패");
			}
		}
		return "redirect:/uploadboard/" + vo.getProdID();

	}

	@RequestMapping(value = "/write1", method = RequestMethod.POST)
	public String upboardWrite(ProdReviewVO vo, HttpSession session, int ViewStar) {
		LoginVO login = (LoginVO) (session.getAttribute("login"));
//		System.out.print(login.getIDCord()+"\t"+ViewStar);
		vo.setIdCord(login.getIDCord());
		vo.setNickName(login.getNickName());
		vo.setIdEmail(login.getIDEmail());
		vo.setViewStar(ViewStar);
//		System.out.print(vo.getViewStar());
		boolean result = dao.insert(vo);
		if (result)
			System.out.println("성공");
		else
			System.out.println("실패");

//		System.out.print(vo.getViewContenxt());
		return "redirect:uploadboard/" + vo.getProdID();
	}

	@Autowired
	ServletContext context;

	@RequestMapping(value = "/image", produces = "text/plain; charset=utf-8")
	@ResponseBody
	public String saveFile(MultipartRequest mreq) {

		String fileInfo = null;
		ModelAndView mav = new ModelAndView();
		List<MultipartFile> list = mreq.getFiles("file");
		String resultStr = "";
		mav.setViewName("boardWrite");

		for (MultipartFile mfile : list) {

			String fileName = mfile.getOriginalFilename();
			try {

				fileInfo = context.getRealPath("/") + "resources/img/" + fileName;
				File f = new File(fileInfo);
				System.out.println(fileInfo);
				if (f.exists()) {
					resultStr = "/miniproject/resources/img/" + fileName;
				} else {
					mfile.transferTo(new File(fileInfo));
					resultStr = "/miniproject/resources/img/" + fileName;
				}
			} catch (IOException e) {
				e.printStackTrace();

			}
		}
		return resultStr;
	}

}
