package dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.TalkVO;

@Repository
public class TalkDAO implements TalkDAOinterface {
	
	@Autowired
	SqlSession session = null;
	
	public boolean insert(TalkVO vo) {
		System.out.println("Mybatis 를 사용 DB 연동-insert ");
		boolean result = false;

		// sql session 객체를 만들때 true를 준다.
		// true를 준다는 것은 자동 commit 모드가 활성화 된다.

		String statement = "resource.TalkMapper.insertTalk";
		if (session.insert(statement, vo) == 1)
			result = true;

//		 
		return result;
	}
	
	
	public boolean update(TalkVO vo) {
		System.out.println("Mybatis 를 사용 DB 연동-update ");
		boolean result = false;

		// sql session 객체를 만들때 true를 준다.
		// true를 준다는 것은 자동 commit 모드가 활성화 된다.

		System.out.println(vo.getId());
		String statement = "resource.TalkMapper.updateTalk";
		if (session.update(statement, vo) == 1)
			result = true;

		return result;
	}


	public boolean delete(int eNo) {
		System.out.println("Mybatis 를 사용 DB 연동-delete ");
		boolean result = false;

		// sql session 객체를 만들때 true를 준다.
		// true를 준다는 것은 자동 commit 모드가 활성화 된다.

		String statement = "resource.TalkMapper.deleteTalk";
		if (session.insert(statement, eNo) == 1)
			result = true;
 
		return result;
	}
	

	
	public List<TalkVO> listAll(PagingControl paging) {
		//System.out.println("Mybatis 를 사용 DB 연동-listAll ");
		
		paging.postCnt = session.selectOne("resource.TalkMapper.selectTotalTalkNum");
		
		
		List<TalkVO> list = new ArrayList<TalkVO>();
		String statement = "resource.TalkMapper.selectTalk";
		list = session.selectList(statement,paging.getPgNum());

		System.out.println(session.getClass().getName());
		return list;
	}


	public TalkVO listOne(int id) {
		System.out.println("Mybatis 를 사용 DB 연동-listOne ");

		// sql session 객체를 만들때 true를 준다.
		// true를 준다는 것은 자동 commit 모드가 활성화 된다.

		String statement = "resource.TalkMapper.selectOneTalk";
		TalkVO searchOne = session.selectOne(statement, id);
		
		searchOne.setCnt(searchOne.getCnt()+1);
		statement = "resource.TalkMapper.updateViews";
		session.update(statement,searchOne);
			
		return searchOne;
	}


	
	public List<TalkVO> search(String key, String searchType)  {
		List<TalkVO> list = null;
		
		System.out.println("Mybatis 를 사용 DB 연동-search");


		String statement = null;
		if(searchType.equals("listwriter")) 
			statement = "resource.TalkMapper.searchWriterTalk";
		else if (searchType.equals("content"))
			statement = "resource.TalkMapper.searchContentTalk";
		else 
			statement = "resource.TalkMapper.searchTitleTalk";

		list = session.selectList(statement,key);
		return list;
	}

	@Override
	public List<TalkVO> listWriter(String writer) {
		return search(writer,"listwriter");
	}


	@Override
	public List<TalkVO> listAll(int num) {	// TODO Auto-generated method stub
		return null;
	}


}
