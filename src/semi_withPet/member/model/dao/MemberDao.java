package semi_withPet.member.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import static common.template.JDBCTemplate.close;
import semi_withPet.member.model.vo.Member;

public class MemberDao {
	
	private Properties prop = new Properties();
	
	public MemberDao() {
		String path = MemberDao.class.getResource("/sql/member/member-query.properties").getPath();
		try {
			prop.load(new FileReader(path));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public Member selectId(Connection conn, String id, String pw) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Member m = null;
		String sql = prop.getProperty("selectId");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				m=new Member();
				m.setUserId(rs.getString("USER_ID"));
				m.setUserPwd(rs.getString("USER_PWD"));
				m.setUserName(rs.getString("USER_NAME"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
 		} finally {
 			close(rs);
 			close(pstmt);
 		}
		return m;
	}
	
	public Member selectOne(Connection conn, String id) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Member m = null;
		String sql = prop.getProperty("selectOne");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				m=new Member();
				m.setUserId(rs.getString("USER_ID"));
				m.setUserPwd(rs.getString("USER_PWD"));
				m.setGrade(rs.getString("GRADE").charAt(0));
				m.setUserName(rs.getString("USER_NAME"));
				m.setArea1(rs.getString("AREA1"));
				m.setArea2(rs.getString("AREA2"));
				m.setPhone(rs.getString("PHONE"));
				m.setEmail(rs.getString("EMAIL"));
				m.setHaveDog(rs.getString("HAVE_DOG").charAt(0));
				m.setReservation(rs.getString("RESERVATION").charAt(0));
				m.setPoint(rs.getInt("POINT"));
				m.setEnrollDate(rs.getDate("ENROLL_DATE"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return m;
	}
}
