package my.spring.miniproject;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
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
	  return "index";
	}
	@RequestMapping(value = "/write1", method = RequestMethod.POST)
	public ModelAndView upboardWrite(ProdReviewVO vo) {
		
		ModelAndView mav = new ModelAndView();
//		boolean result = dao.insert(vo);
//		if (result)
//			System.out.println("삽입 성공");
//		else
//			System.out.println("삽입 실패");
//
////		mav.addObject("list", listAll());
		mav.setViewName("uploadboard");
		System.out.print(vo.getViewContenxt());
		return mav;
	}
	
	
//	@PostMapping("/image")
//    @ResponseBody
//    public ResponseEntity<?> handleFileUpload(@RequestParam("file") MultipartFile file) {
//        try {
//            UploadFile uploadedFile = imageService.store(file);
//            return ResponseEntity.ok().body("/image/" + uploadedFile.getId());
//        } catch (Exception e) {
//            e.printStackTrace();
//            return ResponseEntity.badRequest().build();
//        }
//    }
	
	
	@Autowired
	ServletContext context; 
	
	@RequestMapping("/image")
	public ModelAndView saveFile(MultipartRequest mreq) {
		ModelAndView mav = new ModelAndView();
		List<MultipartFile> list = mreq.getFiles("mfile");
		String resultStr = "";
		mav.setViewName("boardWrite");
		for (MultipartFile mfile : list) {
			String fileName = mfile.getOriginalFilename();
			try {
				System.out.println(context.getRealPath("/"));
				String fileInfo = context.getRealPath("/") + "resources/img/"+fileName;
				// context.getRealPath 컨드롤러, 즉 이 프로젝트의 최상히 폴더를 추출하는 문장
				// 특정 위치에 올리면 클라이언트가 접근을 하지 못한, 그러니까 클라이언트가 접근 가능한 폴더인 resources에 올리기 위해서
				File f = new File(fileInfo);
				System.out.println(fileInfo);
				if (f.exists()) {
					
					resultStr += fileName + " : 파일이 이미 존재해요!!<br>";
				} else {
					mfile.transferTo(new File(fileInfo));
					resultStr += fileName + " : 파일이 저장되었어요!!<br>";
				}
			} catch (IOException e) {
				e.printStackTrace();
				resultStr += fileName + " : 오류가 발생했어요!!";				
			}
		}
		mav.addObject("msg", resultStr);	
		return mav;
	}
	
}
