package semi_withPet.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi_withPet.member.model.service.MemberService;
import semi_withPet.member.model.service.SendMail;
import semi_withPet.member.model.vo.Member;

/**
 * Servlet implementation class MemberPWFindServlet
 */
@WebServlet("/member/memberFindPw")
public class MemberPWFindServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberPWFindServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String id = request.getParameter("id");
		
		Member m = new MemberService().selectOne(id);
		String msg = "";
		String loc = "";
		String view = "";
		String purpose = "새로운 비밀번호";
		String target = "";
		if(m != null) {
			target = m.getUserId();
			
			// 3가지 정보가 모두 일치하는 경우
			if(id == m.getUserId() 
					&& name == m.getUserName() 
					&& email == m.getEmail()) {
				// 임시 비밀번호 생성
				String temp = "";
				for (int i = 0; i < 12; i++) {
					temp += (char) ((Math.random() * 26) + 97);
				}
				System.out.println(temp);
				// DB에 저장 + 비밀번호 불러오기
				int updatePw = new MemberService().updatePassword(id, temp);
				if(updatePw > 0) {
					// 메일로 전송
					target = temp;
					// 메일발송 객체
					// purpose : 찾고자하는 종류(Id, pw)
					// target : 찾은 종류의 대상값
					// email : 전송할 이메일주소
					// 찾은 결과는 1, -1을 리턴함
					int result = new SendMail().sendMail(purpose, target, email);
					if(result > 0) {
					view = "/views/member/findResult.jsp";
					request.setAttribute("target", target);
					request.setAttribute("purpose", purpose);
					request.setAttribute("email", email);
					} else {
						msg = "이메일 전송에 오류가 발생했습니다. 관리자에게 문의하세요.";
			 			loc = "/";
			 			request.setAttribute("msg", msg);
			 			request.setAttribute("loc", loc);
					}
				}
			} 
 		} else {
 			msg = "일치하는 아이디가 없습니다. 다시 시도하세요.";
 			view = "/views/common/msg.jsp";
 			loc = "/member/findPw";
 			request.setAttribute("msg", msg);
 			request.setAttribute("loc", loc);
 		}
		request.getRequestDispatcher(view).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
