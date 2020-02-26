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
//			System.out.println("�궫�엯 �꽦怨�");
//		else
//			System.out.println("�궫�엯 �떎�뙣");
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
		System.out.println("들어왔니?");
		ModelAndView mav = new ModelAndView();
		List<MultipartFile> list = mreq.getFiles("file");
		String resultStr = "";
		mav.setViewName("boardWrite");
		System.out.println("여긴 옴??");
		for (MultipartFile mfile : list) {
			System.out.println("여기는??");
			String fileName = mfile.getOriginalFilename();
			try {
				System.out.println(context.getRealPath("/"));
				String fileInfo = context.getRealPath("/") + "resources/img/"+fileName;
				// context.getRealPath 而⑤뱶濡ㅻ윭, 利� �씠 �봽濡쒖젥�듃�쓽 理쒖긽�엳 �뤃�뜑瑜� 異붿텧�븯�뒗 臾몄옣
				// �듅�젙 �쐞移섏뿉 �삱由щ㈃ �겢�씪�씠�뼵�듃媛� �젒洹쇱쓣 �븯吏� 紐삵븳, 洹몃윭�땲源� �겢�씪�씠�뼵�듃媛� �젒洹� 媛��뒫�븳 �뤃�뜑�씤 resources�뿉 �삱由ш린 �쐞�빐�꽌
				File f = new File(fileInfo);
				System.out.println(fileInfo);
				if (f.exists()) {
					
					resultStr += fileName + " : �뙆�씪�씠 �씠誘� 議댁옱�빐�슂!!<br>";
				} else {
					mfile.transferTo(new File(fileInfo));
					resultStr += fileName + " : �뙆�씪�씠 ���옣�릺�뿀�뼱�슂!!<br>";
				}
			} catch (IOException e) {
				e.printStackTrace();
				resultStr += fileName + " : �삤瑜섍� 諛쒖깮�뻽�뼱�슂!!";				
			}
		}
		mav.addObject("msg", resultStr);	
		return mav;
	}
	
}
