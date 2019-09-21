package semi_withPet.member.model.service;

import java.sql.Connection;

import semi_withPet.member.model.dao.MemberDao;
import semi_withPet.member.model.vo.Member;
import static common.template.JDBCTemplate.getConnection;
import static common.template.JDBCTemplate.commit;
import static common.template.JDBCTemplate.rollback;
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
	
	public Member checkEmail(String email) {
		Connection conn = getConnection();
		Member m = dao.checkEmail(conn, email);
		return m;
	}
	
	public int insertMember(Member m) {
		Connection conn = getConnection();
		int result = dao.insertMember(conn, m);
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		return result;
	}
	
	public Member findId(String name, String email) {
		Connection conn = getConnection();
		Member m = dao.findId(conn, name, email);
		return m;
	}
	
	public int updatePassword(String id, String pw) {
		Connection conn = getConnection();
		int result = dao.updatePassword(conn, id, pw);
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		return result;
	}
}
