package kr.go.police.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.police.action.Action;
import kr.go.police.action.ActionForward;

/**
 *	�Խù� ���� ���� �׼�
 */
public class BoardDetailViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		BoardDAO dao = new BoardDAO();
		//  �ε����� �ش� �Խù��� �̾ƿ´�.
		int index = Integer.valueOf((String)request.getParameter("index"));
		BoardBean data = dao. getDetail(index);
		// �ش� �Խù��� ��� ���
		List<BoardBean>replyList =(List<BoardBean>)dao.getReplyList(index);
		
		request.setAttribute("replyList", replyList);
		request.setAttribute("data", data);
		// �Խù� ���� �������� �̵�
		forward.setPath("./board/boardView.jsp"); 
		return forward;
	}

}