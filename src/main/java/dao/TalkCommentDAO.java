package dao;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.LoginVO;
import vo.TalkCommentVO;

@Repository
public class TalkCommentDAO{
	@Autowired
	SqlSession session = null;
	
	public List<TalkCommentVO> listAll(int boardID) {
		System.out.println("Mybatis 를 사용 commDB 연동-listall ");
		List<TalkCommentVO> list = new ArrayList<TalkCommentVO>();
		String statement = "resource.TalkCommentMapper.selectTalkComment";
		list = session.selectList(statement, boardID);
		
		System.out.println("DAO COMMENT-리스트사이즈 출력"+list.size());
		return list;
	}
	public boolean insert(TalkCommentVO vo) {
		System.out.println("Mybatis 를 사용 commDB 연동-insert ");
		
		boolean result = false;
		
		String statement = "resource.TalkCommentMapper.insertTalkComment";
		if (session.insert(statement, vo) == 1)
			result = true;
		return result;
	}
	
	
	public boolean update(TalkCommentVO vo) {
		System.out.println("Mybatis 를 사용 commDB 연동-update ");
		boolean result = false;
	
		String statement = "resource.TalkCommentMapper.updateTalkComment";
		if (session.update(statement, vo) == 1)
			result = true;

		return result;
	}


	public boolean delete(int eNo) {
		System.out.println("댓글 Mybatis 를 사용 commDB 연동-delete ");
		boolean result = false;
		String statement = "resource.TalkCommentMapper.deleteTalkComment";
		if (session.insert(statement, eNo) == 1)
			result = true;
 
		return result;
	}
	
	
	

}
