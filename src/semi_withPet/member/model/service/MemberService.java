package semi_withPet.member.model.service;

import java.sql.Connection;

import semi_withPet.member.model.dao.MemberDao;
import semi_withPet.member.model.vo.Member;
import static common.template.JDBCTemplate.getConnection;

public class MemberService {

	public static MemberDao dao = new MemberDao();
	
	public Member selectId(String id, String pw) {
		Connection conn = getConnection();
		Member m = dao.selectId(conn, id, pw);
		return m;
	}
	
	public Member selectOne(String id) {
		Connection conn = getConnection();
		Member m = dao.selectOne(conn, id);
		return m;
	}
}
