package boxOffice.service.movie;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boxOffice.dao.ScreenDao;
import boxOffice.dao.TheaterDao;
import boxOffice.model.Screen;
import boxOffice.model.Theater;

public class MovieWriteForm implements CommandProcess {

	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		TheaterDao td=TheaterDao.getInstance();
		ScreenDao sc=ScreenDao.getInstance();
		List<Theater> list=td.getTheaterlist();
		List<Screen> list2=sc.getScreenlist();
		request.setAttribute("list", list);
		request.setAttribute("list2", list2);
		return "movieWriteForm";
	}

}
