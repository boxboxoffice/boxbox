package boxOffice.service.store;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Store2 implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		
		request.getParameter("image");
		request.getParameter("pdPrice");
		request.getParameter("pdName");
		request.getParameter("pdCode");
		return "store2";
	}

}
