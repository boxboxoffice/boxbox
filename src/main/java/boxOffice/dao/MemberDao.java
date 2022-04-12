package boxOffice.dao;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import boxOffice.model.*;

public class MemberDao {
	private static MemberDao instance = new MemberDao();
	private MemberDao() {	
	}
	public static MemberDao getInstance() {
		return instance;
	}
	
	private static SqlSession session;
	static {  
		try {
			Reader reader = Resources.getResourceAsReader("configuration.xml");
			SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(reader);
			session = ssf.openSession(true);
		} catch (Exception e) {
			System.out.println("연결에러 : " + e.getMessage());
		}
	}
	public Member select(String id) {
		return (Member) session.selectOne("memberbo.select",id);
	}
	
	public int insert(Member member) { 
		return session.insert("memberbo.insert", member);
	}
	public void plusScore(String id) {
		// TODO Auto-generated method stub
		
	}
	public int selectScore(String id) {
		
		return (int)session.update("memberbo.selectScore",id);
	}
	public int reduceScore(String id) {
		return session.update("memberbo.reduceScore",id);
		
	}
	public int textcountAdd(String id) {
		return session.update("memberbo.textcountAdd", id); 
		
	}
	public int ticketcountAdd(String id) {
		return session.update("memberbo.ticketcountAdd", id);
		
	}
	public int memberDel(String id) {
		return session.update("memberbo.memberDel", id);
		
	}
}
