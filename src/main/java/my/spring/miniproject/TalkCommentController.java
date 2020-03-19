package my.spring.miniproject;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import dao.TalkCommentDAO;
import vo.LoginVO;
import vo.TalkCommentVO;

@Controller
@RequestMapping("/comment")
public class TalkCommentController {
	
	@Autowired
	TalkCommentDAO commentdao= null;
	
	@RequestMapping(value="/list", produces = "application/json; charset=utf-8")
	@ResponseBody
	public String c_list(int boardID) throws JsonProcessingException {
		
		List<TalkCommentVO> list = null;
		System.out.println("-------------------" + boardID);
		list = commentdao.listAll(boardID);
		System.out.println("컨트롤러com-리스트사이즈 출력"+list.size());
		
		return new ObjectMapper().writeValueAsString(list);
	}

	@ResponseBody
	@RequestMapping(value="/delete", produces = "application/json; charset=utf-8")
	public ModelAndView commentDelete(int c_id) {
		ModelAndView mav = new ModelAndView();
		boolean result = commentdao.delete(c_id);
		if (result)
			System.out.println("컨트롤러com-삭제 성공");
		else
			System.out.println("컨트롤러com-삭제 실패");

	//	mav.addObject("c_list", c_list());
		mav.setViewName("comment");

		return mav;
		//return "redirect:/talk_listone"; 
	}

	@ResponseBody
	@RequestMapping(value="/insert")
	public String commentInsert(HttpSession loginsession,TalkCommentVO vo) {
		//ModelAndView mav = new ModelAndView();
		LoginVO login = (LoginVO) (loginsession.getAttribute("login"));
		String resultstr = "";
		System.out.println( vo.toString());
		vo.setWriter(login.getNickName());
		vo.setId(login.getIDCord());
		boolean result = commentdao.insert(vo);
		if (result) {
			resultstr = "success";	
			System.out.println("컨트롤러com-삽입 성공");
			System.out.println( vo.toString());
		}else {
			resultstr = "fail";
			System.out.println("컨트롤러com-삽입 실패");
		}
	//	mav.addObject("c_list", c_list());
	//	mav.setViewName("comment");

		return resultstr;
	}

	@ResponseBody
	@RequestMapping(value="/update", produces = "application/json; charset=utf-8")
	public ModelAndView commentUpdate(TalkCommentVO vo) {
		ModelAndView mav = new ModelAndView();
		boolean result = commentdao.update(vo);
		if (result)
			System.out.println("컨트롤러com-업데이트 성공");
		else
			System.out.println("컨트롤러com-업데이트 실패");
	//	mav.addObject("c_list", c_list());
		mav.setViewName("comment");
		return mav;
		//return "redirect:/talk_listone";
	}

}
