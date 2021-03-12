package action;

import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import svc.MemberJoinService;
import vo.ActionForward;
import vo.MemberBean;

public class MemberJoinAction implements Action{
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		 	
		 	MemberBean member=new MemberBean();
	   		boolean joinResult=false;
	   		
	   		member.setMemberId(request.getParameter("memberId"));
	   		member.setPass(request.getParameter("pass"));
	   		member.setName(request.getParameter("name"));
	   		member.setAge(Integer.parseInt(request.getParameter("age")));
	   		member.setGender(request.getParameter("gender"));
	   		member.setEmail(request.getParameter("email"));
	   		member.setPhone(request.getParameter("phone"));
	   		member.setAddr(request.getParameter("addr"));
	   		member.setPostalcode(request.getParameter("postalcode"));
	   		member.setGrade(request.getParameter("grade"));
	   		member.setBirthday(request.getParameter("birthday"));
	   		
	   		MemberJoinService memberJoinService = new MemberJoinService();
	   		joinResult=memberJoinService.joinMember(member);
	   		
	   		ActionForward forward = null;
	   		if(joinResult==false){
	   			response.setContentType("text/html;charset=UTF-8");
	   			PrintWriter out = response.getWriter();
	   			out.println("<script>");
	   			out.println("alert('회원등록실패')");
	   			out.println("history.back()");
	   			out.println("</script>");
		   	}
	   		else{
	   	    forward = new ActionForward();
	   		forward.setRedirect(true);
	   		forward.setPath("./memberLogin.me");
	   		}
	   		return forward;
	}
}