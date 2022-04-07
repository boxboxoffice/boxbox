package boxOffice.dao;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import boxOffice.model.Movie;
import boxOffice.model.Store;

public class StoreDao {

	private static StoreDao instance = new StoreDao();
	private StoreDao() {}
	public static StoreDao getInstance() {
		return instance;
	}
	
	private static SqlSession session;
	static {
			try {
				Reader reader = Resources.getResourceAsReader("configuration.xml");
				SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(reader);
				session = ssf.openSession(true);
			}catch (Exception e) {
				System.out.println("event 연결에러 : " + e.getMessage());
			}
	}
	public Store select(int pdCode) {
		return (Store)session.selectOne("storest.select", pdCode);
		
	}
}
