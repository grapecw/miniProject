package vo;

public class TalkCommentVO {
	    private int c_id;       	// 댓글 글번호
	    private int boardID;     	// 게시글 번호
	    private int id;				//사람id
	    private String writer;    	// 댓글 작성자
	    private String content;   	// 댓글 내용
	    private String writedate;	// 댓글 작성일
		
	    public int getC_id() {
			return c_id;
		}
		public void setC_id(int c_id) {
			this.c_id = c_id;
		}
		public int getBoardID() {
			return boardID;
		}
		public void setBoardID(int boardID) {
			this.boardID = boardID;
		}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getWriter() {
			return writer;
		}
		public void setWriter(String writer) {
			this.writer = writer;
		}
		public String getContent() {
			return content;
		}
		public void setContent(String content) {
			this.content = content;
		}
		public String getWritedate() {
			return writedate;
		}
		public void setWritedate(String writedate) {
			this.writedate = writedate;
		}
	
	public String toString() {
		return String.format("%5s %5s %10s %10s %50s %10s", this.c_id, this.boardID, this.id, this.writer, this.content, this.writedate);
	}
}
