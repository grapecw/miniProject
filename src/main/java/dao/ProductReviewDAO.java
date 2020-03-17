package dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import vo.PagingControl;
import vo.FindReviewVO;
import vo.ProdReviewVO;
import vo.StarSelectVO;

@Repository
public class ProductReviewDAO {

	@Autowired
	SqlSession session = null;

	public ProdReviewVO selectOne(int id) {
		// TODO Auto-generated method stub
		System.out.println("Mybatis 를 사용 DB 연동-selectOne");

		String statement = "resource.prodReviewMapper.selectReview";

		ProdReviewVO searchOne = session.selectOne(statement, id);

//		searchOne.setCnt(searchOne.getCnt()+1);
//		statement = "resource.NewsMapper.updateViews";
//		session.update(statement,searchOne);

		return searchOne;
	}

	public boolean insert(ProdReviewVO vo) {
		// TODO Auto-generated method stub
		System.out.println("Mybatis 를 사용 DB 연동-insert ");

		boolean result = false;

		// sql session 객체를 만들때 true를 준다.
		// true를 준다는 것은 자동 commit 모드가 활성화 된다.

		String statement = "resource.prodReviewMapper.insertReview";
		if (session.insert(statement, vo) == 1)
			result = true;

		return result;
	}

	public List<ProdReviewVO> listAll(String prodID,PagingControl paging) {
		// TODO Auto-generated method stub
		System.out.println("Mybatis 를 사용 DB 연동-listAll ");

		paging.postCnt = session.selectOne("resource.prodReviewMapper.selectReviewCount", prodID);
		
		FindReviewVO fpage = new FindReviewVO();
		fpage.setPgNum(paging.getPgNum());
		fpage.setProdID(prodID);
		fpage.setPostCnt(paging.postCnt);
		
		List<ProdReviewVO> list = new ArrayList<ProdReviewVO>();
		
		String statement = "resource.prodReviewMapper.selectReviewList";
		System.out.println(fpage.pgNum);
		list = session.selectList(statement, fpage);

		System.out.println(session.getClass().getName());
		return list;
	}

	public List<StarSelectVO> selectStar(String prodID) {
		System.out.println("Mybatis 를 사용 DB 연동-selectStar ");

		List<StarSelectVO> list = new ArrayList<StarSelectVO>();
		String statement = "resource.prodReviewMapper.selectReviewstar";
		System.out.println(prodID);
		list = session.selectList(statement, prodID);

		System.out.println(session.getClass().getName());
		return list;
	}

	public boolean delete(int reViewID) {
		// TODO Auto-generated method stub

		System.out.println("Mybatis 를 사용 DB 연동-delete ");
		boolean result = false;

		String statement = "resource.prodReviewMapper.deleteReview";
		if (session.insert(statement, reViewID) == 1)
			result = true;

		return result;
	}
	
	public boolean update(ProdReviewVO vo) {
		System.out.println("Mybatis 를 사용 DB 연동-update ");
		boolean result = false;

		// sql session 객체를 만들때 true를 준다.
		// true를 준다는 것은 자동 commit 모드가 활성화 된다.
		System.out.print("리뷰 아이디:"+vo.getReViewID());
		String statement = "resource.prodReviewMapper.updateReview";
		if (session.update(statement, vo) == 1)
			result = true;
		System.out.print(vo.getIdCord());
		return result;
	}

//	public boolean insert(NewsVO vo) {
//		// TODO Auto-generated method stub
//
//		System.out.println("Mybatis 를 사용 DB 연동-insert ");
//		boolean result = false;
//
//		// sql session 객체를 만들때 true를 준다.
//		// true를 준다는 것은 자동 commit 모드가 활성화 된다.
//
//		String statement = "resource.NewsMapper.insertNews";
//		if (session.insert(statement, vo) == 1)
//			result = true;
//
////		 
//		return result;
//	}
//	
//	
//	public boolean update(NewsVO vo) {
//		System.out.println("Mybatis 를 사용 DB 연동-update ");
//		boolean result = false;
//
//		// sql session 객체를 만들때 true를 준다.
//		// true를 준다는 것은 자동 commit 모드가 활성화 된다.
//
//		System.out.println(vo.getId());
//		String statement = "resource.NewsMapper.updateNews";
//		if (session.update(statement, vo) == 1)
//			result = true;
//
//		return result;
//	}
//
//
//	public boolean delete(int eNo) {
//		// TODO Auto-generated method stub
//
//		System.out.println("Mybatis 를 사용 DB 연동-delete ");
//		boolean result = false;
//
//		// sql session 객체를 만들때 true를 준다.
//		// true를 준다는 것은 자동 commit 모드가 활성화 된다.
//
//		String statement = "resource.NewsMapper.deleteNews";
//		if (session.insert(statement, eNo) == 1)
//			result = true;
// 
//		return result;
//	}
//	
//
//	
//	public List<NewsVO> listAll(PagingControl paging) {
//		// TODO Auto-generated method stub
//		System.out.println("Mybatis 를 사용 DB 연동-listAll ");
//		
//		paging.postCnt = session.selectOne("resource.NewsMapper.selectTotalNewsNum");
//		
//		
//		List<NewsVO> list = new ArrayList<NewsVO>();
//		String statement = "resource.NewsMapper.selectNews";
//		list = session.selectList(statement,paging.getPgNum());
//
//		System.out.println(session.getClass().getName());
//		return list;
//	}
//
//
//	public NewsVO listOne(int id) {
//		// TODO Auto-generated method stub
//
//		System.out.println("Mybatis 를 사용 DB 연동-listOne ");
//
//		// sql session 객체를 만들때 true를 준다.
//		// true를 준다는 것은 자동 commit 모드가 활성화 된다.
//
//		String statement = "resource.NewsMapper.selectOneNews";
//		NewsVO searchOne = session.selectOne(statement, id);
//		
//		searchOne.setCnt(searchOne.getCnt()+1);
//		statement = "resource.NewsMapper.updateViews";
//		session.update(statement,searchOne);
//			
//		return searchOne;
//	}
//
//
//	
//	public List<NewsVO> search(String key, String searchType)  {
//		// TODO Auto-generated method stub
//		List<NewsVO> list = null;
//		
//		System.out.println("Mybatis 를 사용 DB 연동-search");
//
//
//		String statement = null;
//		if(searchType.equals("listwriter")) 
//			statement = "resource.NewsMapper.searchWriterNews";
//		else 
//			statement = "resource.NewsMapper.searchTitleNews";
//
//		list = session.selectList(statement,key);
//		return list;
//	}
//
//	@Override
//	public List<NewsVO> listWriter(String writer) {
//		// TODO Auto-generated method stub
//		return search(writer,"listwriter");
//	}
//
//
//	@Override
//	public List<NewsVO> listAll(int num) {
//		// TODO Auto-generated method stub
//		return null;
//	}

}
