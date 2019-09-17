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
		Member m = new Member();
		String sql = prop.getProperty("selectId");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
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
}
