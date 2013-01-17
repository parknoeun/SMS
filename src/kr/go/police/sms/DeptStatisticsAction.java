package kr.go.police.sms;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.go.police.CommandToken;
import kr.go.police.SMSUtil;
import kr.go.police.action.Action;
import kr.go.police.action.ActionForward;

/**
 *	전체 문자 내역을 가져온다.
 */
public class DeptStatisticsAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		SmsDAO dao = new SmsDAO();
		// 전체  문자내역을 가져오기
		request.setCharacterEncoding("euc-kr");
		
		// 기본값 설정
		int page = 1;
		if(request.getParameter("page") != null){
			try{
				page = Integer.valueOf(request.getParameter("page"));
			}catch(NumberFormatException e){
				page =1;
			}
		}	
		
		// 검색어 
		// 전송결과에서는 전화번호만 검색처리
		String search = "";
		if(request.getParameter("search") != null){
			search = request.getParameter("search").trim();
			search = new String(search.getBytes("iso-8859-1"), "EUC-KR");
			//search = search.replace("-", "");
		}
		
		//검색 타입
		String s_type="id";
		if(request.getParameter("s_type") != null){
			s_type = request.getParameter("s_type").trim();
			//search = search.replace("-", "");
		}
		
		//전송타입
		String type =  "SMS";
		if(request.getParameter("type") != null){
				type = (String)request.getParameter("type");
		}
		
		//최대 년도 and 최소년도
		int maxd = Integer.valueOf(dao.Maxdate(type).substring(0, 4));		
		int mind = Integer.valueOf(dao.Mindate(type).substring(0, 4));				
						
		//년도
		String date =  dao.Maxdate(type);
		date = date.substring(0, 4);
		if(request.getParameter("date") != null){
			date = (String)request.getParameter("date");
			}
				
				
		// 페이지 목록수
			int limit = 10;
			if(request.getParameter("limit") != null){
				limit = Integer.valueOf(request.getParameter("limit"));
			}
		
		int deptcode = Integer.valueOf(request.getParameter("deptcode"));
		
		int listSize = dao.getDeptUserCount(deptcode, search, s_type);			// 부서 총 유저 수
		int start = (page -1 ) * limit +1;		// 시작 번호
		
		String params = "limit=" +limit + "&deptcode=" + deptcode+ "&type=" + type+ "&search=" + search+ "&s_type=" + s_type;
		String pagiNation = SMSUtil.makePagiNation(listSize, page, limit, "DeptStatisticsAction.sm", params);  

		ArrayList<Statistics> list = (ArrayList<Statistics>)dao.getUserStatisticsList(date, type, deptcode, start, limit, search, s_type);
		
		// token 설정
		String token = CommandToken.set(request);
		request.setAttribute("token", token);			
		request.setAttribute("page", page);								//  페이지 번호	
		request.setAttribute("search", search);							//   검색		
		request.setAttribute("list", list);							// 발송 내역리스트
		request.setAttribute("type", type);							//검색타입
		request.setAttribute("s_type", s_type);							//검색타입
		request.setAttribute("deptcode", deptcode);							//부서코드
		request.setAttribute("pagiNation", pagiNation);				// 페이지네이션
		request.setAttribute("maxd", maxd);								//	가장 최근 발송 년도
		request.setAttribute("mind", mind);									//	가장 예전 발송 년도
		request.setAttribute("date", date);									//	날짜

		forward.setPath("./WEB-INF/admin/dept_statistics.jsp");

		return forward;
	}

}
