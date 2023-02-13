package com.haeva.my;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boardDAO.BoardDAO;

public class HeavaBoardDelete implements HeavaImpl {

	@Override
	public void haeva(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		int number = Integer.parseInt(request.getParameter("number"));
		
		BoardDAO bdao = new  BoardDAO();
		
		bdao.BoardDelete(number);
				
	}

}
