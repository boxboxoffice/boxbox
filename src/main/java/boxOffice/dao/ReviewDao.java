package boxOffice.dao;

import java.io.Reader;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import boxOffice.model.Review;

public class ReviewDao {

	private static ReviewDao instance = new ReviewDao();
	private ReviewDao() {}
	public static ReviewDao getInstance() {
		return instance;
	}
	
	private static SqlSession session;
	static {
			try {
				Reader reader = Resources.getResourceAsReader("configuration.xml");
				SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(reader);
				session = ssf.openSession(true);
			}catch (Exception e) {
				System.out.println("review 연결에러 : " + e.getMessage());
			}
	}
	public int getTotal() {
		return (int) session.selectOne("reviewns.getTotal");
	}
	@SuppressWarnings("unchecked")
	public List<Review> reviewList(int startRow, int endRow) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		return session.selectList("reviewns.reviewList", map);
	}
	public int insert(Review review) {
		return session.insert("reviewns.insert", review);
	}
	public void readCountUpdate(int rvNum) {
		session.update("reviewns.readCountUpdate", rvNum);
	}
	public int delete(int rvNum) {
		return session.delete("reviewns.delete", rvNum);
	}
	public Review select(int rvNum) {
		return (Review) session.selectOne("reviewns.select", rvNum);
	}
	public int update(Review review) {
		return session.update("reviewns.update", review);
	}
	public void updateLike(int rvNum) {
		session.update("reviewns.updateLike", rvNum);
	}
	public void mvCodeUpdate(Review review) {
		session.update("reviewns.mvCodeUpdate", review);
		
	}
	@SuppressWarnings("unchecked")
	public List<Review> review0List(int startRow, int endRow) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		return session.selectList("reviewns.review0List", map);
	}
	@SuppressWarnings("unchecked")
	public List<Review> reviewBatList(int startRow, int endRow) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		return session.selectList("reviewns.reviewBatList", map);
	}
	@SuppressWarnings("unchecked")
	public List<Review> reviewMathList(int startRow, int endRow) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		return session.selectList("reviewns.reviewMathList", map);
	}
	@SuppressWarnings("unchecked")
	public List<Review> reviewMoonList(int startRow, int endRow) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		return session.selectList("reviewns.reviewMoonList", map);
	}
	@SuppressWarnings("unchecked")
	public List<Review> reviewSingList(int startRow, int endRow) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		return session.selectList("reviewns.reviewSingList", map);
	}
	@SuppressWarnings("unchecked")
	public List<Review> reviewSpiList(int startRow, int endRow) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		return session.selectList("reviewns.reviewSpiList", map);
	}
	public int deleteMaster(int rvNum) {
		return session.delete("reviewns.deleteMaster", rvNum);
	}
	
	@SuppressWarnings("unchecked")
	public List<Review> reviewMyList(int startRow1, int endRow1, String id) {
		HashMap<String, String> map=new HashMap<String, String>();
		String startRow = Integer.toString(startRow1);
		String endRow = Integer.toString(endRow1);
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("id", id);
		
		return session.selectList("reviewns.mylist",map);
	}
	public int get0Total() {
		return (int) session.selectOne("reviewns.get0Total");
	}
	public int getSpiTotal() {
		return (int) session.selectOne("reviewns.getSpiTotal");
	}
	public int getBatTotal() {
		return (int) session.selectOne("reviewns.getBatTotal");
	}
	public int getMathTotal() {
		return (int) session.selectOne("reviewns.getMathTotal");
	}
	public int getMoonTotal() {
		return (int) session.selectOne("reviewns.getMoonTotal");
	}
	public int getSingTotal() {
		return (int) session.selectOne("reviewns.getSingTotal");
	}
}