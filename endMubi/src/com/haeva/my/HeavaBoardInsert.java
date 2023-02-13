package com.haeva.my;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boardDAO.BoardDAO;

public class HeavaBoardInsert implements HeavaImpl {

	@Override
	public void haeva(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		BoardDAO bdao = new BoardDAO();
		
		int number = Integer.parseInt(request.getParameter("number"));
		String snsjemok = request.getParameter("snsjemok");
		String snswriter = request.getParameter("snswriter");
		String snscontent = request.getParameter("snscontent");
		
		bdao.BoardInsert(number, snsjemok, snswriter, snscontent);
	}

}
