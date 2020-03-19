package my.spring.miniproject;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import dao.TalkDAO;
import dao.PagingControl;
import vo.TalkVO;


@SessionAttributes("paging")
@Controller
public class TalkController {
	
	@Autowired
	TalkDAO talkdao = null;
	
	@ModelAttribute("paging")
	public PagingControl zeroProd() { 
		int result = 1;
		return new PagingControl(result);
	}

	public List<TalkVO> listAll(PagingControl paging) {
		List<TalkVO> list = null;
		list = talkdao.listAll(paging);
		return list;
	}

	@RequestMapping("/talk")
	public ModelAndView talkmain(
			@RequestParam(value="pagenum", defaultValue="1")int pagenum,
			@ModelAttribute("paging") PagingControl paging) {
		ModelAndView mav = new ModelAndView();
		paging.pgNum=pagenum;
		System.out.println((paging.pgNum*10-9)+ "and" +(10*paging.pgNum));
		mav.addObject("list", listAll(paging));
		mav.setViewName("talk");

		return mav;
	}

	@RequestMapping("/talk/listOne")
	public ModelAndView talkView(int talkid) {
		//System.out.print("컨트롤러-리스트원");
		ModelAndView mav = new ModelAndView();
		mav.addObject("column", talkdao.listOne(talkid));
		mav.setViewName("talk_listone");

		return mav;
	}

	@RequestMapping("/talk/delete")
	public String  talkDel(int talkid) {
		boolean result = talkdao.delete(talkid);
		if (result)
			System.out.println("컨트롤러-삭제 성공");
		else
			System.out.println("컨트롤러-삭제 실패");

		return "redirect:/talk"; 
	}

	@RequestMapping("/talk/search")
	public ModelAndView talkSearch(String searchkeyword, String searchtype) {
		ModelAndView mav = new ModelAndView();
		List<TalkVO> list = null;
		
		if (searchtype.equals("제목")) {
			list = talkdao.search(searchkeyword, "null");
		} else if (searchtype.equals("글쓴이")) {
			list = talkdao.search(searchkeyword, "listwriter");
		} else if (searchtype.equals("내용")) {
			list = talkdao.search(searchkeyword, "content");
		}
		mav.addObject("list", list);
		mav.setViewName("talk");
		return mav;
	}

	@RequestMapping("/talk/writer")
	public ModelAndView talkSearch(String searchkeyword) {
		ModelAndView mav = new ModelAndView();
		List<TalkVO> list = null;
		list = talkdao.search(searchkeyword, "listwriter");

		mav.addObject("list", list);
		mav.setViewName("talk");

		return mav;
	}
	
	//insert page 호출하기
	 @RequestMapping(value = "/talk/insert")	
		public String board1() {
		 System.out.println("insert-컨트롤러1");
			return "/talk_insert";
		}
	 //insert를 실제 구현(글쓰기 및 저장)
	@RequestMapping(value = "/talk/insert2")
	public ModelAndView talkSearch(TalkVO vo,
			@ModelAttribute("paging") PagingControl paging) {
		ModelAndView mav = new ModelAndView();
		boolean result = talkdao.insert(vo);
		if (result)
			System.out.println("컨트롤러-삽입 성공");
		else
			System.out.println("컨트롤러-삽입 실패");

		mav.addObject("list", listAll(paging));
		mav.setViewName("talk");

		return mav;
	}

	
	@RequestMapping(value = "/talk/update")
	public String talkUpdate(TalkVO vo) {
		boolean result = talkdao.update(vo);
		if (result)
			System.out.println("컨트롤러-업데이트 성공");
		else
			System.out.println("컨트롤러-업데이트 실패");
		return "redirect:/talk";
	}

}
