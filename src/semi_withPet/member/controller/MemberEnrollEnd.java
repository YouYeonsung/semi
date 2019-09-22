package semi_withPet.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import semi_withPet.member.model.service.MemberService;
import semi_withPet.member.model.vo.Member;

/**
 * Servlet implementation class MemberEnrollEnd
 */
@WebServlet(name="memberEnroll",urlPatterns="/memberEnrollEnd")
public class MemberEnrollEnd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberEnrollEnd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 회원 입력정보 받아오기
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String roadaddress= request.getParameter("roadaddress");
		String address_etc = request.getParameter("address_etc");
		String email = request.getParameter("userMail");
		String area1 = roadaddress + " " + address_etc;
		System.out.println(id);
		// member 객체 생성
		Member m = new Member();
		m.setUserId(id);
		m.setUserPwd(pwd);
		m.setUserName(name);
		m.setPhone(phone);
		m.setArea1(area1);
		m.setEmail(email);
		System.out.println(m);
		
		int result = new MemberService().insertMember(m);
		
		String msg = "";
		String loc = "";
		String view = "/views/common/msg.jsp";
		if(result > 0) {
			msg = "회원 가입이 완료되었습니다.";
			loc = "/";
		} else {
			msg = "회원가입 실패. 다시 시도하세요.";
			loc = "/memberEnroll?userMail="+email;
		}
		request.setAttribute("msg", msg);
		request.setAttribute("loc", loc);
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
