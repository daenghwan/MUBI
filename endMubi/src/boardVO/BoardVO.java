package boardVO;

public class BoardVO {
	private int number;
	private String snsjemok ;
	private String snswriter;
	private String snscontent;
	
	
	public BoardVO(int number, String snsjemok, String snswriter, String snscontent) {
		this.number = number;
		this.snsjemok = snsjemok;
		this.snswriter = snswriter;
		this.snscontent = snscontent;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getSnsjemok() {
		return snsjemok;
	}
	public void setSnsjemok(String snsjemok) {
		this.snsjemok = snsjemok;
	}
	public String getSnswriter() {
		return snswriter;
	}
	public void setSnswriter(String snswriter) {
		this.snswriter = snswriter;
	}
	public String getSnscontent() {
		return snscontent;
	}
	public void setSnscontent(String snscontent) {
		this.snscontent = snscontent;
	}
}
