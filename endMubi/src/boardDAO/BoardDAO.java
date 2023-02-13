package boardDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import boardConnection.BoardConn;
import boardVO.BoardVO;

public class BoardDAO {
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public BoardDAO() throws ClassNotFoundException, SQLException {
		conn = new  BoardConn().getConn();
	}
	
	public ArrayList<BoardVO>  getAllboard() throws SQLException {
		
		ArrayList<BoardVO> alist = new ArrayList<BoardVO>();
		
		String sql = "SELECT * FROM mvcsnsboard ORDER BY bunho";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while (rs.next()) {
			BoardVO vo = null;
			
			int number = rs.getInt(1);
			String snsjemok = rs.getString(2) ;
			String snswriter =  rs.getString(3);
			String snscontent = rs.getString(4);
			
			vo = new BoardVO(number,snsjemok, snswriter, snscontent);
			
			System.out.println(vo.getNumber());
			
			alist.add(vo);
		}
		
		return alist;
	}
	
	public BoardVO getOneBoard(int bunho) throws SQLException {
		
		String sql = "SELECT * FROM mvcsnsboard WHERE bunho=?";
		
		pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, bunho);
		rs = pstmt.executeQuery();
		
		rs.next();
		
		int number = rs.getInt(1);
		String snsjemok = rs.getString(2) ;
		String snswriter =  rs.getString(3);
		String snscontent = rs.getString(4);
		
		BoardVO vo = new BoardVO(number,snsjemok, snswriter, snscontent);
			
		return vo;
	}

	public boolean BoardUpdate(int number, String snsjemok, String snswriter, String snscontent, int snumber) throws SQLException {
		
		String sql = "UPDATE mvcsnsboard set bunho=?, snsjemok=?, snswriter=?, snscontent=? where bunho=?";
		
		pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, number);
		pstmt.setString(2, snsjemok);
		pstmt.setString(3, snswriter);
		pstmt.setString(4, snscontent);
		pstmt.setInt(5, snumber);
		
		pstmt.executeUpdate();
		
		return true;
	}

	public boolean BoardInsert(int number, String snsjemok, String snswriter, String snscontent) throws SQLException {
		String sql = "INSERT INTO mvcsnsboard (bunho, snsjemok, snswriter, snscontent) VALUES (?,?,?,?)";
		
		pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, number);
		pstmt.setString(2, snsjemok);
		pstmt.setString(3, snswriter);
		pstmt.setString(4, snscontent);
		
		pstmt.executeUpdate();
		
		return true;
	}

	public boolean BoardDelete(int number) throws SQLException {
	
		String sql = "DELETE FROM mvcsnsboard WHERE bunho=?";
		
		pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, number);
		
		pstmt.executeQuery();
		
		return true;
	}
}
