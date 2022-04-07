package boxOffice.service.store;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import boxOffice.dao.MemberDao;
import boxOffice.dao.MovieDao;
import boxOffice.dao.StoreDao;
import boxOffice.dao.TheaterDao;
import boxOffice.model.Member;
import boxOffice.model.Movie;
import boxOffice.model.Theater;

public class Store implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		return "store";
	}

}
