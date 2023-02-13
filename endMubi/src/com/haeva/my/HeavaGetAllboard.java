package com.haeva.my;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boardDAO.BoardDAO;
import boardVO.BoardVO;

public class HeavaGetAllboard implements HeavaImpl {

	@Override
	public void haeva(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		BoardDAO bdao = new BoardDAO();
		
		ArrayList<BoardVO> alist = bdao.getAllboard();
		
		request.setAttribute("alist", alist);
	}

}
