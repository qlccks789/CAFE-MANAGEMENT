package kr.co.bitguys.repository.dao;

import java.util.List;

import kr.co.bitguys.repository.vo.CommentVO;
import kr.co.bitguys.repository.vo.MemberVO;
import kr.co.bitguys.repository.vo.ReviewImageVO;
import kr.co.bitguys.repository.vo.ReviewPageVO;
import kr.co.bitguys.repository.vo.ReviewVO;

public interface ReviewMapper {
	public List<ReviewVO> selectBoardByNo(ReviewPageVO page);
//	public List<ReviewImageVO> selectReviewPageList(ReviewPageVO page);
	public int selectReviewCount();
	public void insertReview(ReviewVO review);
	public void insertReviewImage(ReviewImageVO reviewImage);
	public List<ReviewImageVO> selectFilesByNo(int no);
	public ReviewVO selectDetailReview(int no);
	public List<ReviewVO> selectBoardMemNo(int memNo);
	
	// 댓글
//	public List<CommentVO> selectCommentByNo(int no);
	public void insertComment(CommentVO comment);
	public void deleteComment(int commentNo);
	public void updateComment(CommentVO comment);
	public List<CommentVO> selectCommentName(int no);
	
	// 회원닉네임 가져오기
	public MemberVO selectUserNickname(int no);
}
