package boxOffice.service.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import boxOffice.dao.MemberDao;
import boxOffice.dao.MovieDao;
import boxOffice.dao.ReviewDao;
import boxOffice.model.Review;

public class ReviewWrite implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		Review review = new Review();
		
		String rvTitle = request.getParameter("rvTitle");
		String id= (String)session.getAttribute("id");
		String mvTitle = request.getParameter("mvTitle");
		int mvGrade = Integer.parseInt(request.getParameter("mvGrade"));
		String rvContent = request.getParameter("rvContent");
		int mvCode = review.getMvCode();
		
		MemberDao md = MemberDao.getInstance();
		md.textcountAdd(id); 
		md.scoreUpRe(id);
		
		if(mvTitle.equals("스파이더맨 노 웨이 홈")) {			
			mvCode = 1;
		} else if (mvTitle.equals("극장판 주술회전 0")) {				
			mvCode = 4;
		} else if (mvTitle.equals("더 배트맨")) {			
			mvCode = 6;
		} else if (mvTitle.equals("씽2게더")) {			
			mvCode = 9;
		} else if (mvTitle.equals("이상한 나라의 수학자")) {			
			mvCode = 16;
		}	else {			
			mvCode = 18;
		}

		ReviewDao rd = ReviewDao.getInstance();
		rd.mvCodeUpdate(review);	// 영화코드 변경
		
		MovieDao mv = MovieDao.getInstance();
		int nowGrade = mv.getGrade(mvCode);
		int mvCodeCount = rd.getCodeTotal(mvCode);
		
		if (mvCodeCount==0) {
			int gradeUp = (nowGrade+mvGrade)/2;
			mv.updateGrade(gradeUp, mvCode);
		} else {
			int gradeUp = ((nowGrade*(mvCodeCount))+mvGrade)/(mvCodeCount+1);
			mv.updateGrade(gradeUp, mvCode);
		}
		
		review.setRvTitle(rvTitle);
		review.setId(id);
		review.setMvTitle(mvTitle);
		review.setMvCode(mvCode);
		review.setMvGrade(mvGrade);
		review.setRvContent(rvContent);
		
		int result = rd.insert(review);		// 리뷰등록
		
		request.setAttribute("result", result);
		

		return "reviewWrite";
	}

}
