package com.haeva.my;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boardDAO.BoardDAO;

public class HeavaBoardUpdate implements HeavaImpl {

	@Override
	public void haeva(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		BoardDAO bdao = new BoardDAO();
		//number,snsjemok, snswriter, snscontent
		int number = Integer.parseInt(request.getParameter("number"));
		String snsjemok = request.getParameter("snsjemok");
		String snswriter = request.getParameter("snswriter");
		String snscontent = request.getParameter("snscontent");
		
		int snumber = Integer.parseInt(request.getParameter("snumber"));
		
		bdao.BoardUpdate(number,snsjemok,snswriter,snscontent,snumber);
			
	}

}
