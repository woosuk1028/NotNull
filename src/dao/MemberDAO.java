package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.sql.DataSource;
import vo.MemberBean;
import static db.JdbcUtil.*;

public class MemberDAO {
	public static MemberDAO instance;
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	DataSource ds;
	private MemberDAO() {
		
	}
	public static MemberDAO getInstance(){
		if(instance == null){
			instance = new MemberDAO();
		}
		return instance;
	}
	public void setConnection(Connection con){
		this.con = con;
	}
	
	public String selectLoginId(MemberBean member){
		String loginId = null;
		String sql="select memberId from member where memberId=? and pass=?";
		
		try{
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, member.getMemberId());
			pstmt.setString(2, member.getPass());
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				loginId = rs.getString("memberId");
			}
		}catch(Exception ex){
			System.out.println(" 에러: " + ex);			
		}finally{
			close(rs);
			close(pstmt);
		}
		
		return loginId;
	}
	
	public int insertMember(MemberBean member){
		String sql="insert into member values (?,?,?,?,?,?,?,?,?,?,?)";
		int insertCount=0;
		
		try{

			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, member.getMemberId());
			pstmt.setString(2, member.getPass());
			pstmt.setString(3, member.getName());
			pstmt.setInt(4, member.getAge());
			pstmt.setString(5, member.getGender());
			pstmt.setString(6, member.getEmail());
			pstmt.setString(7, member.getPhone());
			pstmt.setString(8, member.getAddr());
			pstmt.setString(9, member.getPostalcode());
			pstmt.setString(10, member.getGrade());
			pstmt.setString(11, member.getBirthday());
			insertCount=pstmt.executeUpdate();
			
		}catch(Exception ex){
			System.out.println("joinMember 에러: " + ex);			
		}finally{
			close(pstmt);
		}
		
		return insertCount;
	}
	
	public ArrayList<MemberBean> selectMemberList(){
		String sql="select * from member";
		ArrayList<MemberBean> memberList=new ArrayList<MemberBean>();
		MemberBean mb = null;
		try{
			
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			if(rs.next()){
				do{
				mb=new MemberBean();
				mb.setMemberId(rs.getString("memberId"));
				mb.setPass(rs.getString("pass"));
				mb.setName(rs.getString("name"));
				mb.setAge(rs.getInt("age"));
				mb.setGender(rs.getString("gender"));
				mb.setEmail(rs.getString("email"));
				mb.setPhone(rs.getString("phone"));
				mb.setAddr(rs.getString("addr"));
				mb.setPostalcode(rs.getString("postalcode"));
				mb.setGrade(rs.getString("grade"));
				mb.setBirthday(rs.getString("birthday"));
				memberList.add(mb);
				}while(rs.next());
			}
		}catch(Exception ex){
			System.out.println("getDeatilMember 에러: " + ex);			
		}finally{
			close(rs);
			close(pstmt);
		}
		return memberList;
	}
	
	public MemberBean selectMember(String id){
		String sql="select * from member where memberId=?";
		MemberBean mb = null;
		try{
			
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			
			if(rs.next()){
			mb=new MemberBean();
			mb.setMemberId(rs.getString("memberId"));
			mb.setPass(rs.getString("pass"));
			mb.setName(rs.getString("name"));
			mb.setAge(rs.getInt("age"));
			mb.setGender(rs.getString("gender"));
			mb.setEmail(rs.getString("email"));
			mb.setPhone(rs.getString("phone"));
			mb.setAddr(rs.getString("addr"));
			mb.setPostalcode(rs.getString("postalcode"));
			mb.setGrade(rs.getString("grade"));
			mb.setBirthday(rs.getString("birthday"));
			}
		}catch(Exception ex){
			System.out.println("getDeatilMember 에러: " + ex);			
		}finally{
			close(rs);
			close(pstmt);
		}
		
		return mb;
	}
	public int deleteMember(String id){
		String sql="delete member where memberId=?";
		int deleteCount = 0;

		try{
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			deleteCount = pstmt.executeUpdate();
		}catch(Exception ex){
			System.out.println("deleteMember 에러: " + ex);	
		}finally{
			close(pstmt);
		}
		
		return deleteCount;
	}
}