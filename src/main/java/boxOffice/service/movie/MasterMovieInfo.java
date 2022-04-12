package boxOffice.service.movie;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boxOffice.dao.MovieDao;
import boxOffice.model.Movie;

public class MasterMovieInfo implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		Integer mvCode = Integer.parseInt(request.getParameter("mvCode"));
		MovieDao md=MovieDao.getInstance();
		Movie movie=md.select(mvCode);
		
		request.setAttribute("movie", movie);
		
		
		return "masterMovieInfo";
	}

}