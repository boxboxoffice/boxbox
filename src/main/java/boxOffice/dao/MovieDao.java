package boxOffice.dao;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import boxOffice.model.Movie;


public class MovieDao {
	private static MovieDao instance = new MovieDao();
	private MovieDao() {}
	public static MovieDao getInstance() {
		return instance;
	}
	private static SqlSession session;
	static {	
		try {
			Reader reader = Resources.getResourceAsReader("configuration.xml");
			SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(reader);
			session = ssf.openSession(true);
		}catch (Exception e) {
			System.out.println("연결에러 : "+e.getMessage());
		}
	}

	@SuppressWarnings("unchecked")
	public List<Movie> mainList() {
		return session.selectList("moviens.mainList");
	}
	
	public int getTotalComing() {
		int total=0;
		return (int)session.selectOne("moviens.gettotalComing", total);
	}

	public int getTotalNow() {
		int total=0;
		return (int)session.selectOne("moviens.gettotalNow", total);
	}
	
	
	public int getTotalClosed() {
		int total=0;
		return (int)session.selectOne("moviens.gettotalClosed", total);
	}
	
	@SuppressWarnings("unchecked")
	public List<Movie> selectNowList(int startRow, int endRow) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		return session.selectList("moviens.selectNowList", map);
	}
	public Movie select(int mvCode) {
		return (Movie)session.selectOne("moviens.select", mvCode);

	}
	public List<Movie> selectClosedList(int startRow, int endRow) {
		// TODO Auto-generated method stub
		return null;

	}
	public List<Movie> selectComingList(int startRow, int endRow) {
		// TODO Auto-generated method stub
		return null;
	}

	
}