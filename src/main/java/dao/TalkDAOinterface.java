package dao;

import java.util.List;

import vo.TalkVO;

public interface TalkDAOinterface {
	public boolean insert(TalkVO vo);
	public boolean update(TalkVO vo);
	public boolean delete(int id);
	public List<TalkVO> listAll(int num);
	public TalkVO listOne(int id) ;
	public List<TalkVO> listWriter(String writer);
	public List<TalkVO> search(String key, String searchType);
}
