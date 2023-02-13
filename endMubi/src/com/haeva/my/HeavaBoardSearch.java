package com.haeva.my;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boardDAO.BoardDAO;
import boardVO.BoardVO;

public class HeavaBoardSearch implements HeavaImpl {

	@Override
	public void haeva(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		int bunho = Integer.parseInt(request.getParameter("number"));
		
		BoardDAO bdao = new BoardDAO();
	
		BoardVO vo = bdao.getOneBoard(bunho);
		
		request.setAttribute("vo", vo);
		request.setAttribute("snumber", bunho);

	}

}
