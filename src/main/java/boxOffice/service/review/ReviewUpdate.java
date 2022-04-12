package boxOffice.service.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boxOffice.dao.ReviewDao;
import boxOffice.model.Review;

public class ReviewUpdate implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		Review review = new Review();
		String rvTitle = request.getParameter("rvTitle");
		int mvGrade = Integer.parseInt(request.getParameter("mvGrade"));
		String rvContent = request.getParameter("rvContent");
		int rvNum = Integer.parseInt(request.getParameter("rvNum"));
		
		review.setRvTitle(rvTitle);
		review.setMvGrade(mvGrade);
		review.setRvContent(rvContent);
		review.setRvNum(rvNum);
		
		request.setAttribute("rvNum", rvNum);
		
		String pageNum = request.getParameter("pageNum");
		ReviewDao rd = ReviewDao.getInstance();
		int result = rd.update(review);

		request.setAttribute("result", result);
		request.setAttribute("pageNum", pageNum);
		
		return "reviewUpdate";
	}

}
